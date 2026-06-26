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
  br i1 %10, label %11, label %25

11:                                               ; preds = %7, %2
  %12 = load i32, ptr @allocated_results, align 4
  %13 = add nsw i32 %12, 10
  store i32 %13, ptr @allocated_results, align 4
  %14 = load ptr, ptr @results, align 8
  %15 = load i32, ptr @allocated_results, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 16
  %18 = call ptr @realloc(ptr noundef %14, i64 noundef %17) #13
  store ptr %18, ptr @results, align 8
  %19 = load ptr, ptr @results, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, ptr @allocated_results, align 4
  %23 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str, i32 noundef %22)
  call void @exit(i32 noundef -1) #14
  unreachable

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %7
  %26 = load double, ptr %3, align 8
  %27 = load ptr, ptr @results, align 8
  %28 = load i32, ptr @current_test, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.one_result, ptr %27, i64 %29
  %31 = getelementptr inbounds nuw %struct.one_result, ptr %30, i32 0, i32 0
  store double %26, ptr %31, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = load ptr, ptr @results, align 8
  %34 = load i32, ptr @current_test, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.one_result, ptr %33, i64 %35
  %37 = getelementptr inbounds nuw %struct.one_result, ptr %36, i32 0, i32 1
  store ptr %32, ptr %37, align 8
  %38 = load i32, ptr @current_test, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr @current_test, align 4
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
  %.promoted = load i32, ptr %11, align 4
  %.promoted1 = load i32, ptr %16, align 4
  %.promoted3 = load i32, ptr %15, align 4
  %23 = load i32, ptr @current_test, align 4
  %24 = icmp slt i32 %.promoted, %23
  br i1 %24, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %5
  br label %25

25:                                               ; preds = %.lr.ph, %39
  %26 = phi i32 [ %.promoted, %.lr.ph ], [ %40, %39 ]
  %27 = phi i32 [ %.promoted3, %.lr.ph ], [ %38, %39 ]
  %28 = load ptr, ptr @results, align 8
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds %struct.one_result, ptr %28, i64 %29
  %31 = getelementptr inbounds nuw %struct.one_result, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 @strlen(ptr noundef %32) #15
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %34, %27
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %25
  %38 = phi i32 [ %34, %36 ], [ %27, %25 ]
  br label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %26, 1
  %41 = load i32, ptr @current_test, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %25, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %39
  %split = phi i32 [ %38, %39 ]
  %split15 = phi i32 [ %34, %39 ]
  %split16 = phi i32 [ %40, %39 ]
  br label %43

43:                                               ; preds = %._crit_edge, %5
  %.lcssa4 = phi i32 [ %split, %._crit_edge ], [ %.promoted3, %5 ]
  %.lcssa2 = phi i32 [ %split15, %._crit_edge ], [ %.promoted1, %5 ]
  %.lcssa = phi i32 [ %split16, %._crit_edge ], [ %.promoted, %5 ]
  store i32 %.lcssa, ptr %11, align 4
  store i32 %.lcssa2, ptr %16, align 4
  store i32 %.lcssa4, ptr %15, align 4
  %44 = load i32, ptr %15, align 4
  %45 = sub nsw i32 %44, 12
  %46 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %45, ptr noundef @.str.2)
  %47 = load i32, ptr %15, align 4
  %48 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %47, ptr noundef @.str.2)
  store i32 0, ptr %11, align 4
  %49 = load i32, ptr %15, align 4
  %50 = sext i32 %49 to i64
  %51 = load double, ptr %12, align 8
  %.promoted5 = load i32, ptr %11, align 4
  %52 = load i32, ptr @current_test, align 4
  %53 = icmp slt i32 %.promoted5, %52
  br i1 %53, label %.lr.ph18, label %95

.lr.ph18:                                         ; preds = %43
  br label %54

54:                                               ; preds = %.lr.ph18, %91
  %55 = phi i32 [ %.promoted5, %.lr.ph18 ], [ %92, %91 ]
  %56 = load ptr, ptr @results, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds %struct.one_result, ptr %56, i64 %57
  %59 = getelementptr inbounds nuw %struct.one_result, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = call i64 @strlen(ptr noundef %60) #15
  %62 = sub i64 %50, %61
  %63 = trunc i64 %62 to i32
  %64 = load ptr, ptr @results, align 8
  %65 = sext i32 %55 to i64
  %66 = getelementptr inbounds %struct.one_result, ptr %64, i64 %65
  %67 = getelementptr inbounds nuw %struct.one_result, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr @results, align 8
  %70 = sext i32 %55 to i64
  %71 = getelementptr inbounds %struct.one_result, ptr %69, i64 %70
  %72 = getelementptr inbounds nuw %struct.one_result, ptr %71, i32 0, i32 0
  %73 = load double, ptr %72, align 8
  %74 = load ptr, ptr @results, align 8
  %75 = sext i32 %55 to i64
  %76 = getelementptr inbounds %struct.one_result, ptr %74, i64 %75
  %77 = getelementptr inbounds nuw %struct.one_result, ptr %76, i32 0, i32 0
  %78 = load double, ptr %77, align 8
  %79 = fdiv double %51, %78
  %80 = load ptr, ptr @results, align 8
  %81 = sext i32 %55 to i64
  %82 = getelementptr inbounds %struct.one_result, ptr %80, i64 %81
  %83 = getelementptr inbounds nuw %struct.one_result, ptr %82, i32 0, i32 0
  %84 = load double, ptr %83, align 8
  %85 = load ptr, ptr @results, align 8
  %86 = getelementptr inbounds %struct.one_result, ptr %85, i64 0
  %87 = getelementptr inbounds nuw %struct.one_result, ptr %86, i32 0, i32 0
  %88 = load double, ptr %87, align 8
  %89 = fdiv double %84, %88
  %90 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %55, i32 noundef %63, ptr noundef @.str.5, ptr noundef %68, double noundef %73, double noundef %79, double noundef %89)
  br label %91

91:                                               ; preds = %54
  %92 = add nsw i32 %55, 1
  %93 = load i32, ptr @current_test, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %54, label %._crit_edge19, !llvm.loop !9

._crit_edge19:                                    ; preds = %91
  %split20 = phi i32 [ %92, %91 ]
  br label %95

95:                                               ; preds = %._crit_edge19, %43
  %.lcssa6 = phi i32 [ %split20, %._crit_edge19 ], [ %.promoted5, %43 ]
  store i32 %.lcssa6, ptr %11, align 4
  store i32 0, ptr %11, align 4
  %96 = load i32, ptr @current_test, align 4
  %97 = load ptr, ptr @results, align 8
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted9 = load double, ptr %13, align 8
  %98 = icmp slt i32 %.promoted7, %96
  br i1 %98, label %.lr.ph22, label %110

.lr.ph22:                                         ; preds = %95
  br label %99

99:                                               ; preds = %.lr.ph22, %107
  %100 = phi i32 [ %.promoted7, %.lr.ph22 ], [ %108, %107 ]
  %101 = phi double [ %.promoted9, %.lr.ph22 ], [ %106, %107 ]
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %struct.one_result, ptr %97, i64 %102
  %104 = getelementptr inbounds nuw %struct.one_result, ptr %103, i32 0, i32 0
  %105 = load double, ptr %104, align 8
  %106 = fadd double %101, %105
  br label %107

107:                                              ; preds = %99
  %108 = add nsw i32 %100, 1
  %109 = icmp slt i32 %108, %96
  br i1 %109, label %99, label %._crit_edge23, !llvm.loop !10

._crit_edge23:                                    ; preds = %107
  %split24 = phi double [ %106, %107 ]
  %split25 = phi i32 [ %108, %107 ]
  br label %110

110:                                              ; preds = %._crit_edge23, %95
  %.lcssa10 = phi double [ %split24, %._crit_edge23 ], [ %.promoted9, %95 ]
  %.lcssa8 = phi i32 [ %split25, %._crit_edge23 ], [ %.promoted7, %95 ]
  store i32 %.lcssa8, ptr %11, align 4
  store double %.lcssa10, ptr %13, align 8
  %111 = load ptr, ptr %6, align 8
  %112 = load double, ptr %13, align 8
  %113 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %111, double noundef %112)
  %114 = load i32, ptr @current_test, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %150

116:                                              ; preds = %110
  %117 = load i32, ptr %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %150

119:                                              ; preds = %116
  store i32 1, ptr %11, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted13 = load double, ptr %14, align 8
  %120 = load i32, ptr @current_test, align 4
  %121 = icmp slt i32 %.promoted11, %120
  br i1 %121, label %.lr.ph27, label %141

.lr.ph27:                                         ; preds = %119
  br label %122

122:                                              ; preds = %.lr.ph27, %137
  %123 = phi i32 [ %.promoted11, %.lr.ph27 ], [ %138, %137 ]
  %124 = phi double [ %.promoted13, %.lr.ph27 ], [ %136, %137 ]
  %125 = load ptr, ptr @results, align 8
  %126 = sext i32 %123 to i64
  %127 = getelementptr inbounds %struct.one_result, ptr %125, i64 %126
  %128 = getelementptr inbounds nuw %struct.one_result, ptr %127, i32 0, i32 0
  %129 = load double, ptr %128, align 8
  %130 = load ptr, ptr @results, align 8
  %131 = getelementptr inbounds %struct.one_result, ptr %130, i64 0
  %132 = getelementptr inbounds nuw %struct.one_result, ptr %131, i32 0, i32 0
  %133 = load double, ptr %132, align 8
  %134 = fdiv double %129, %133
  %135 = call double @log(double noundef %134) #15
  %136 = fadd double %124, %135
  br label %137

137:                                              ; preds = %122
  %138 = add nsw i32 %123, 1
  %139 = load i32, ptr @current_test, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %122, label %._crit_edge28, !llvm.loop !11

._crit_edge28:                                    ; preds = %137
  %split29 = phi double [ %136, %137 ]
  %split30 = phi i32 [ %138, %137 ]
  br label %141

141:                                              ; preds = %._crit_edge28, %119
  %.lcssa14 = phi double [ %split29, %._crit_edge28 ], [ %.promoted13, %119 ]
  %.lcssa12 = phi i32 [ %split30, %._crit_edge28 ], [ %.promoted11, %119 ]
  store i32 %.lcssa12, ptr %11, align 4
  store double %.lcssa14, ptr %14, align 8
  %142 = load ptr, ptr %6, align 8
  %143 = load double, ptr %14, align 8
  %144 = load i32, ptr @current_test, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sitofp i32 %145 to double
  %147 = fdiv double %143, %146
  %148 = call double @exp(double noundef %147) #15
  %149 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %142, double noundef %148)
  br label %150

150:                                              ; preds = %141, %116, %110
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
  %.promoted = load i32, ptr %5, align 4
  %.promoted1 = load i32, ptr %8, align 4
  %.promoted3 = load i32, ptr %7, align 4
  %9 = load i32, ptr @current_test, align 4
  %10 = icmp slt i32 %.promoted, %9
  br i1 %10, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %25
  %12 = phi i32 [ %.promoted, %.lr.ph ], [ %26, %25 ]
  %13 = phi i32 [ %.promoted3, %.lr.ph ], [ %24, %25 ]
  %14 = load ptr, ptr @results, align 8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.one_result, ptr %14, i64 %15
  %17 = getelementptr inbounds nuw %struct.one_result, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef %18) #15
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %11
  %24 = phi i32 [ %20, %22 ], [ %13, %11 ]
  br label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %12, 1
  %27 = load i32, ptr @current_test, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %11, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %25
  %split = phi i32 [ %24, %25 ]
  %split11 = phi i32 [ %20, %25 ]
  %split12 = phi i32 [ %26, %25 ]
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %.lcssa4 = phi i32 [ %split, %._crit_edge ], [ %.promoted3, %2 ]
  %.lcssa2 = phi i32 [ %split11, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi i32 [ %split12, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %5, align 4
  store i32 %.lcssa2, ptr %8, align 4
  store i32 %.lcssa4, ptr %7, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = load i32, ptr %7, align 4
  %32 = sub nsw i32 %31, 12
  %33 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %30, ptr noundef @.str.8, i32 noundef %32, ptr noundef @.str.2)
  %34 = load ptr, ptr %3, align 8
  %35 = load i32, ptr %7, align 4
  %36 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %34, ptr noundef @.str.9, i32 noundef %35, ptr noundef @.str.2)
  store i32 0, ptr %5, align 4
  %37 = load ptr, ptr %3, align 8
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %.promoted5 = load i32, ptr %5, align 4
  %40 = load i32, ptr @current_test, align 4
  %41 = icmp slt i32 %.promoted5, %40
  br i1 %41, label %.lr.ph14, label %67

.lr.ph14:                                         ; preds = %29
  br label %42

42:                                               ; preds = %.lr.ph14, %63
  %43 = phi i32 [ %.promoted5, %.lr.ph14 ], [ %64, %63 ]
  %44 = load ptr, ptr @results, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.one_result, ptr %44, i64 %45
  %47 = getelementptr inbounds nuw %struct.one_result, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 @strlen(ptr noundef %48) #15
  %50 = sub i64 %39, %49
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr @results, align 8
  %53 = sext i32 %43 to i64
  %54 = getelementptr inbounds %struct.one_result, ptr %52, i64 %53
  %55 = getelementptr inbounds nuw %struct.one_result, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr @results, align 8
  %58 = sext i32 %43 to i64
  %59 = getelementptr inbounds %struct.one_result, ptr %57, i64 %58
  %60 = getelementptr inbounds nuw %struct.one_result, ptr %59, i32 0, i32 0
  %61 = load double, ptr %60, align 8
  %62 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %37, ptr noundef @.str.10, i32 noundef %43, i32 noundef %51, ptr noundef @.str.5, ptr noundef %56, double noundef %61)
  br label %63

63:                                               ; preds = %42
  %64 = add nsw i32 %43, 1
  %65 = load i32, ptr @current_test, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %42, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %63
  %split16 = phi i32 [ %64, %63 ]
  br label %67

67:                                               ; preds = %._crit_edge15, %29
  %.lcssa6 = phi i32 [ %split16, %._crit_edge15 ], [ %.promoted5, %29 ]
  store i32 %.lcssa6, ptr %5, align 4
  store i32 0, ptr %5, align 4
  %68 = load i32, ptr @current_test, align 4
  %69 = load ptr, ptr @results, align 8
  %.promoted7 = load i32, ptr %5, align 4
  %.promoted9 = load double, ptr %6, align 8
  %70 = icmp slt i32 %.promoted7, %68
  br i1 %70, label %.lr.ph18, label %82

.lr.ph18:                                         ; preds = %67
  br label %71

71:                                               ; preds = %.lr.ph18, %79
  %72 = phi i32 [ %.promoted7, %.lr.ph18 ], [ %80, %79 ]
  %73 = phi double [ %.promoted9, %.lr.ph18 ], [ %78, %79 ]
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.one_result, ptr %69, i64 %74
  %76 = getelementptr inbounds nuw %struct.one_result, ptr %75, i32 0, i32 0
  %77 = load double, ptr %76, align 8
  %78 = fadd double %73, %77
  br label %79

79:                                               ; preds = %71
  %80 = add nsw i32 %72, 1
  %81 = icmp slt i32 %80, %68
  br i1 %81, label %71, label %._crit_edge19, !llvm.loop !14

._crit_edge19:                                    ; preds = %79
  %split20 = phi double [ %78, %79 ]
  %split21 = phi i32 [ %80, %79 ]
  br label %82

82:                                               ; preds = %._crit_edge19, %67
  %.lcssa10 = phi double [ %split20, %._crit_edge19 ], [ %.promoted9, %67 ]
  %.lcssa8 = phi i32 [ %split21, %._crit_edge19 ], [ %.promoted7, %67 ]
  store i32 %.lcssa8, ptr %5, align 4
  store double %.lcssa10, ptr %6, align 8
  %83 = load ptr, ptr %3, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = load double, ptr %6, align 8
  %86 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %83, ptr noundef @.str.6, ptr noundef %84, double noundef %85)
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
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load double, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load double, ptr %8, align 8
  %10 = fcmp olt double %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = load double, ptr %13, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  %17 = fcmp ogt double %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, ptr %3, align 4
  br label %20

19:                                               ; preds = %12
  store i32 0, ptr %3, align 4
  br label %20

20:                                               ; preds = %19, %18, %11
  %21 = load i32, ptr %3, align 4
  ret i32 %21
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z19less_than_function2dd(double noundef %0, double noundef %1) #5 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load double, ptr %3, align 8
  %6 = load double, ptr %4, align 8
  %7 = fcmp olt double %5, %6
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i1 true, i1 false
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %11 = load double, ptr %10, align 8
  %12 = fcmp olt double %9, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i1 true, i1 false
  ret i1 %14
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
  br i1 %17, label %18, label %58

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8
  %20 = load double, ptr %19, align 8
  store double %20, ptr %7, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %5, align 8
  store ptr %22, ptr %9, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load double, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = load double, ptr %7, align 8
  %.promoted3 = load ptr, ptr %9, align 8
  %.promoted = load ptr, ptr %8, align 8
  %.promoted7 = load double, ptr %10, align 8
  br label %27

27:                                               ; preds = %46, %18
  %28 = phi double [ %47, %46 ], [ %.promoted7, %18 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %46 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %.lcssa, %46 ], [ %.promoted3, %18 ]
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %31, %29 ], [ %.lcssa4, %27 ]
  %31 = getelementptr inbounds double, ptr %30, i32 -1
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %23(double noundef %24, double noundef %32)
  br i1 %33, label %29, label %34, !llvm.loop !17

34:                                               ; preds = %29
  %.lcssa = phi ptr [ %31, %29 ]
  %35 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  %.lcssa8 = phi double [ %28, %34 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %34 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %34 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  store double %.lcssa8, ptr %10, align 8
  br label %49

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %38, %37
  %39 = phi ptr [ %42, %38 ], [ %.lcssa26, %37 ]
  %40 = load double, ptr %39, align 8
  %41 = call noundef zeroext i1 %25(double noundef %40, double noundef %26)
  %42 = getelementptr inbounds nuw double, ptr %39, i32 1
  br i1 %41, label %38, label %43, !llvm.loop !18

43:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %39, %38 ]
  %44 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  %.lcssa9 = phi double [ %28, %43 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %43 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %43 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa2.lcssa, ptr %8, align 8
  store double %.lcssa9, ptr %10, align 8
  br label %49

46:                                               ; preds = %43
  %47 = load double, ptr %.lcssa, align 8
  %48 = load double, ptr %.lcssa2, align 8
  store double %48, ptr %.lcssa, align 8
  store double %47, ptr %.lcssa2, align 8
  br label %27, !llvm.loop !19

49:                                               ; preds = %45, %36
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %9, align 8
  %52 = getelementptr inbounds double, ptr %51, i64 1
  %53 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %50, ptr noundef %52, ptr noundef %53)
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds double, ptr %54, i64 1
  %56 = load ptr, ptr %5, align 8
  %57 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %55, ptr noundef %56, ptr noundef %57)
  br label %58

58:                                               ; preds = %49, %3
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
  br i1 %17, label %18, label %58

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8
  %20 = load double, ptr %19, align 8
  store double %20, ptr %7, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %5, align 8
  store ptr %22, ptr %9, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load double, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = load double, ptr %7, align 8
  %.promoted3 = load ptr, ptr %9, align 8
  %.promoted = load ptr, ptr %8, align 8
  %.promoted7 = load double, ptr %10, align 8
  br label %27

27:                                               ; preds = %46, %18
  %28 = phi double [ %47, %46 ], [ %.promoted7, %18 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %46 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %.lcssa, %46 ], [ %.promoted3, %18 ]
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %31, %29 ], [ %.lcssa4, %27 ]
  %31 = getelementptr inbounds double, ptr %30, i32 -1
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %23(double noundef %24, double noundef %32)
  br i1 %33, label %29, label %34, !llvm.loop !20

34:                                               ; preds = %29
  %.lcssa = phi ptr [ %31, %29 ]
  %35 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  %.lcssa8 = phi double [ %28, %34 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %34 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %34 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  store double %.lcssa8, ptr %10, align 8
  br label %49

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %38, %37
  %39 = phi ptr [ %42, %38 ], [ %.lcssa26, %37 ]
  %40 = load double, ptr %39, align 8
  %41 = call noundef zeroext i1 %25(double noundef %40, double noundef %26)
  %42 = getelementptr inbounds nuw double, ptr %39, i32 1
  br i1 %41, label %38, label %43, !llvm.loop !21

43:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %39, %38 ]
  %44 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  %.lcssa9 = phi double [ %28, %43 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %43 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %43 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa2.lcssa, ptr %8, align 8
  store double %.lcssa9, ptr %10, align 8
  br label %49

46:                                               ; preds = %43
  %47 = load double, ptr %.lcssa, align 8
  %48 = load double, ptr %.lcssa2, align 8
  store double %48, ptr %.lcssa, align 8
  store double %47, ptr %.lcssa2, align 8
  br label %27, !llvm.loop !22

49:                                               ; preds = %45, %36
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %9, align 8
  %52 = getelementptr inbounds double, ptr %51, i64 1
  %53 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %50, ptr noundef %52, ptr noundef %53)
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds double, ptr %54, i64 1
  %56 = load ptr, ptr %5, align 8
  %57 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %55, ptr noundef %56, ptr noundef %57)
  br label %58

58:                                               ; preds = %49, %3
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
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @atoi(ptr noundef %23)
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ %24, %20 ], [ 300, %25 ]
  store i32 %27, ptr %7, align 4
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 2, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 @atoi(ptr noundef %33)
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i32 [ %34, %30 ], [ 10000, %35 ]
  store i32 %37, ptr %8, align 4
  %38 = load i32, ptr %8, align 4
  %39 = add nsw i32 %38, 123
  call void @srand(i32 noundef %39)
  %40 = load i32, ptr %8, align 4
  %41 = sext i32 %40 to i64
  %42 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %41, i64 8)
  %43 = extractvalue { i64, i1 } %42, 1
  %44 = extractvalue { i64, i1 } %42, 0
  %45 = select i1 %43, i64 -1, i64 %44
  %46 = call noalias noundef nonnull ptr @_Znay(i64 noundef %45) #16
  store ptr %46, ptr %9, align 8
  store i32 0, ptr %10, align 4
  %47 = load i32, ptr %8, align 4
  %48 = load ptr, ptr %9, align 8
  %.promoted = load i32, ptr %10, align 4
  %49 = icmp slt i32 %.promoted, %47
  br i1 %49, label %.lr.ph, label %59

.lr.ph:                                           ; preds = %36
  br label %50

50:                                               ; preds = %.lr.ph, %56
  %51 = phi i32 [ %.promoted, %.lr.ph ], [ %57, %56 ]
  %52 = call i32 @rand()
  %53 = sitofp i32 %52 to double
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds double, ptr %48, i64 %54
  store double %53, ptr %55, align 8
  br label %56

56:                                               ; preds = %50
  %57 = add nsw i32 %51, 1
  %58 = icmp slt i32 %57, %47
  br i1 %58, label %50, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %56
  %split = phi i32 [ %57, %56 ]
  br label %59

59:                                               ; preds = %._crit_edge, %36
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %36 ]
  store i32 %.lcssa, ptr %10, align 4
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %61, i64 8)
  %63 = extractvalue { i64, i1 } %62, 1
  %64 = extractvalue { i64, i1 } %62, 0
  %65 = select i1 %63, i64 -1, i64 %64
  %66 = call noalias noundef nonnull ptr @_Znay(i64 noundef %65) #16
  store ptr %66, ptr %11, align 8
  store i32 0, ptr %6, align 4
  %67 = load i32, ptr %7, align 4
  %68 = load ptr, ptr %9, align 8
  %69 = load ptr, ptr %9, align 8
  %70 = load i32, ptr %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %69, i64 %71
  %73 = load ptr, ptr %11, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = load i32, ptr %8, align 4
  %76 = sext i32 %75 to i64
  %77 = load ptr, ptr %11, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, ptr %78, i64 %80
  %.promoted1 = load i32, ptr %6, align 4
  %82 = icmp slt i32 %.promoted1, %67
  br i1 %82, label %.lr.ph28, label %89

.lr.ph28:                                         ; preds = %59
  br label %83

83:                                               ; preds = %.lr.ph28, %86
  %84 = phi i32 [ %.promoted1, %.lr.ph28 ], [ %87, %86 ]
  %85 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %68, ptr noundef %72, ptr noundef %73)
  call void @qsort(ptr noundef %74, i64 noundef %76, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %77, ptr noundef %81)
  br label %86

86:                                               ; preds = %83
  %87 = add nsw i32 %84, 1
  %88 = icmp slt i32 %87, %67
  br i1 %88, label %83, label %._crit_edge29, !llvm.loop !24

._crit_edge29:                                    ; preds = %86
  %split30 = phi i32 [ %87, %86 ]
  br label %89

89:                                               ; preds = %._crit_edge29, %59
  %.lcssa2 = phi i32 [ %split30, %._crit_edge29 ], [ %.promoted1, %59 ]
  store i32 %.lcssa2, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %90 = load i32, ptr %7, align 4
  %91 = load ptr, ptr %9, align 8
  %92 = load ptr, ptr %9, align 8
  %93 = load i32, ptr %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, ptr %92, i64 %94
  %96 = load ptr, ptr %11, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = load ptr, ptr %11, align 8
  %99 = load i32, ptr %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %98, i64 %100
  %102 = load ptr, ptr %11, align 8
  %103 = load ptr, ptr %11, align 8
  %104 = load i32, ptr %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, ptr %103, i64 %105
  %.promoted3 = load i32, ptr %6, align 4
  %107 = icmp slt i32 %.promoted3, %90
  br i1 %107, label %.lr.ph32, label %114

.lr.ph32:                                         ; preds = %89
  br label %108

108:                                              ; preds = %.lr.ph32, %111
  %109 = phi i32 [ %.promoted3, %.lr.ph32 ], [ %112, %111 ]
  %110 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %91, ptr noundef %95, ptr noundef %96)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %97, ptr noundef %101, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %102, ptr noundef %106)
  br label %111

111:                                              ; preds = %108
  %112 = add nsw i32 %109, 1
  %113 = icmp slt i32 %112, %90
  br i1 %113, label %108, label %._crit_edge33, !llvm.loop !25

._crit_edge33:                                    ; preds = %111
  %split34 = phi i32 [ %112, %111 ]
  br label %114

114:                                              ; preds = %._crit_edge33, %89
  %.lcssa4 = phi i32 [ %split34, %._crit_edge33 ], [ %.promoted3, %89 ]
  store i32 %.lcssa4, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %115 = load i32, ptr %7, align 4
  %116 = load ptr, ptr %9, align 8
  %117 = load ptr, ptr %9, align 8
  %118 = load i32, ptr %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, ptr %117, i64 %119
  %121 = load ptr, ptr %11, align 8
  %122 = load ptr, ptr %11, align 8
  %123 = load ptr, ptr %11, align 8
  %124 = load i32, ptr %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, ptr %123, i64 %125
  %127 = load ptr, ptr %11, align 8
  %128 = load ptr, ptr %11, align 8
  %129 = load i32, ptr %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, ptr %128, i64 %130
  %.promoted5 = load i32, ptr %6, align 4
  %132 = icmp slt i32 %.promoted5, %115
  br i1 %132, label %.lr.ph36, label %139

.lr.ph36:                                         ; preds = %114
  br label %133

133:                                              ; preds = %.lr.ph36, %136
  %134 = phi i32 [ %.promoted5, %.lr.ph36 ], [ %137, %136 ]
  %135 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %116, ptr noundef %120, ptr noundef %121)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %122, ptr noundef %126, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %127, ptr noundef %131)
  br label %136

136:                                              ; preds = %133
  %137 = add nsw i32 %134, 1
  %138 = icmp slt i32 %137, %115
  br i1 %138, label %133, label %._crit_edge37, !llvm.loop !26

._crit_edge37:                                    ; preds = %136
  %split38 = phi i32 [ %137, %136 ]
  br label %139

139:                                              ; preds = %._crit_edge37, %114
  %.lcssa6 = phi i32 [ %split38, %._crit_edge37 ], [ %.promoted5, %114 ]
  store i32 %.lcssa6, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %140 = load i32, ptr %7, align 4
  %141 = load ptr, ptr %9, align 8
  %142 = load ptr, ptr %9, align 8
  %143 = load i32, ptr %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, ptr %142, i64 %144
  %146 = load ptr, ptr %11, align 8
  %147 = load ptr, ptr %11, align 8
  %148 = load ptr, ptr %11, align 8
  %149 = load i32, ptr %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, ptr %148, i64 %150
  %152 = load ptr, ptr %11, align 8
  %153 = load ptr, ptr %11, align 8
  %154 = load i32, ptr %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, ptr %153, i64 %155
  %.promoted7 = load i32, ptr %6, align 4
  %157 = icmp slt i32 %.promoted7, %140
  br i1 %157, label %.lr.ph40, label %164

.lr.ph40:                                         ; preds = %139
  br label %158

158:                                              ; preds = %.lr.ph40, %161
  %159 = phi i32 [ %.promoted7, %.lr.ph40 ], [ %162, %161 ]
  %160 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %141, ptr noundef %145, ptr noundef %146)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %147, ptr noundef %151)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %152, ptr noundef %156)
  br label %161

161:                                              ; preds = %158
  %162 = add nsw i32 %159, 1
  %163 = icmp slt i32 %162, %140
  br i1 %163, label %158, label %._crit_edge41, !llvm.loop !27

._crit_edge41:                                    ; preds = %161
  %split42 = phi i32 [ %162, %161 ]
  br label %164

164:                                              ; preds = %._crit_edge41, %139
  %.lcssa8 = phi i32 [ %split42, %._crit_edge41 ], [ %.promoted7, %139 ]
  store i32 %.lcssa8, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %165 = load i32, ptr %7, align 4
  %166 = load ptr, ptr %9, align 8
  %167 = load ptr, ptr %9, align 8
  %168 = load i32, ptr %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, ptr %167, i64 %169
  %171 = load ptr, ptr %11, align 8
  %172 = load ptr, ptr %11, align 8
  %173 = load ptr, ptr %11, align 8
  %174 = load i32, ptr %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, ptr %173, i64 %175
  %177 = load ptr, ptr %11, align 8
  %178 = load ptr, ptr %11, align 8
  %179 = load i32, ptr %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, ptr %178, i64 %180
  %.promoted9 = load i32, ptr %6, align 4
  %182 = icmp slt i32 %.promoted9, %165
  br i1 %182, label %.lr.ph44, label %189

.lr.ph44:                                         ; preds = %164
  br label %183

183:                                              ; preds = %.lr.ph44, %186
  %184 = phi i32 [ %.promoted9, %.lr.ph44 ], [ %187, %186 ]
  %185 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %166, ptr noundef %170, ptr noundef %171)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %172, ptr noundef %176, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %177, ptr noundef %181)
  br label %186

186:                                              ; preds = %183
  %187 = add nsw i32 %184, 1
  %188 = icmp slt i32 %187, %165
  br i1 %188, label %183, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %186
  %split46 = phi i32 [ %187, %186 ]
  br label %189

189:                                              ; preds = %._crit_edge45, %164
  %.lcssa10 = phi i32 [ %split46, %._crit_edge45 ], [ %.promoted9, %164 ]
  store i32 %.lcssa10, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %190 = load i32, ptr %7, align 4
  %191 = load ptr, ptr %9, align 8
  %192 = load ptr, ptr %9, align 8
  %193 = load i32, ptr %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, ptr %192, i64 %194
  %196 = load ptr, ptr %11, align 8
  %197 = load ptr, ptr %11, align 8
  %198 = load ptr, ptr %11, align 8
  %199 = load i32, ptr %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, ptr %198, i64 %200
  %202 = getelementptr inbounds nuw %struct.less_than_functor, ptr %12, i32 0, i32 0
  %203 = load i8, ptr %202, align 1
  %204 = load ptr, ptr %11, align 8
  %205 = load ptr, ptr %11, align 8
  %206 = load i32, ptr %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, ptr %205, i64 %207
  %.promoted11 = load i32, ptr %6, align 4
  %209 = icmp slt i32 %.promoted11, %190
  br i1 %209, label %.lr.ph48, label %216

.lr.ph48:                                         ; preds = %189
  br label %210

210:                                              ; preds = %.lr.ph48, %213
  %211 = phi i32 [ %.promoted11, %.lr.ph48 ], [ %214, %213 ]
  %212 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %191, ptr noundef %195, ptr noundef %196)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %197, ptr noundef %201, i8 %203)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %204, ptr noundef %208)
  br label %213

213:                                              ; preds = %210
  %214 = add nsw i32 %211, 1
  %215 = icmp slt i32 %214, %190
  br i1 %215, label %210, label %._crit_edge49, !llvm.loop !29

._crit_edge49:                                    ; preds = %213
  %split50 = phi i32 [ %214, %213 ]
  br label %216

216:                                              ; preds = %._crit_edge49, %189
  %.lcssa12 = phi i32 [ %split50, %._crit_edge49 ], [ %.promoted11, %189 ]
  store i32 %.lcssa12, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %217 = load i32, ptr %7, align 4
  %218 = load ptr, ptr %11, align 8
  %219 = load ptr, ptr %11, align 8
  %220 = load i32, ptr %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, ptr %219, i64 %221
  %223 = getelementptr inbounds nuw %struct.less_than_functor, ptr %13, i32 0, i32 0
  %224 = load i8, ptr %223, align 1
  %225 = load ptr, ptr %11, align 8
  %226 = load ptr, ptr %11, align 8
  %227 = load i32, ptr %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, ptr %226, i64 %228
  %230 = load ptr, ptr %9, align 8
  %231 = load ptr, ptr %9, align 8
  %232 = load i32, ptr %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, ptr %231, i64 %233
  %235 = load ptr, ptr %11, align 8
  %.promoted13 = load i32, ptr %6, align 4
  %236 = icmp slt i32 %.promoted13, %217
  br i1 %236, label %.lr.ph52, label %243

.lr.ph52:                                         ; preds = %216
  br label %237

237:                                              ; preds = %.lr.ph52, %240
  %238 = phi i32 [ %.promoted13, %.lr.ph52 ], [ %241, %240 ]
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %218, ptr noundef %222, i8 %224)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %225, ptr noundef %229)
  %239 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %230, ptr noundef %234, ptr noundef %235)
  br label %240

240:                                              ; preds = %237
  %241 = add nsw i32 %238, 1
  %242 = icmp slt i32 %241, %217
  br i1 %242, label %237, label %._crit_edge53, !llvm.loop !30

._crit_edge53:                                    ; preds = %240
  %split54 = phi i32 [ %241, %240 ]
  br label %243

243:                                              ; preds = %._crit_edge53, %216
  %.lcssa14 = phi i32 [ %split54, %._crit_edge53 ], [ %.promoted13, %216 ]
  store i32 %.lcssa14, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %244 = load i32, ptr %7, align 4
  %245 = load ptr, ptr %9, align 8
  %246 = load ptr, ptr %9, align 8
  %247 = load i32, ptr %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds double, ptr %246, i64 %248
  %250 = load ptr, ptr %11, align 8
  %251 = load ptr, ptr %11, align 8
  %252 = load ptr, ptr %11, align 8
  %253 = load i32, ptr %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, ptr %252, i64 %254
  %256 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %14, i32 0, i32 0
  %257 = load i8, ptr %256, align 1
  %258 = load ptr, ptr %11, align 8
  %259 = load ptr, ptr %11, align 8
  %260 = load i32, ptr %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, ptr %259, i64 %261
  %.promoted15 = load i32, ptr %6, align 4
  %263 = icmp slt i32 %.promoted15, %244
  br i1 %263, label %.lr.ph56, label %270

.lr.ph56:                                         ; preds = %243
  br label %264

264:                                              ; preds = %.lr.ph56, %267
  %265 = phi i32 [ %.promoted15, %.lr.ph56 ], [ %268, %267 ]
  %266 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %245, ptr noundef %249, ptr noundef %250)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %251, ptr noundef %255, i8 %257)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %258, ptr noundef %262)
  br label %267

267:                                              ; preds = %264
  %268 = add nsw i32 %265, 1
  %269 = icmp slt i32 %268, %244
  br i1 %269, label %264, label %._crit_edge57, !llvm.loop !31

._crit_edge57:                                    ; preds = %267
  %split58 = phi i32 [ %268, %267 ]
  br label %270

270:                                              ; preds = %._crit_edge57, %243
  %.lcssa16 = phi i32 [ %split58, %._crit_edge57 ], [ %.promoted15, %243 ]
  store i32 %.lcssa16, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %271 = load i32, ptr %7, align 4
  %272 = load ptr, ptr %9, align 8
  %273 = load ptr, ptr %9, align 8
  %274 = load i32, ptr %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds double, ptr %273, i64 %275
  %277 = load ptr, ptr %11, align 8
  %278 = load ptr, ptr %11, align 8
  %279 = load ptr, ptr %11, align 8
  %280 = load i32, ptr %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double, ptr %279, i64 %281
  %283 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %15, i32 0, i32 0
  %284 = load i8, ptr %283, align 1
  %285 = load ptr, ptr %11, align 8
  %286 = load ptr, ptr %11, align 8
  %287 = load i32, ptr %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds double, ptr %286, i64 %288
  %.promoted17 = load i32, ptr %6, align 4
  %290 = icmp slt i32 %.promoted17, %271
  br i1 %290, label %.lr.ph60, label %297

.lr.ph60:                                         ; preds = %270
  br label %291

291:                                              ; preds = %.lr.ph60, %294
  %292 = phi i32 [ %.promoted17, %.lr.ph60 ], [ %295, %294 ]
  %293 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %272, ptr noundef %276, ptr noundef %277)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %278, ptr noundef %282, i8 %284)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %285, ptr noundef %289)
  br label %294

294:                                              ; preds = %291
  %295 = add nsw i32 %292, 1
  %296 = icmp slt i32 %295, %271
  br i1 %296, label %291, label %._crit_edge61, !llvm.loop !32

._crit_edge61:                                    ; preds = %294
  %split62 = phi i32 [ %295, %294 ]
  br label %297

297:                                              ; preds = %._crit_edge61, %270
  %.lcssa18 = phi i32 [ %split62, %._crit_edge61 ], [ %.promoted17, %270 ]
  store i32 %.lcssa18, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %298 = load i32, ptr %7, align 4
  %299 = load ptr, ptr %9, align 8
  %300 = load ptr, ptr %9, align 8
  %301 = load i32, ptr %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds double, ptr %300, i64 %302
  %304 = load ptr, ptr %11, align 8
  %305 = load ptr, ptr %11, align 8
  %306 = load ptr, ptr %11, align 8
  %307 = load i32, ptr %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, ptr %306, i64 %308
  %310 = getelementptr inbounds nuw %"struct.std::less", ptr %16, i32 0, i32 0
  %311 = load i8, ptr %310, align 1
  %312 = load ptr, ptr %11, align 8
  %313 = load ptr, ptr %11, align 8
  %314 = load i32, ptr %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds double, ptr %313, i64 %315
  %.promoted19 = load i32, ptr %6, align 4
  %317 = icmp slt i32 %.promoted19, %298
  br i1 %317, label %.lr.ph64, label %324

.lr.ph64:                                         ; preds = %297
  br label %318

318:                                              ; preds = %.lr.ph64, %321
  %319 = phi i32 [ %.promoted19, %.lr.ph64 ], [ %322, %321 ]
  %320 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %299, ptr noundef %303, ptr noundef %304)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %305, ptr noundef %309, i8 %311)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %312, ptr noundef %316)
  br label %321

321:                                              ; preds = %318
  %322 = add nsw i32 %319, 1
  %323 = icmp slt i32 %322, %298
  br i1 %323, label %318, label %._crit_edge65, !llvm.loop !33

._crit_edge65:                                    ; preds = %321
  %split66 = phi i32 [ %322, %321 ]
  br label %324

324:                                              ; preds = %._crit_edge65, %297
  %.lcssa20 = phi i32 [ %split66, %._crit_edge65 ], [ %.promoted19, %297 ]
  store i32 %.lcssa20, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %325 = load i32, ptr %7, align 4
  %326 = load ptr, ptr %9, align 8
  %327 = load ptr, ptr %9, align 8
  %328 = load i32, ptr %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds double, ptr %327, i64 %329
  %331 = load ptr, ptr %11, align 8
  %332 = load ptr, ptr %11, align 8
  %333 = load ptr, ptr %11, align 8
  %334 = load i32, ptr %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds double, ptr %333, i64 %335
  %337 = getelementptr inbounds nuw %"struct.std::less", ptr %17, i32 0, i32 0
  %338 = load i8, ptr %337, align 1
  %339 = load ptr, ptr %11, align 8
  %340 = load ptr, ptr %11, align 8
  %341 = load i32, ptr %8, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, ptr %340, i64 %342
  %.promoted21 = load i32, ptr %6, align 4
  %344 = icmp slt i32 %.promoted21, %325
  br i1 %344, label %.lr.ph68, label %351

.lr.ph68:                                         ; preds = %324
  br label %345

345:                                              ; preds = %.lr.ph68, %348
  %346 = phi i32 [ %.promoted21, %.lr.ph68 ], [ %349, %348 ]
  %347 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %326, ptr noundef %330, ptr noundef %331)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %332, ptr noundef %336, i8 %338)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %339, ptr noundef %343)
  br label %348

348:                                              ; preds = %345
  %349 = add nsw i32 %346, 1
  %350 = icmp slt i32 %349, %325
  br i1 %350, label %345, label %._crit_edge69, !llvm.loop !34

._crit_edge69:                                    ; preds = %348
  %split70 = phi i32 [ %349, %348 ]
  br label %351

351:                                              ; preds = %._crit_edge69, %324
  %.lcssa22 = phi i32 [ %split70, %._crit_edge69 ], [ %.promoted21, %324 ]
  store i32 %.lcssa22, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %352 = load i32, ptr %7, align 4
  %353 = load ptr, ptr %9, align 8
  %354 = load ptr, ptr %9, align 8
  %355 = load i32, ptr %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds double, ptr %354, i64 %356
  %358 = load ptr, ptr %11, align 8
  %359 = load ptr, ptr %11, align 8
  %360 = load ptr, ptr %11, align 8
  %361 = load i32, ptr %8, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds double, ptr %360, i64 %362
  %364 = load ptr, ptr %11, align 8
  %365 = load ptr, ptr %11, align 8
  %366 = load i32, ptr %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds double, ptr %365, i64 %367
  %.promoted23 = load i32, ptr %6, align 4
  %369 = icmp slt i32 %.promoted23, %352
  br i1 %369, label %.lr.ph72, label %376

.lr.ph72:                                         ; preds = %351
  br label %370

370:                                              ; preds = %.lr.ph72, %373
  %371 = phi i32 [ %.promoted23, %.lr.ph72 ], [ %374, %373 ]
  %372 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %353, ptr noundef %357, ptr noundef %358)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %359, ptr noundef %363)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %364, ptr noundef %368)
  br label %373

373:                                              ; preds = %370
  %374 = add nsw i32 %371, 1
  %375 = icmp slt i32 %374, %352
  br i1 %375, label %370, label %._crit_edge73, !llvm.loop !35

._crit_edge73:                                    ; preds = %373
  %split74 = phi i32 [ %374, %373 ]
  br label %376

376:                                              ; preds = %._crit_edge73, %351
  %.lcssa24 = phi i32 [ %split74, %._crit_edge73 ], [ %.promoted23, %351 ]
  store i32 %.lcssa24, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %377 = load i32, ptr %7, align 4
  %378 = load ptr, ptr %9, align 8
  %379 = load ptr, ptr %9, align 8
  %380 = load i32, ptr %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds double, ptr %379, i64 %381
  %383 = load ptr, ptr %11, align 8
  %384 = load ptr, ptr %11, align 8
  %385 = load ptr, ptr %11, align 8
  %386 = load i32, ptr %8, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds double, ptr %385, i64 %387
  %389 = load ptr, ptr %11, align 8
  %390 = load ptr, ptr %11, align 8
  %391 = load i32, ptr %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, ptr %390, i64 %392
  %.promoted25 = load i32, ptr %6, align 4
  %394 = icmp slt i32 %.promoted25, %377
  br i1 %394, label %.lr.ph76, label %401

.lr.ph76:                                         ; preds = %376
  br label %395

395:                                              ; preds = %.lr.ph76, %398
  %396 = phi i32 [ %.promoted25, %.lr.ph76 ], [ %399, %398 ]
  %397 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %378, ptr noundef %382, ptr noundef %383)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %384, ptr noundef %388)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %389, ptr noundef %393)
  br label %398

398:                                              ; preds = %395
  %399 = add nsw i32 %396, 1
  %400 = icmp slt i32 %399, %377
  br i1 %400, label %395, label %._crit_edge77, !llvm.loop !36

._crit_edge77:                                    ; preds = %398
  %split78 = phi i32 [ %399, %398 ]
  br label %401

401:                                              ; preds = %._crit_edge77, %376
  %.lcssa26 = phi i32 [ %split78, %._crit_edge77 ], [ %.promoted25, %376 ]
  store i32 %.lcssa26, ptr %6, align 4
  %402 = load ptr, ptr %11, align 8
  %403 = icmp eq ptr %402, null
  br i1 %403, label %405, label %404

404:                                              ; preds = %401
  call void @_ZdaPv(ptr noundef %402) #17
  br label %405

405:                                              ; preds = %404, %401
  %406 = load ptr, ptr %9, align 8
  %407 = icmp eq ptr %406, null
  br i1 %407, label %409, label %408

408:                                              ; preds = %405
  call void @_ZdaPv(ptr noundef %406) #17
  br label %409

409:                                              ; preds = %408, %405
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
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %13, align 8
  store ptr %25, ptr %5, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %14, align 8
  store ptr %27, ptr %6, align 8
  %28 = load ptr, ptr %6, align 8
  store ptr %24, ptr %7, align 8
  store ptr %26, ptr %8, align 8
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = call noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_S0_ET2_T0_T1_S1_(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  store ptr %14, ptr %10, align 8
  store ptr %32, ptr %11, align 8
  %33 = load ptr, ptr %11, align 8
  ret ptr %33
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
  %.promoted = load ptr, ptr %3, align 8
  %.promoted2 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %.promoted, %9
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  br label %15

11:                                               ; preds = %15
  %12 = phi ptr [ %20, %15 ]
  %13 = phi ptr [ %18, %15 ]
  %14 = icmp ne ptr %13, %9
  br i1 %14, label %15, label %..loopexit_crit_edge, !llvm.loop !37

15:                                               ; preds = %.lr.ph, %11
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %13, %11 ]
  %17 = phi ptr [ %.promoted2, %.lr.ph ], [ %12, %11 ]
  %18 = getelementptr inbounds nuw double, ptr %16, i32 1
  %19 = load double, ptr %16, align 8
  %20 = getelementptr inbounds nuw double, ptr %17, i32 1
  %21 = load double, ptr %17, align 8
  %22 = fcmp olt double %19, %21
  br i1 %22, label %23, label %11

23:                                               ; preds = %15
  %.lcssa4 = phi ptr [ %20, %15 ]
  %.lcssa1 = phi ptr [ %18, %15 ]
  store ptr %.lcssa1, ptr %3, align 8
  store ptr %.lcssa4, ptr %5, align 8
  %24 = load i32, ptr @current_test, align 4
  %25 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %24)
  br label %26

..loopexit_crit_edge:                             ; preds = %11
  %split = phi ptr [ %12, %11 ]
  %split5 = phi ptr [ %13, %11 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  %.lcssa3 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted2, %2 ]
  %.lcssa = phi ptr [ %split5, %..loopexit_crit_edge ], [ %.promoted, %2 ]
  store ptr %.lcssa, ptr %3, align 8
  store ptr %.lcssa3, ptr %5, align 8
  br label %26

26:                                               ; preds = %.loopexit, %23
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = load double, ptr %17, align 8
  store double %18, ptr %5, align 8
  %19 = load ptr, ptr %3, align 8
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %4, align 8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %5, align 8
  %22 = load double, ptr %5, align 8
  %.promoted3 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted7 = load double, ptr %8, align 8
  br label %23

23:                                               ; preds = %42, %16
  %24 = phi double [ %43, %42 ], [ %.promoted7, %16 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %42 ], [ %.promoted, %16 ]
  %.lcssa4 = phi ptr [ %.lcssa, %42 ], [ %.promoted3, %16 ]
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %27, %25 ], [ %.lcssa4, %23 ]
  %27 = getelementptr inbounds double, ptr %26, i32 -1
  %28 = load double, ptr %27, align 8
  %29 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %21, double noundef %28)
  br i1 %29, label %25, label %30, !llvm.loop !38

30:                                               ; preds = %25
  %.lcssa = phi ptr [ %27, %25 ]
  %31 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  %.lcssa8 = phi double [ %24, %30 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %30 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %30 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa26.lcssa, ptr %6, align 8
  store double %.lcssa8, ptr %8, align 8
  br label %45

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %34, %33
  %35 = phi ptr [ %38, %34 ], [ %.lcssa26, %33 ]
  %36 = load double, ptr %35, align 8
  %37 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %36, double noundef %22)
  %38 = getelementptr inbounds nuw double, ptr %35, i32 1
  br i1 %37, label %34, label %39, !llvm.loop !39

39:                                               ; preds = %34
  %.lcssa2 = phi ptr [ %35, %34 ]
  %40 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  %.lcssa9 = phi double [ %24, %39 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %39 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %39 ]
  store ptr %.lcssa.lcssa5, ptr %7, align 8
  store ptr %.lcssa2.lcssa, ptr %6, align 8
  store double %.lcssa9, ptr %8, align 8
  br label %45

42:                                               ; preds = %39
  %43 = load double, ptr %.lcssa, align 8
  %44 = load double, ptr %.lcssa2, align 8
  store double %44, ptr %.lcssa, align 8
  store double %43, ptr %.lcssa2, align 8
  br label %23, !llvm.loop !40

45:                                               ; preds = %41, %32
  %46 = load ptr, ptr %3, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr inbounds double, ptr %47, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %46, ptr noundef %48, ptr noundef @_Z19less_than_function2dd)
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds double, ptr %49, i64 1
  %51 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %50, ptr noundef %51, ptr noundef @_Z19less_than_function2dd)
  br label %52

52:                                               ; preds = %45, %2
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
  %10 = load ptr, ptr %6, align 8
  %11 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %10)
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %13 = inttoptr i64 %11 to ptr
  store ptr %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i64
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %8, ptr noundef %9, i64 %16)
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
  %13 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %13, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 1
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %46, %21
  %.promoted = load ptr, ptr %9, align 8
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi ptr [ %29, %27 ], [ %.promoted, %26 ]
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  %30 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %27, label %31, !llvm.loop !41

31:                                               ; preds = %27
  %.lcssa = phi ptr [ %29, %27 ]
  store ptr %.lcssa, ptr %9, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %54

36:                                               ; preds = %31
  %.promoted1 = load ptr, ptr %8, align 8
  br label %37

37:                                               ; preds = %37, %36
  %38 = phi ptr [ %40, %37 ], [ %.promoted1, %36 ]
  %39 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %40 = getelementptr inbounds nuw double, ptr %38, i32 1
  br i1 %39, label %37, label %41, !llvm.loop !42

41:                                               ; preds = %37
  %.lcssa2 = phi ptr [ %38, %37 ]
  store ptr %.lcssa2, ptr %8, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = icmp ult ptr %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %54

46:                                               ; preds = %41
  %47 = load ptr, ptr %9, align 8
  %48 = load double, ptr %47, align 8
  store double %48, ptr %10, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load double, ptr %49, align 8
  %51 = load ptr, ptr %9, align 8
  store double %50, ptr %51, align 8
  %52 = load double, ptr %10, align 8
  %53 = load ptr, ptr %8, align 8
  store double %52, ptr %53, align 8
  br label %26, !llvm.loop !43

54:                                               ; preds = %45, %35
  %55 = load ptr, ptr %5, align 8
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds double, ptr %56, i64 1
  %58 = getelementptr inbounds nuw %struct.less_than_functor, ptr %11, i32 0, i32 0
  %59 = load i8, ptr %58, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %55, ptr noundef %57, i8 %59)
  %60 = load ptr, ptr %9, align 8
  %61 = getelementptr inbounds double, ptr %60, i64 1
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds nuw %struct.less_than_functor, ptr %12, i32 0, i32 0
  %64 = load i8, ptr %63, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %61, ptr noundef %62, i8 %64)
  br label %65

65:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = alloca %struct.less_than_functor, align 1
  %9 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %struct.less_than_functor, ptr %8, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %13)
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %11, i8 %17)
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
  %13 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %13, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 1
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %46, %21
  %.promoted = load ptr, ptr %9, align 8
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi ptr [ %29, %27 ], [ %.promoted, %26 ]
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  %30 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %27, label %31, !llvm.loop !44

31:                                               ; preds = %27
  %.lcssa = phi ptr [ %29, %27 ]
  store ptr %.lcssa, ptr %9, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %54

36:                                               ; preds = %31
  %.promoted1 = load ptr, ptr %8, align 8
  br label %37

37:                                               ; preds = %37, %36
  %38 = phi ptr [ %40, %37 ], [ %.promoted1, %36 ]
  %39 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %40 = getelementptr inbounds nuw double, ptr %38, i32 1
  br i1 %39, label %37, label %41, !llvm.loop !45

41:                                               ; preds = %37
  %.lcssa2 = phi ptr [ %38, %37 ]
  store ptr %.lcssa2, ptr %8, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = icmp ult ptr %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %54

46:                                               ; preds = %41
  %47 = load ptr, ptr %9, align 8
  %48 = load double, ptr %47, align 8
  store double %48, ptr %10, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load double, ptr %49, align 8
  %51 = load ptr, ptr %9, align 8
  store double %50, ptr %51, align 8
  %52 = load double, ptr %10, align 8
  %53 = load ptr, ptr %8, align 8
  store double %52, ptr %53, align 8
  br label %26, !llvm.loop !46

54:                                               ; preds = %45, %35
  %55 = load ptr, ptr %5, align 8
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds double, ptr %56, i64 1
  %58 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %11, i32 0, i32 0
  %59 = load i8, ptr %58, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %55, ptr noundef %57, i8 %59)
  %60 = load ptr, ptr %9, align 8
  %61 = getelementptr inbounds double, ptr %60, i64 1
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %12, i32 0, i32 0
  %64 = load i8, ptr %63, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %61, ptr noundef %62, i8 %64)
  br label %65

65:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = alloca %struct.inline_less_than_functor, align 1
  %9 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %8, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %13)
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %11, i8 %17)
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
  %13 = getelementptr inbounds nuw %"struct.std::less", ptr %4, i32 0, i32 0
  store i8 %2, ptr %13, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 1
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %46, %21
  %.promoted = load ptr, ptr %9, align 8
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi ptr [ %29, %27 ], [ %.promoted, %26 ]
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  %30 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %27, label %31, !llvm.loop !47

31:                                               ; preds = %27
  %.lcssa = phi ptr [ %29, %27 ]
  store ptr %.lcssa, ptr %9, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %54

36:                                               ; preds = %31
  %.promoted1 = load ptr, ptr %8, align 8
  br label %37

37:                                               ; preds = %37, %36
  %38 = phi ptr [ %40, %37 ], [ %.promoted1, %36 ]
  %39 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %40 = getelementptr inbounds nuw double, ptr %38, i32 1
  br i1 %39, label %37, label %41, !llvm.loop !48

41:                                               ; preds = %37
  %.lcssa2 = phi ptr [ %38, %37 ]
  store ptr %.lcssa2, ptr %8, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = icmp ult ptr %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %54

46:                                               ; preds = %41
  %47 = load ptr, ptr %9, align 8
  %48 = load double, ptr %47, align 8
  store double %48, ptr %10, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load double, ptr %49, align 8
  %51 = load ptr, ptr %9, align 8
  store double %50, ptr %51, align 8
  %52 = load double, ptr %10, align 8
  %53 = load ptr, ptr %8, align 8
  store double %52, ptr %53, align 8
  br label %26, !llvm.loop !49

54:                                               ; preds = %45, %35
  %55 = load ptr, ptr %5, align 8
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds double, ptr %56, i64 1
  %58 = getelementptr inbounds nuw %"struct.std::less", ptr %11, i32 0, i32 0
  %59 = load i8, ptr %58, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %55, ptr noundef %57, i8 %59)
  %60 = load ptr, ptr %9, align 8
  %61 = getelementptr inbounds double, ptr %60, i64 1
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds nuw %"struct.std::less", ptr %12, i32 0, i32 0
  %64 = load i8, ptr %63, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %61, ptr noundef %62, i8 %64)
  br label %65

65:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = alloca %"struct.std::less", align 1
  %9 = getelementptr inbounds nuw %"struct.std::less", ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %"struct.std::less", ptr %8, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %13)
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %10, ptr noundef %11, i8 %17)
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = load double, ptr %17, align 8
  store double %18, ptr %5, align 8
  %19 = load ptr, ptr %3, align 8
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %4, align 8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %5, align 8
  %22 = load double, ptr %5, align 8
  %.promoted3 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted7 = load double, ptr %8, align 8
  br label %23

23:                                               ; preds = %42, %16
  %24 = phi double [ %43, %42 ], [ %.promoted7, %16 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %42 ], [ %.promoted, %16 ]
  %.lcssa4 = phi ptr [ %.lcssa, %42 ], [ %.promoted3, %16 ]
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %27, %25 ], [ %.lcssa4, %23 ]
  %27 = getelementptr inbounds double, ptr %26, i32 -1
  %28 = load double, ptr %27, align 8
  %29 = fcmp olt double %21, %28
  br i1 %29, label %25, label %30, !llvm.loop !50

30:                                               ; preds = %25
  %.lcssa = phi ptr [ %27, %25 ]
  %31 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  %.lcssa8 = phi double [ %24, %30 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %30 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %30 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa26.lcssa, ptr %6, align 8
  store double %.lcssa8, ptr %8, align 8
  br label %45

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %34, %33
  %35 = phi ptr [ %38, %34 ], [ %.lcssa26, %33 ]
  %36 = load double, ptr %35, align 8
  %37 = fcmp olt double %36, %22
  %38 = getelementptr inbounds nuw double, ptr %35, i32 1
  br i1 %37, label %34, label %39, !llvm.loop !51

39:                                               ; preds = %34
  %.lcssa2 = phi ptr [ %35, %34 ]
  %40 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  %.lcssa9 = phi double [ %24, %39 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %39 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %39 ]
  store ptr %.lcssa.lcssa5, ptr %7, align 8
  store ptr %.lcssa2.lcssa, ptr %6, align 8
  store double %.lcssa9, ptr %8, align 8
  br label %45

42:                                               ; preds = %39
  %43 = load double, ptr %.lcssa, align 8
  %44 = load double, ptr %.lcssa2, align 8
  store double %44, ptr %.lcssa, align 8
  store double %43, ptr %.lcssa2, align 8
  br label %23, !llvm.loop !52

45:                                               ; preds = %41, %32
  %46 = load ptr, ptr %3, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr inbounds double, ptr %47, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %46, ptr noundef %48)
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds double, ptr %49, i64 1
  %51 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %50, ptr noundef %51)
  br label %52

52:                                               ; preds = %45, %2
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
  %7 = load ptr, ptr %4, align 8
  %8 = call i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  %10 = load i8, ptr %9, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %6, ptr noundef %7, i8 %10)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #5 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
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
  %21 = load ptr, ptr %12, align 8
  store ptr %11, ptr %5, align 8
  %22 = load i8, ptr %4, align 1
  %23 = load i8, ptr %13, align 1
  store i8 %23, ptr %6, align 1
  store ptr %20, ptr %7, align 8
  store ptr %21, ptr %8, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  store i64 %29, ptr %17, align 8
  %30 = load i64, ptr %17, align 8
  %31 = icmp sgt i64 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load ptr, ptr %16, align 8
  %34 = load ptr, ptr %14, align 8
  %35 = load i64, ptr %17, align 8
  %36 = mul i64 %35, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 %36, i1 false)
  %37 = load i64, ptr %17, align 8
  %38 = load ptr, ptr %16, align 8
  %39 = getelementptr inbounds double, ptr %38, i64 %37
  store ptr %39, ptr %16, align 8
  br label %52

40:                                               ; preds = %3
  %41 = load i64, ptr %17, align 8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  store ptr %16, ptr %9, align 8
  store ptr %14, ptr %10, align 8
  %44 = load ptr, ptr %10, align 8, !nonnull !15, !align !16
  %45 = load ptr, ptr %44, align 8
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %9, align 8, !nonnull !15, !align !16
  %48 = load ptr, ptr %47, align 8
  store double %46, ptr %48, align 8
  %49 = load ptr, ptr %16, align 8
  %50 = getelementptr inbounds nuw double, ptr %49, i32 1
  store ptr %50, ptr %16, align 8
  br label %51

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %51, %32
  %53 = load ptr, ptr %16, align 8
  ret ptr %53
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
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %10 = inttoptr i64 %2 to ptr
  store ptr %10, ptr %9, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = icmp ne ptr %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %22)
  %24 = mul nsw i64 %23, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %15, ptr noundef %16, i64 noundef %24, i64 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %30 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %8, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i64
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %28, ptr noundef %29, i64 %32)
  br label %33

33:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %2, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %6 to i64
  ret i64 %7
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
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %14 = inttoptr i64 %3 to ptr
  store ptr %14, ptr %13, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = ptrtoint ptr %15 to i64
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %11, i32 0, i32 0
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %12, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted2 = load i64, ptr %8, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  %20 = ptrtoint ptr %.promoted to i64
  %21 = sub i64 %20, %16
  %22 = sdiv exact i64 %21, 8
  %23 = icmp sgt i64 %22, 16
  br i1 %23, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %24

24:                                               ; preds = %.lr.ph, %36
  %25 = phi ptr [ %.promoted, %.lr.ph ], [ %40, %36 ]
  %26 = phi i64 [ %.promoted2, %.lr.ph ], [ %37, %36 ]
  %27 = phi ptr [ %.promoted5, %.lr.ph ], [ %40, %36 ]
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %.lcssa7 = phi ptr [ %27, %24 ]
  %.lcssa4 = phi i64 [ %26, %24 ]
  %.lcssa1 = phi ptr [ %25, %24 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %34 = load ptr, ptr %33, align 8
  %35 = ptrtoint ptr %34 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %30, ptr noundef %31, ptr noundef %32, i64 %35)
  br label %47

36:                                               ; preds = %24
  %37 = add nsw i64 %26, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %38 = load ptr, ptr %18, align 8
  %39 = ptrtoint ptr %38 to i64
  %40 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %17, ptr noundef %25, i64 %39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %41 = load ptr, ptr %19, align 8
  %42 = ptrtoint ptr %41 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %40, ptr noundef %25, i64 noundef %37, i64 %42)
  %43 = ptrtoint ptr %40 to i64
  %44 = sub i64 %43, %16
  %45 = sdiv exact i64 %44, 8
  %46 = icmp sgt i64 %45, 16
  br i1 %46, label %24, label %..loopexit_crit_edge, !llvm.loop !53

..loopexit_crit_edge:                             ; preds = %36
  %split = phi ptr [ %40, %36 ]
  %split8 = phi i64 [ %37, %36 ]
  %split9 = phi ptr [ %40, %36 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.lcssa6 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted5, %4 ]
  %.lcssa3 = phi i64 [ %split8, %..loopexit_crit_edge ], [ %.promoted2, %4 ]
  %.lcssa = phi ptr [ %split9, %..loopexit_crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %47

47:                                               ; preds = %.loopexit, %29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %0) #5 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noundef i32 @_ZSt11__bit_widthIyEiT_(i64 noundef %3) #15
  %5 = sub nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  ret i64 %6
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %2 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = icmp sgt i64 %17, 16
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %24 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %20, ptr noundef %22, i64 %25)
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds double, ptr %26, i64 16
  %28 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %29 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %8, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i64
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %27, ptr noundef %28, i64 %31)
  br label %38

32:                                               ; preds = %3
  %33 = load ptr, ptr %5, align 8
  %34 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8
  %37 = ptrtoint ptr %36 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %33, ptr noundef %34, i64 %37)
  br label %38

38:                                               ; preds = %32, %19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %11 = inttoptr i64 %3 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %12, ptr noundef %13, ptr noundef %14, i64 %17)
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %5)
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %2 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 8
  %19 = sdiv i64 %18, 2
  %20 = getelementptr inbounds double, ptr %12, i64 %19
  store ptr %20, ptr %7, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds double, ptr %22, i64 1
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds double, ptr %25, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %27 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %8, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %28 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %21, ptr noundef %23, ptr noundef %24, ptr noundef %26, i64 %29)
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 1
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %34 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i64
  %37 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %31, ptr noundef %32, ptr noundef %33, i64 %36)
  ret ptr %37
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %11 = inttoptr i64 %3 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %12, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %14 = load ptr, ptr %7, align 8
  store ptr %14, ptr %9, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %9, align 8
  %19 = icmp ult ptr %.promoted, %15
  br i1 %19, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %4
  br label %20

20:                                               ; preds = %.lr.ph, %25
  %21 = phi ptr [ %.promoted, %.lr.ph ], [ %26, %25 ]
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21, ptr noundef %16)
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %21, i32 1
  %27 = icmp ult ptr %26, %15
  br i1 %27, label %20, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %25
  %split = phi ptr [ %26, %25 ]
  br label %28

28:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %9, align 8
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %.promoted = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %.promoted to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %9, ptr noundef %17, ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %8
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 1
  br i1 %21, label %15, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %15
  %split = phi ptr [ %17, %15 ]
  br label %22

22:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %5, align 8
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
  br label %43

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  store i64 %25, ptr %7, align 8
  %26 = load i64, ptr %7, align 8
  %27 = sub nsw i64 %26, 2
  %28 = sdiv i64 %27, 2
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %7, align 8
  %32 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %10, i32 0, i32 0
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %34, %19
  %35 = phi i64 [ %41, %34 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %32, i64 8, i1 false)
  %38 = load ptr, ptr %33, align 8
  %39 = ptrtoint ptr %38 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i64 %39)
  %40 = icmp eq i64 %35, 0
  %41 = add nsw i64 %35, -1
  br i1 %40, label %42, label %34, !llvm.loop !56

42:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %43

43:                                               ; preds = %42, %18
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load double, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %9(double noundef %11, double noundef %13)
  ret i1 %14
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
  %18 = load ptr, ptr %5, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = load double, ptr %9, align 8
  %24 = load ptr, ptr %8, align 8, !nonnull !15, !align !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %24, i64 8, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %10, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %22, double noundef %23, i64 %27)
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
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %15 = inttoptr i64 %4 to ptr
  store ptr %15, ptr %14, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  %16 = load i64, ptr %8, align 8
  store i64 %16, ptr %11, align 8
  %17 = load i64, ptr %8, align 8
  store i64 %17, ptr %12, align 8
  %18 = load i64, ptr %9, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  %25 = icmp slt i64 %.promoted, %20
  br i1 %25, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %5
  br label %26

26:                                               ; preds = %.lr.ph, %37
  %27 = phi i64 [ %.promoted, %.lr.ph ], [ %38, %37 ]
  %28 = phi i64 [ %.promoted1, %.lr.ph ], [ %38, %37 ]
  %29 = add nsw i64 %27, 1
  %30 = mul nsw i64 2, %29
  %31 = getelementptr inbounds double, ptr %21, i64 %30
  %32 = sub nsw i64 %30, 1
  %33 = getelementptr inbounds double, ptr %22, i64 %32
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %31, ptr noundef %33)
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = add nsw i64 %30, -1
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i64 [ %36, %35 ], [ %30, %26 ]
  %39 = getelementptr inbounds double, ptr %23, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %24, i64 %28
  store double %40, ptr %41, align 8
  %42 = icmp slt i64 %38, %20
  br i1 %42, label %26, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %37
  %split = phi i64 [ %38, %37 ]
  %split3 = phi i64 [ %38, %37 ]
  br label %43

43:                                               ; preds = %._crit_edge, %5
  %.lcssa2 = phi i64 [ %split, %._crit_edge ], [ %.promoted1, %5 ]
  %.lcssa = phi i64 [ %split3, %._crit_edge ], [ %.promoted, %5 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %44 = load i64, ptr %9, align 8
  %45 = and i64 %44, 1
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i64, ptr %12, align 8
  %49 = load i64, ptr %9, align 8
  %50 = sub nsw i64 %49, 2
  %51 = sdiv i64 %50, 2
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i64, ptr %12, align 8
  %55 = add nsw i64 %54, 1
  %56 = mul nsw i64 2, %55
  store i64 %56, ptr %12, align 8
  %57 = load ptr, ptr %7, align 8
  %58 = load i64, ptr %12, align 8
  %59 = sub nsw i64 %58, 1
  %60 = getelementptr inbounds double, ptr %57, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = load ptr, ptr %7, align 8
  %63 = load i64, ptr %8, align 8
  %64 = getelementptr inbounds double, ptr %62, i64 %63
  store double %61, ptr %64, align 8
  %65 = load i64, ptr %12, align 8
  %66 = sub nsw i64 %65, 1
  store i64 %66, ptr %8, align 8
  br label %67

67:                                               ; preds = %53, %47, %43
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %68 = load ptr, ptr %7, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load i64, ptr %11, align 8
  %71 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %68, i64 noundef %69, i64 noundef %70, double noundef %71, ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_val", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8, !nonnull !15, !align !16
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %6, align 8
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
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  %.promoted1 = load i64, ptr %11, align 8
  br label %20

20:                                               ; preds = %29, %5
  %21 = phi i64 [ %34, %29 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %21, %29 ], [ %.promoted, %5 ]
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds double, ptr %17, i64 %21
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %18, i64 %21
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %19, i64 %22
  store double %31, ptr %32, align 8
  %33 = sub nsw i64 %21, 1
  %34 = sdiv i64 %33, 2
  br label %20, !llvm.loop !58

35:                                               ; preds = %27
  %.lcssa2 = phi i64 [ %21, %27 ]
  %.lcssa = phi i64 [ %22, %27 ]
  store i64 %.lcssa, ptr %7, align 8
  store i64 %.lcssa2, ptr %11, align 8
  %36 = load double, ptr %9, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  store double %36, ptr %39, align 8
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_val", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load double, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %9(double noundef %11, double noundef %13)
  ret i1 %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %12 = inttoptr i64 %4 to ptr
  store ptr %12, ptr %11, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %35

16:                                               ; preds = %5
  %17 = load ptr, ptr %9, align 8
  %18 = load ptr, ptr %10, align 8
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %17, ptr noundef %18)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %21, ptr noundef %22)
  br label %34

23:                                               ; preds = %16
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %24, ptr noundef %25)
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef %29)
  br label %33

30:                                               ; preds = %23
  %31 = load ptr, ptr %7, align 8
  %32 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %31, ptr noundef %32)
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %20
  br label %54

35:                                               ; preds = %5
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %10, align 8
  %38 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %36, ptr noundef %37)
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load ptr, ptr %7, align 8
  %41 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %40, ptr noundef %41)
  br label %53

42:                                               ; preds = %35
  %43 = load ptr, ptr %9, align 8
  %44 = load ptr, ptr %10, align 8
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %43, ptr noundef %44)
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr %7, align 8
  %48 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %47, ptr noundef %48)
  br label %52

49:                                               ; preds = %42
  %50 = load ptr, ptr %7, align 8
  %51 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %50, ptr noundef %51)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %34
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %10 = inttoptr i64 %3 to ptr
  store ptr %10, ptr %9, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %8, align 8
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %13

13:                                               ; preds = %28, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %28 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %29, %28 ], [ %.promoted3, %4 ]
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi ptr [ %17, %14 ], [ %.lcssa4, %13 ]
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15, ptr noundef %11)
  %17 = getelementptr inbounds nuw double, ptr %15, i32 1
  br i1 %16, label %14, label %18, !llvm.loop !59

18:                                               ; preds = %14
  %.lcssa = phi ptr [ %15, %14 ]
  %19 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %23, %20 ], [ %19, %18 ]
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %21)
  %23 = getelementptr inbounds double, ptr %21, i32 -1
  br i1 %22, label %20, label %24, !llvm.loop !60

24:                                               ; preds = %20
  %.lcssa2 = phi ptr [ %21, %20 ]
  %25 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %24 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %24 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8
  ret ptr %27

28:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %29 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %13, !llvm.loop !61
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1) #5 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
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
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %18, i32 0, i32 0
  %26 = inttoptr i64 %2 to ptr
  store ptr %26, ptr %25, align 8
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %27 = load ptr, ptr %19, align 8
  %28 = load ptr, ptr %20, align 8
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %92

31:                                               ; preds = %3
  %32 = load ptr, ptr %19, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 1
  store ptr %33, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = load ptr, ptr %19, align 8
  %36 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %24, i32 0, i32 0
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %23, i32 0, i32 0
  %38 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %23, i32 0, i32 0
  %39 = load ptr, ptr %19, align 8
  %40 = load ptr, ptr %19, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load ptr, ptr %37, align 8
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
  %41 = icmp ne ptr %.promoted, %34
  br i1 %41, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %31
  br label %42

42:                                               ; preds = %.lr.ph, %89
  %43 = phi ptr [ %.promoted, %.lr.ph ], [ %90, %89 ]
  %44 = phi ptr [ %.promoted1, %.lr.ph ], [ %88, %89 ]
  %45 = phi double [ %.promoted3, %.lr.ph ], [ %87, %89 ]
  %46 = phi ptr [ %.promoted5, %.lr.ph ], [ %86, %89 ]
  %47 = phi ptr [ %.promoted7, %.lr.ph ], [ %85, %89 ]
  %48 = phi ptr [ %.promoted9, %.lr.ph ], [ %84, %89 ]
  %49 = phi ptr [ %.promoted11, %.lr.ph ], [ %83, %89 ]
  %50 = phi ptr [ %.promoted13, %.lr.ph ], [ %82, %89 ]
  %51 = phi ptr [ %.promoted15, %.lr.ph ], [ %81, %89 ]
  %52 = phi ptr [ %.promoted17, %.lr.ph ], [ %80, %89 ]
  %53 = phi ptr [ %.promoted19, %.lr.ph ], [ %79, %89 ]
  %54 = phi ptr [ %.promoted21, %.lr.ph ], [ %78, %89 ]
  %55 = phi ptr [ %.promoted23, %.lr.ph ], [ %77, %89 ]
  %56 = phi ptr [ %.promoted25, %.lr.ph ], [ %76, %89 ]
  %57 = phi ptr [ %.promoted27, %.lr.ph ], [ %75, %89 ]
  %58 = phi ptr [ %.promoted29, %.lr.ph ], [ %74, %89 ]
  %59 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %43, ptr noundef %35)
  br i1 %59, label %60, label %67

60:                                               ; preds = %42
  %61 = load double, ptr %43, align 8
  %62 = getelementptr inbounds double, ptr %43, i64 1
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %39)
  %64 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %43)
  store ptr %62, ptr %14, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %63, ptr noundef %64, ptr noundef %65)
  store double %61, ptr %40, align 8
  br label %73

67:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %18, i64 8, i1 false)
  %68 = load ptr, ptr %36, align 8
  %69 = ptrtoint ptr %68 to i64
  %70 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %69)
  %71 = inttoptr i64 %70 to ptr
  %72 = ptrtoint ptr %71 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %43, i64 %72)
  br label %73

73:                                               ; preds = %67, %60
  %74 = phi ptr [ %58, %67 ], [ %66, %60 ]
  %75 = phi ptr [ %57, %67 ], [ %14, %60 ]
  %76 = phi ptr [ %56, %67 ], [ %65, %60 ]
  %77 = phi ptr [ %55, %67 ], [ %64, %60 ]
  %78 = phi ptr [ %54, %67 ], [ %63, %60 ]
  %79 = phi ptr [ %53, %67 ], [ %65, %60 ]
  %80 = phi ptr [ %52, %67 ], [ %64, %60 ]
  %81 = phi ptr [ %51, %67 ], [ %63, %60 ]
  %82 = phi ptr [ %50, %67 ], [ %64, %60 ]
  %83 = phi ptr [ %49, %67 ], [ %63, %60 ]
  %84 = phi ptr [ %48, %67 ], [ %62, %60 ]
  %85 = phi ptr [ %47, %67 ], [ %43, %60 ]
  %86 = phi ptr [ %46, %67 ], [ %39, %60 ]
  %87 = phi double [ %45, %67 ], [ %61, %60 ]
  %88 = phi ptr [ %71, %67 ], [ %44, %60 ]
  br label %89

89:                                               ; preds = %73
  %90 = getelementptr inbounds nuw double, ptr %43, i32 1
  %91 = icmp ne ptr %90, %34
  br i1 %91, label %42, label %..loopexit_crit_edge, !llvm.loop !62

..loopexit_crit_edge:                             ; preds = %89
  %split = phi ptr [ %74, %89 ]
  %split31 = phi ptr [ %75, %89 ]
  %split32 = phi ptr [ %76, %89 ]
  %split33 = phi ptr [ %77, %89 ]
  %split34 = phi ptr [ %78, %89 ]
  %split35 = phi ptr [ %79, %89 ]
  %split36 = phi ptr [ %80, %89 ]
  %split37 = phi ptr [ %81, %89 ]
  %split38 = phi ptr [ %82, %89 ]
  %split39 = phi ptr [ %83, %89 ]
  %split40 = phi ptr [ %84, %89 ]
  %split41 = phi ptr [ %85, %89 ]
  %split42 = phi ptr [ %86, %89 ]
  %split43 = phi double [ %87, %89 ]
  %split44 = phi ptr [ %88, %89 ]
  %split45 = phi ptr [ %90, %89 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %31
  %.lcssa30 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted29, %31 ]
  %.lcssa28 = phi ptr [ %split31, %..loopexit_crit_edge ], [ %.promoted27, %31 ]
  %.lcssa26 = phi ptr [ %split32, %..loopexit_crit_edge ], [ %.promoted25, %31 ]
  %.lcssa24 = phi ptr [ %split33, %..loopexit_crit_edge ], [ %.promoted23, %31 ]
  %.lcssa22 = phi ptr [ %split34, %..loopexit_crit_edge ], [ %.promoted21, %31 ]
  %.lcssa20 = phi ptr [ %split35, %..loopexit_crit_edge ], [ %.promoted19, %31 ]
  %.lcssa18 = phi ptr [ %split36, %..loopexit_crit_edge ], [ %.promoted17, %31 ]
  %.lcssa16 = phi ptr [ %split37, %..loopexit_crit_edge ], [ %.promoted15, %31 ]
  %.lcssa14 = phi ptr [ %split38, %..loopexit_crit_edge ], [ %.promoted13, %31 ]
  %.lcssa12 = phi ptr [ %split39, %..loopexit_crit_edge ], [ %.promoted11, %31 ]
  %.lcssa10 = phi ptr [ %split40, %..loopexit_crit_edge ], [ %.promoted9, %31 ]
  %.lcssa8 = phi ptr [ %split41, %..loopexit_crit_edge ], [ %.promoted7, %31 ]
  %.lcssa6 = phi ptr [ %split42, %..loopexit_crit_edge ], [ %.promoted5, %31 ]
  %.lcssa4 = phi double [ %split43, %..loopexit_crit_edge ], [ %.promoted3, %31 ]
  %.lcssa2 = phi ptr [ %split44, %..loopexit_crit_edge ], [ %.promoted1, %31 ]
  %.lcssa = phi ptr [ %split45, %..loopexit_crit_edge ], [ %.promoted, %31 ]
  store ptr %.lcssa, ptr %21, align 8
  store ptr %.lcssa2, ptr %37, align 8
  store double %.lcssa4, ptr %22, align 8
  store ptr %.lcssa6, ptr %15, align 8
  store ptr %.lcssa8, ptr %16, align 8
  store ptr %.lcssa10, ptr %17, align 8
  store ptr %.lcssa12, ptr %12, align 8
  store ptr %.lcssa14, ptr %13, align 8
  store ptr %.lcssa16, ptr %7, align 8
  store ptr %.lcssa18, ptr %8, align 8
  store ptr %.lcssa20, ptr %9, align 8
  store ptr %.lcssa22, ptr %4, align 8
  store ptr %.lcssa24, ptr %5, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store ptr %.lcssa28, ptr %10, align 1
  store ptr %.lcssa30, ptr %11, align 1
  br label %92

92:                                               ; preds = %.loopexit, %30
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %2 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %7, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %8, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %8, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %.promoted, %13
  br i1 %17, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %18

18:                                               ; preds = %.lr.ph, %25
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %26, %25 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %20 = load ptr, ptr %14, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %21)
  %23 = inttoptr i64 %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %19, i64 %24)
  br label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds nuw double, ptr %19, i32 1
  %27 = icmp ne ptr %26, %13
  br i1 %27, label %18, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %25
  %split = phi ptr [ %23, %25 ]
  %split3 = phi ptr [ %26, %25 ]
  br label %28

28:                                               ; preds = %._crit_edge, %3
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %3 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %7, align 8
  store ptr %.lcssa2, ptr %15, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %0, i64 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %3, i32 0, i32 0
  %8 = inttoptr i64 %1 to ptr
  store ptr %8, ptr %7, align 8
  store ptr %0, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load double, ptr %9, align 8
  store double %10, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %13, ptr %6, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.promoted)
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %19, %15 ]
  %17 = phi ptr [ %.promoted1, %.lr.ph ], [ %16, %15 ]
  %18 = load double, ptr %16, align 8
  store double %18, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %16, i32 -1
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %19)
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %15
  %split = phi ptr [ %16, %15 ]
  %split3 = phi ptr [ %19, %15 ]
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %2 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  %22 = load double, ptr %5, align 8
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
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
  %27 = load ptr, ptr %18, align 8
  store ptr %17, ptr %13, align 8
  %28 = load i8, ptr %12, align 1
  %29 = load i8, ptr %19, align 1
  store i8 %29, ptr %14, align 1
  store ptr %26, ptr %15, align 8
  store ptr %27, ptr %16, align 8
  %30 = load ptr, ptr %16, align 8
  %31 = load ptr, ptr %15, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  store i64 %35, ptr %23, align 8
  %36 = load i64, ptr %23, align 8
  %37 = sub nsw i64 0, %36
  store ptr %22, ptr %8, align 8
  store i64 %37, ptr %9, align 8
  %38 = load i64, ptr %9, align 8
  store i64 %38, ptr %10, align 8
  %39 = load ptr, ptr %8, align 8, !nonnull !15, !align !16
  %40 = load i64, ptr %10, align 8
  %41 = load ptr, ptr %8, align 8, !nonnull !15, !align !16
  store ptr %41, ptr %7, align 8
  %42 = load i8, ptr %6, align 1
  %43 = load i8, ptr %11, align 1
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %40, i8 %43)
  %44 = load i64, ptr %23, align 8
  %45 = icmp sgt i64 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %3
  %47 = load ptr, ptr %22, align 8
  %48 = load ptr, ptr %20, align 8
  %49 = load i64, ptr %23, align 8
  %50 = mul i64 %49, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %47, ptr align 8 %48, i64 %50, i1 false)
  br label %61

51:                                               ; preds = %3
  %52 = load i64, ptr %23, align 8
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  store ptr %22, ptr %4, align 8
  store ptr %20, ptr %5, align 8
  %55 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %56 = load ptr, ptr %55, align 8
  %57 = load double, ptr %56, align 8
  %58 = load ptr, ptr %4, align 8, !nonnull !15, !align !16
  %59 = load ptr, ptr %58, align 8
  store double %57, ptr %59, align 8
  br label %60

60:                                               ; preds = %54, %51
  br label %61

61:                                               ; preds = %60, %46
  %62 = load ptr, ptr %22, align 8
  ret ptr %62
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds nuw %"struct.std::random_access_iterator_tag", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  %9 = call i1 @llvm.is.constant.i64(i64 %8)
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw double, ptr %15, i32 1
  store ptr %16, ptr %14, align 8
  br label %33

17:                                               ; preds = %10, %3
  %18 = load i64, ptr %6, align 8
  %19 = call i1 @llvm.is.constant.i64(i64 %18)
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i64, ptr %6, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %25, i32 -1
  store ptr %26, ptr %24, align 8
  br label %32

27:                                               ; preds = %20, %17
  %28 = load i64, ptr %6, align 8
  %29 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %28
  store ptr %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %27, %23
  br label %33

33:                                               ; preds = %32, %13
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %11 = load double, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %9(double noundef %11, double noundef %13)
  ret i1 %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8, !nonnull !15, !align !16
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = icmp ne ptr %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %21)
  %23 = mul nsw i64 %22, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %14, ptr noundef %15, i64 noundef %23, i8 %25)
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %8, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %26, ptr noundef %27, i8 %29)
  br label %30

30:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %3 = alloca %struct.less_than_functor, align 1
  %4 = alloca %struct.less_than_functor, align 1
  %5 = getelementptr inbounds nuw %struct.less_than_functor, ptr %3, i32 0, i32 0
  store i8 %0, ptr %5, align 1
  %6 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  %7 = load i8, ptr %6, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 %7)
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %2, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  ret i8 %9
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
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %13, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %11, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %12, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted2 = load i64, ptr %8, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  %19 = ptrtoint ptr %.promoted to i64
  %20 = sub i64 %19, %15
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %23

23:                                               ; preds = %.lr.ph, %34
  %24 = phi ptr [ %.promoted, %.lr.ph ], [ %37, %34 ]
  %25 = phi i64 [ %.promoted2, %.lr.ph ], [ %35, %34 ]
  %26 = phi ptr [ %.promoted5, %.lr.ph ], [ %37, %34 ]
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %.lcssa7 = phi ptr [ %26, %23 ]
  %.lcssa4 = phi i64 [ %25, %23 ]
  %.lcssa1 = phi ptr [ %24, %23 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 %33)
  br label %43

34:                                               ; preds = %23
  %35 = add nsw i64 %25, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %36 = load i8, ptr %17, align 1
  %37 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %16, ptr noundef %24, i8 %36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %38 = load i8, ptr %18, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %37, ptr noundef %24, i64 noundef %35, i8 %38)
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %39, %15
  %41 = sdiv exact i64 %40, 8
  %42 = icmp sgt i64 %41, 16
  br i1 %42, label %23, label %..loopexit_crit_edge, !llvm.loop !65

..loopexit_crit_edge:                             ; preds = %34
  %split = phi ptr [ %37, %34 ]
  %split8 = phi i64 [ %35, %34 ]
  %split9 = phi ptr [ %37, %34 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.lcssa6 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted5, %4 ]
  %.lcssa3 = phi i64 [ %split8, %..loopexit_crit_edge ], [ %.promoted2, %4 ]
  %.lcssa = phi ptr [ %split9, %..loopexit_crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %43

43:                                               ; preds = %.loopexit, %28
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 16
  %26 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %27 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %8, i32 0, i32 0
  %28 = load i8, ptr %27, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %25, ptr noundef %26, i8 %28)
  br label %34

29:                                               ; preds = %3
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %30, ptr noundef %31, i8 %33)
  br label %34

34:                                               ; preds = %29, %18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %11, ptr noundef %12, ptr noundef %13, i8 %15)
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = sdiv i64 %17, 2
  %19 = getelementptr inbounds double, ptr %11, i64 %18
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds double, ptr %28, i64 1
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  %34 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 %33)
  ret ptr %34
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %9, align 8
  %18 = icmp ult ptr %.promoted, %14
  br i1 %18, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %24
  %20 = phi ptr [ %.promoted, %.lr.ph ], [ %25, %24 ]
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef %15)
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds nuw double, ptr %20, i32 1
  %26 = icmp ult ptr %25, %14
  br i1 %26, label %19, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %24
  %split = phi ptr [ %25, %24 ]
  br label %27

27:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %9, align 8
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15
  %.promoted = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %.promoted to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %9, ptr noundef %17, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %8
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 1
  br i1 %21, label %15, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %15
  %split = phi ptr [ %17, %15 ]
  br label %22

22:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %5, align 8
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
  br label %42

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  store i64 %25, ptr %7, align 8
  %26 = load i64, ptr %7, align 8
  %27 = sub nsw i64 %26, 2
  %28 = sdiv i64 %27, 2
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %7, align 8
  %32 = load ptr, ptr %6, align 8, !nonnull !15
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %10, i32 0, i32 0
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %34, %19
  %35 = phi i64 [ %40, %34 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %32, i64 1, i1 false)
  %38 = load i8, ptr %33, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %38)
  %39 = icmp eq i64 %35, 0
  %40 = add nsw i64 %35, -1
  br i1 %39, label %41, label %34, !llvm.loop !68

41:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %42

42:                                               ; preds = %41, %18
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
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
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
  %18 = load ptr, ptr %5, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = load double, ptr %9, align 8
  %24 = load ptr, ptr %8, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %24, i64 1, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %10, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %22, double noundef %23, i8 %26)
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
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  store i8 %4, ptr %14, align 1
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
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  %24 = icmp slt i64 %.promoted, %19
  br i1 %24, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %5
  br label %25

25:                                               ; preds = %.lr.ph, %36
  %26 = phi i64 [ %.promoted, %.lr.ph ], [ %37, %36 ]
  %27 = phi i64 [ %.promoted1, %.lr.ph ], [ %37, %36 ]
  %28 = add nsw i64 %26, 1
  %29 = mul nsw i64 2, %28
  %30 = getelementptr inbounds double, ptr %20, i64 %29
  %31 = sub nsw i64 %29, 1
  %32 = getelementptr inbounds double, ptr %21, i64 %31
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %30, ptr noundef %32)
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = add nsw i64 %29, -1
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i64 [ %35, %34 ], [ %29, %25 ]
  %38 = getelementptr inbounds double, ptr %22, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %23, i64 %27
  store double %39, ptr %40, align 8
  %41 = icmp slt i64 %37, %19
  br i1 %41, label %25, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %36
  %split = phi i64 [ %37, %36 ]
  %split3 = phi i64 [ %37, %36 ]
  br label %42

42:                                               ; preds = %._crit_edge, %5
  %.lcssa2 = phi i64 [ %split, %._crit_edge ], [ %.promoted1, %5 ]
  %.lcssa = phi i64 [ %split3, %._crit_edge ], [ %.promoted, %5 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %43 = load i64, ptr %9, align 8
  %44 = and i64 %43, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %9, align 8
  %49 = sub nsw i64 %48, 2
  %50 = sdiv i64 %49, 2
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i64, ptr %12, align 8
  %54 = add nsw i64 %53, 1
  %55 = mul nsw i64 2, %54
  store i64 %55, ptr %12, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %12, align 8
  %58 = sub nsw i64 %57, 1
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = load i64, ptr %8, align 8
  %63 = getelementptr inbounds double, ptr %61, i64 %62
  store double %60, ptr %63, align 8
  %64 = load i64, ptr %12, align 8
  %65 = sub nsw i64 %64, 1
  store i64 %65, ptr %8, align 8
  br label %66

66:                                               ; preds = %52, %46, %42
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %67 = load ptr, ptr %7, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load i64, ptr %11, align 8
  %70 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %67, i64 noundef %68, i64 noundef %69, double noundef %70, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !15
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
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  %.promoted1 = load i64, ptr %11, align 8
  br label %20

20:                                               ; preds = %29, %5
  %21 = phi i64 [ %34, %29 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %21, %29 ], [ %.promoted, %5 ]
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds double, ptr %17, i64 %21
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %18, i64 %21
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %19, i64 %22
  store double %31, ptr %32, align 8
  %33 = sub nsw i64 %21, 1
  %34 = sdiv i64 %33, 2
  br label %20, !llvm.loop !70

35:                                               ; preds = %27
  %.lcssa2 = phi i64 [ %21, %27 ]
  %.lcssa = phi i64 [ %22, %27 ]
  store i64 %.lcssa, ptr %7, align 8
  store i64 %.lcssa2, ptr %11, align 8
  %36 = load double, ptr %9, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  store double %36, ptr %39, align 8
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
  %9 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %10 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  store i8 %4, ptr %11, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %17)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %20, ptr noundef %21)
  br label %33

22:                                               ; preds = %15
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %24)
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
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %35, ptr noundef %36)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  br label %52

41:                                               ; preds = %34
  %42 = load ptr, ptr %9, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %42, ptr noundef %43)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %12

12:                                               ; preds = %27, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %27 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %28, %27 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi ptr [ %16, %13 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  %16 = getelementptr inbounds nuw double, ptr %14, i32 1
  br i1 %15, label %13, label %17, !llvm.loop !71

17:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %18 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %22, %19 ], [ %18, %17 ]
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %20)
  %22 = getelementptr inbounds double, ptr %20, i32 -1
  br i1 %21, label %19, label %23, !llvm.loop !72

23:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %20, %19 ]
  %24 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %23 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %26 = load ptr, ptr %6, align 8
  ret ptr %26

27:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %28 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %12, !llvm.loop !73
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
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %18, i32 0, i32 0
  store i8 %2, ptr %25, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %88

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %20, align 8
  %34 = load ptr, ptr %19, align 8
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %24, i32 0, i32 0
  %36 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %23, i32 0, i32 0
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %23, i32 0, i32 0
  %38 = load ptr, ptr %19, align 8
  %39 = load ptr, ptr %19, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load i8, ptr %36, align 1
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
  %40 = icmp ne ptr %.promoted, %33
  br i1 %40, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %41

41:                                               ; preds = %.lr.ph, %85
  %42 = phi ptr [ %.promoted, %.lr.ph ], [ %86, %85 ]
  %43 = phi i8 [ %.promoted1, %.lr.ph ], [ %84, %85 ]
  %44 = phi double [ %.promoted3, %.lr.ph ], [ %83, %85 ]
  %45 = phi ptr [ %.promoted5, %.lr.ph ], [ %82, %85 ]
  %46 = phi ptr [ %.promoted7, %.lr.ph ], [ %81, %85 ]
  %47 = phi ptr [ %.promoted9, %.lr.ph ], [ %80, %85 ]
  %48 = phi ptr [ %.promoted11, %.lr.ph ], [ %79, %85 ]
  %49 = phi ptr [ %.promoted13, %.lr.ph ], [ %78, %85 ]
  %50 = phi ptr [ %.promoted15, %.lr.ph ], [ %77, %85 ]
  %51 = phi ptr [ %.promoted17, %.lr.ph ], [ %76, %85 ]
  %52 = phi ptr [ %.promoted19, %.lr.ph ], [ %75, %85 ]
  %53 = phi ptr [ %.promoted21, %.lr.ph ], [ %74, %85 ]
  %54 = phi ptr [ %.promoted23, %.lr.ph ], [ %73, %85 ]
  %55 = phi ptr [ %.promoted25, %.lr.ph ], [ %72, %85 ]
  %56 = phi ptr [ %.promoted27, %.lr.ph ], [ %71, %85 ]
  %57 = phi ptr [ %.promoted29, %.lr.ph ], [ %70, %85 ]
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %42, ptr noundef %34)
  br i1 %58, label %59, label %66

59:                                               ; preds = %41
  %60 = load double, ptr %42, align 8
  %61 = getelementptr inbounds double, ptr %42, i64 1
  %62 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %38)
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %42)
  store ptr %61, ptr %14, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store double %60, ptr %39, align 8
  br label %69

66:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = load i8, ptr %35, align 1
  %68 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %67)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %42, i8 %68)
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %57, %66 ], [ %65, %59 ]
  %71 = phi ptr [ %56, %66 ], [ %14, %59 ]
  %72 = phi ptr [ %55, %66 ], [ %64, %59 ]
  %73 = phi ptr [ %54, %66 ], [ %63, %59 ]
  %74 = phi ptr [ %53, %66 ], [ %62, %59 ]
  %75 = phi ptr [ %52, %66 ], [ %64, %59 ]
  %76 = phi ptr [ %51, %66 ], [ %63, %59 ]
  %77 = phi ptr [ %50, %66 ], [ %62, %59 ]
  %78 = phi ptr [ %49, %66 ], [ %63, %59 ]
  %79 = phi ptr [ %48, %66 ], [ %62, %59 ]
  %80 = phi ptr [ %47, %66 ], [ %61, %59 ]
  %81 = phi ptr [ %46, %66 ], [ %42, %59 ]
  %82 = phi ptr [ %45, %66 ], [ %38, %59 ]
  %83 = phi double [ %44, %66 ], [ %60, %59 ]
  %84 = phi i8 [ %68, %66 ], [ %43, %59 ]
  br label %85

85:                                               ; preds = %69
  %86 = getelementptr inbounds nuw double, ptr %42, i32 1
  %87 = icmp ne ptr %86, %33
  br i1 %87, label %41, label %..loopexit_crit_edge, !llvm.loop !74

..loopexit_crit_edge:                             ; preds = %85
  %split = phi ptr [ %70, %85 ]
  %split31 = phi ptr [ %71, %85 ]
  %split32 = phi ptr [ %72, %85 ]
  %split33 = phi ptr [ %73, %85 ]
  %split34 = phi ptr [ %74, %85 ]
  %split35 = phi ptr [ %75, %85 ]
  %split36 = phi ptr [ %76, %85 ]
  %split37 = phi ptr [ %77, %85 ]
  %split38 = phi ptr [ %78, %85 ]
  %split39 = phi ptr [ %79, %85 ]
  %split40 = phi ptr [ %80, %85 ]
  %split41 = phi ptr [ %81, %85 ]
  %split42 = phi ptr [ %82, %85 ]
  %split43 = phi double [ %83, %85 ]
  %split44 = phi i8 [ %84, %85 ]
  %split45 = phi ptr [ %86, %85 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  %.lcssa30 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted29, %30 ]
  %.lcssa28 = phi ptr [ %split31, %..loopexit_crit_edge ], [ %.promoted27, %30 ]
  %.lcssa26 = phi ptr [ %split32, %..loopexit_crit_edge ], [ %.promoted25, %30 ]
  %.lcssa24 = phi ptr [ %split33, %..loopexit_crit_edge ], [ %.promoted23, %30 ]
  %.lcssa22 = phi ptr [ %split34, %..loopexit_crit_edge ], [ %.promoted21, %30 ]
  %.lcssa20 = phi ptr [ %split35, %..loopexit_crit_edge ], [ %.promoted19, %30 ]
  %.lcssa18 = phi ptr [ %split36, %..loopexit_crit_edge ], [ %.promoted17, %30 ]
  %.lcssa16 = phi ptr [ %split37, %..loopexit_crit_edge ], [ %.promoted15, %30 ]
  %.lcssa14 = phi ptr [ %split38, %..loopexit_crit_edge ], [ %.promoted13, %30 ]
  %.lcssa12 = phi ptr [ %split39, %..loopexit_crit_edge ], [ %.promoted11, %30 ]
  %.lcssa10 = phi ptr [ %split40, %..loopexit_crit_edge ], [ %.promoted9, %30 ]
  %.lcssa8 = phi ptr [ %split41, %..loopexit_crit_edge ], [ %.promoted7, %30 ]
  %.lcssa6 = phi ptr [ %split42, %..loopexit_crit_edge ], [ %.promoted5, %30 ]
  %.lcssa4 = phi double [ %split43, %..loopexit_crit_edge ], [ %.promoted3, %30 ]
  %.lcssa2 = phi i8 [ %split44, %..loopexit_crit_edge ], [ %.promoted1, %30 ]
  %.lcssa = phi ptr [ %split45, %..loopexit_crit_edge ], [ %.promoted, %30 ]
  store ptr %.lcssa, ptr %21, align 8
  store i8 %.lcssa2, ptr %36, align 1
  store double %.lcssa4, ptr %22, align 8
  store ptr %.lcssa6, ptr %15, align 8
  store ptr %.lcssa8, ptr %16, align 8
  store ptr %.lcssa10, ptr %17, align 8
  store ptr %.lcssa12, ptr %12, align 8
  store ptr %.lcssa14, ptr %13, align 8
  store ptr %.lcssa16, ptr %7, align 8
  store ptr %.lcssa18, ptr %8, align 8
  store ptr %.lcssa20, ptr %9, align 8
  store ptr %.lcssa22, ptr %4, align 8
  store ptr %.lcssa24, ptr %5, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store ptr %.lcssa28, ptr %10, align 1
  store ptr %.lcssa30, ptr %11, align 1
  br label %88

88:                                               ; preds = %.loopexit, %29
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %8, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %8, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load i8, ptr %14, align 1
  %16 = icmp ne ptr %.promoted, %12
  br i1 %16, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %3
  br label %17

17:                                               ; preds = %.lr.ph, %21
  %18 = phi ptr [ %.promoted, %.lr.ph ], [ %22, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %19 = load i8, ptr %13, align 1
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %19)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %18, i8 %20)
  br label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw double, ptr %18, i32 1
  %23 = icmp ne ptr %22, %12
  br i1 %23, label %17, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %21
  %split = phi i8 [ %20, %21 ]
  %split3 = phi ptr [ %22, %21 ]
  br label %24

24:                                               ; preds = %._crit_edge, %3
  %.lcssa2 = phi i8 [ %split, %._crit_edge ], [ %.promoted1, %3 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %7, align 8
  store i8 %.lcssa2, ptr %14, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %3, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load double, ptr %8, align 8
  store double %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %12, ptr %6, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.promoted)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = phi ptr [ %.promoted, %.lr.ph ], [ %18, %14 ]
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %15, %14 ]
  %17 = load double, ptr %15, align 8
  store double %17, ptr %16, align 8
  %18 = getelementptr inbounds double, ptr %15, i32 -1
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %14
  %split = phi ptr [ %15, %14 ]
  %split3 = phi ptr [ %18, %14 ]
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %2 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  %21 = load double, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  store double %21, ptr %22, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %struct.less_than_functor, align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %struct.less_than_functor, ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %11 = load double, ptr %10, align 8
  %12 = fcmp olt double %9, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i1 true, i1 false
  ret i1 %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = icmp ne ptr %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %21)
  %23 = mul nsw i64 %22, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %14, ptr noundef %15, i64 noundef %23, i8 %25)
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %8, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %26, ptr noundef %27, i8 %29)
  br label %30

30:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %3 = alloca %struct.inline_less_than_functor, align 1
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %3, i32 0, i32 0
  store i8 %0, ptr %5, align 1
  %6 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %4, i32 0, i32 0
  %7 = load i8, ptr %6, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 %7)
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %2, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  ret i8 %9
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
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %13, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %11, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %12, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted2 = load i64, ptr %8, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  %19 = ptrtoint ptr %.promoted to i64
  %20 = sub i64 %19, %15
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %23

23:                                               ; preds = %.lr.ph, %34
  %24 = phi ptr [ %.promoted, %.lr.ph ], [ %37, %34 ]
  %25 = phi i64 [ %.promoted2, %.lr.ph ], [ %35, %34 ]
  %26 = phi ptr [ %.promoted5, %.lr.ph ], [ %37, %34 ]
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %.lcssa7 = phi ptr [ %26, %23 ]
  %.lcssa4 = phi i64 [ %25, %23 ]
  %.lcssa1 = phi ptr [ %24, %23 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 %33)
  br label %43

34:                                               ; preds = %23
  %35 = add nsw i64 %25, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %36 = load i8, ptr %17, align 1
  %37 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %16, ptr noundef %24, i8 %36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %38 = load i8, ptr %18, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %37, ptr noundef %24, i64 noundef %35, i8 %38)
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %39, %15
  %41 = sdiv exact i64 %40, 8
  %42 = icmp sgt i64 %41, 16
  br i1 %42, label %23, label %..loopexit_crit_edge, !llvm.loop !77

..loopexit_crit_edge:                             ; preds = %34
  %split = phi ptr [ %37, %34 ]
  %split8 = phi i64 [ %35, %34 ]
  %split9 = phi ptr [ %37, %34 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.lcssa6 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted5, %4 ]
  %.lcssa3 = phi i64 [ %split8, %..loopexit_crit_edge ], [ %.promoted2, %4 ]
  %.lcssa = phi ptr [ %split9, %..loopexit_crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %43

43:                                               ; preds = %.loopexit, %28
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 16
  %26 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %27 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %8, i32 0, i32 0
  %28 = load i8, ptr %27, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %25, ptr noundef %26, i8 %28)
  br label %34

29:                                               ; preds = %3
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %30, ptr noundef %31, i8 %33)
  br label %34

34:                                               ; preds = %29, %18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %11, ptr noundef %12, ptr noundef %13, i8 %15)
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = sdiv i64 %17, 2
  %19 = getelementptr inbounds double, ptr %11, i64 %18
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds double, ptr %28, i64 1
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  %34 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 %33)
  ret ptr %34
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %9, align 8
  %18 = icmp ult ptr %.promoted, %14
  br i1 %18, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %24
  %20 = phi ptr [ %.promoted, %.lr.ph ], [ %25, %24 ]
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef %15)
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds nuw double, ptr %20, i32 1
  %26 = icmp ult ptr %25, %14
  br i1 %26, label %19, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %24
  %split = phi ptr [ %25, %24 ]
  br label %27

27:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %9, align 8
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15
  %.promoted = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %.promoted to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %9, ptr noundef %17, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %8
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 1
  br i1 %21, label %15, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %15
  %split = phi ptr [ %17, %15 ]
  br label %22

22:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %5, align 8
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
  br label %42

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  store i64 %25, ptr %7, align 8
  %26 = load i64, ptr %7, align 8
  %27 = sub nsw i64 %26, 2
  %28 = sdiv i64 %27, 2
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %7, align 8
  %32 = load ptr, ptr %6, align 8, !nonnull !15
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %10, i32 0, i32 0
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %34, %19
  %35 = phi i64 [ %40, %34 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %32, i64 1, i1 false)
  %38 = load i8, ptr %33, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %38)
  %39 = icmp eq i64 %35, 0
  %40 = add nsw i64 %35, -1
  br i1 %39, label %41, label %34, !llvm.loop !80

41:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %42

42:                                               ; preds = %41, %18
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
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
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
  %18 = load ptr, ptr %5, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = load double, ptr %9, align 8
  %24 = load ptr, ptr %8, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %24, i64 1, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %10, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %22, double noundef %23, i8 %26)
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
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  store i8 %4, ptr %14, align 1
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
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  %24 = icmp slt i64 %.promoted, %19
  br i1 %24, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %5
  br label %25

25:                                               ; preds = %.lr.ph, %36
  %26 = phi i64 [ %.promoted, %.lr.ph ], [ %37, %36 ]
  %27 = phi i64 [ %.promoted1, %.lr.ph ], [ %37, %36 ]
  %28 = add nsw i64 %26, 1
  %29 = mul nsw i64 2, %28
  %30 = getelementptr inbounds double, ptr %20, i64 %29
  %31 = sub nsw i64 %29, 1
  %32 = getelementptr inbounds double, ptr %21, i64 %31
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %30, ptr noundef %32)
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = add nsw i64 %29, -1
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i64 [ %35, %34 ], [ %29, %25 ]
  %38 = getelementptr inbounds double, ptr %22, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %23, i64 %27
  store double %39, ptr %40, align 8
  %41 = icmp slt i64 %37, %19
  br i1 %41, label %25, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %36
  %split = phi i64 [ %37, %36 ]
  %split3 = phi i64 [ %37, %36 ]
  br label %42

42:                                               ; preds = %._crit_edge, %5
  %.lcssa2 = phi i64 [ %split, %._crit_edge ], [ %.promoted1, %5 ]
  %.lcssa = phi i64 [ %split3, %._crit_edge ], [ %.promoted, %5 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %43 = load i64, ptr %9, align 8
  %44 = and i64 %43, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %9, align 8
  %49 = sub nsw i64 %48, 2
  %50 = sdiv i64 %49, 2
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i64, ptr %12, align 8
  %54 = add nsw i64 %53, 1
  %55 = mul nsw i64 2, %54
  store i64 %55, ptr %12, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %12, align 8
  %58 = sub nsw i64 %57, 1
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = load i64, ptr %8, align 8
  %63 = getelementptr inbounds double, ptr %61, i64 %62
  store double %60, ptr %63, align 8
  %64 = load i64, ptr %12, align 8
  %65 = sub nsw i64 %64, 1
  store i64 %65, ptr %8, align 8
  br label %66

66:                                               ; preds = %52, %46, %42
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %67 = load ptr, ptr %7, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load i64, ptr %11, align 8
  %70 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %67, i64 noundef %68, i64 noundef %69, double noundef %70, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !15
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
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  %.promoted1 = load i64, ptr %11, align 8
  br label %20

20:                                               ; preds = %29, %5
  %21 = phi i64 [ %34, %29 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %21, %29 ], [ %.promoted, %5 ]
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds double, ptr %17, i64 %21
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %18, i64 %21
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %19, i64 %22
  store double %31, ptr %32, align 8
  %33 = sub nsw i64 %21, 1
  %34 = sdiv i64 %33, 2
  br label %20, !llvm.loop !82

35:                                               ; preds = %27
  %.lcssa2 = phi i64 [ %21, %27 ]
  %.lcssa = phi i64 [ %22, %27 ]
  store i64 %.lcssa, ptr %7, align 8
  store i64 %.lcssa2, ptr %11, align 8
  %36 = load double, ptr %9, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  store double %36, ptr %39, align 8
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
  %9 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %10 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  store i8 %4, ptr %11, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %17)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %20, ptr noundef %21)
  br label %33

22:                                               ; preds = %15
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %24)
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
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %35, ptr noundef %36)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  br label %52

41:                                               ; preds = %34
  %42 = load ptr, ptr %9, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %42, ptr noundef %43)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %12

12:                                               ; preds = %27, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %27 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %28, %27 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi ptr [ %16, %13 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  %16 = getelementptr inbounds nuw double, ptr %14, i32 1
  br i1 %15, label %13, label %17, !llvm.loop !83

17:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %18 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %22, %19 ], [ %18, %17 ]
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %20)
  %22 = getelementptr inbounds double, ptr %20, i32 -1
  br i1 %21, label %19, label %23, !llvm.loop !84

23:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %20, %19 ]
  %24 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %23 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %26 = load ptr, ptr %6, align 8
  ret ptr %26

27:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %28 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %12, !llvm.loop !85
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
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %18, i32 0, i32 0
  store i8 %2, ptr %25, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %88

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %20, align 8
  %34 = load ptr, ptr %19, align 8
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %24, i32 0, i32 0
  %36 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %23, i32 0, i32 0
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %23, i32 0, i32 0
  %38 = load ptr, ptr %19, align 8
  %39 = load ptr, ptr %19, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load i8, ptr %36, align 1
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
  %40 = icmp ne ptr %.promoted, %33
  br i1 %40, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %41

41:                                               ; preds = %.lr.ph, %85
  %42 = phi ptr [ %.promoted, %.lr.ph ], [ %86, %85 ]
  %43 = phi i8 [ %.promoted1, %.lr.ph ], [ %84, %85 ]
  %44 = phi double [ %.promoted3, %.lr.ph ], [ %83, %85 ]
  %45 = phi ptr [ %.promoted5, %.lr.ph ], [ %82, %85 ]
  %46 = phi ptr [ %.promoted7, %.lr.ph ], [ %81, %85 ]
  %47 = phi ptr [ %.promoted9, %.lr.ph ], [ %80, %85 ]
  %48 = phi ptr [ %.promoted11, %.lr.ph ], [ %79, %85 ]
  %49 = phi ptr [ %.promoted13, %.lr.ph ], [ %78, %85 ]
  %50 = phi ptr [ %.promoted15, %.lr.ph ], [ %77, %85 ]
  %51 = phi ptr [ %.promoted17, %.lr.ph ], [ %76, %85 ]
  %52 = phi ptr [ %.promoted19, %.lr.ph ], [ %75, %85 ]
  %53 = phi ptr [ %.promoted21, %.lr.ph ], [ %74, %85 ]
  %54 = phi ptr [ %.promoted23, %.lr.ph ], [ %73, %85 ]
  %55 = phi ptr [ %.promoted25, %.lr.ph ], [ %72, %85 ]
  %56 = phi ptr [ %.promoted27, %.lr.ph ], [ %71, %85 ]
  %57 = phi ptr [ %.promoted29, %.lr.ph ], [ %70, %85 ]
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %42, ptr noundef %34)
  br i1 %58, label %59, label %66

59:                                               ; preds = %41
  %60 = load double, ptr %42, align 8
  %61 = getelementptr inbounds double, ptr %42, i64 1
  %62 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %38)
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %42)
  store ptr %61, ptr %14, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store double %60, ptr %39, align 8
  br label %69

66:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = load i8, ptr %35, align 1
  %68 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %67)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %42, i8 %68)
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %57, %66 ], [ %65, %59 ]
  %71 = phi ptr [ %56, %66 ], [ %14, %59 ]
  %72 = phi ptr [ %55, %66 ], [ %64, %59 ]
  %73 = phi ptr [ %54, %66 ], [ %63, %59 ]
  %74 = phi ptr [ %53, %66 ], [ %62, %59 ]
  %75 = phi ptr [ %52, %66 ], [ %64, %59 ]
  %76 = phi ptr [ %51, %66 ], [ %63, %59 ]
  %77 = phi ptr [ %50, %66 ], [ %62, %59 ]
  %78 = phi ptr [ %49, %66 ], [ %63, %59 ]
  %79 = phi ptr [ %48, %66 ], [ %62, %59 ]
  %80 = phi ptr [ %47, %66 ], [ %61, %59 ]
  %81 = phi ptr [ %46, %66 ], [ %42, %59 ]
  %82 = phi ptr [ %45, %66 ], [ %38, %59 ]
  %83 = phi double [ %44, %66 ], [ %60, %59 ]
  %84 = phi i8 [ %68, %66 ], [ %43, %59 ]
  br label %85

85:                                               ; preds = %69
  %86 = getelementptr inbounds nuw double, ptr %42, i32 1
  %87 = icmp ne ptr %86, %33
  br i1 %87, label %41, label %..loopexit_crit_edge, !llvm.loop !86

..loopexit_crit_edge:                             ; preds = %85
  %split = phi ptr [ %70, %85 ]
  %split31 = phi ptr [ %71, %85 ]
  %split32 = phi ptr [ %72, %85 ]
  %split33 = phi ptr [ %73, %85 ]
  %split34 = phi ptr [ %74, %85 ]
  %split35 = phi ptr [ %75, %85 ]
  %split36 = phi ptr [ %76, %85 ]
  %split37 = phi ptr [ %77, %85 ]
  %split38 = phi ptr [ %78, %85 ]
  %split39 = phi ptr [ %79, %85 ]
  %split40 = phi ptr [ %80, %85 ]
  %split41 = phi ptr [ %81, %85 ]
  %split42 = phi ptr [ %82, %85 ]
  %split43 = phi double [ %83, %85 ]
  %split44 = phi i8 [ %84, %85 ]
  %split45 = phi ptr [ %86, %85 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  %.lcssa30 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted29, %30 ]
  %.lcssa28 = phi ptr [ %split31, %..loopexit_crit_edge ], [ %.promoted27, %30 ]
  %.lcssa26 = phi ptr [ %split32, %..loopexit_crit_edge ], [ %.promoted25, %30 ]
  %.lcssa24 = phi ptr [ %split33, %..loopexit_crit_edge ], [ %.promoted23, %30 ]
  %.lcssa22 = phi ptr [ %split34, %..loopexit_crit_edge ], [ %.promoted21, %30 ]
  %.lcssa20 = phi ptr [ %split35, %..loopexit_crit_edge ], [ %.promoted19, %30 ]
  %.lcssa18 = phi ptr [ %split36, %..loopexit_crit_edge ], [ %.promoted17, %30 ]
  %.lcssa16 = phi ptr [ %split37, %..loopexit_crit_edge ], [ %.promoted15, %30 ]
  %.lcssa14 = phi ptr [ %split38, %..loopexit_crit_edge ], [ %.promoted13, %30 ]
  %.lcssa12 = phi ptr [ %split39, %..loopexit_crit_edge ], [ %.promoted11, %30 ]
  %.lcssa10 = phi ptr [ %split40, %..loopexit_crit_edge ], [ %.promoted9, %30 ]
  %.lcssa8 = phi ptr [ %split41, %..loopexit_crit_edge ], [ %.promoted7, %30 ]
  %.lcssa6 = phi ptr [ %split42, %..loopexit_crit_edge ], [ %.promoted5, %30 ]
  %.lcssa4 = phi double [ %split43, %..loopexit_crit_edge ], [ %.promoted3, %30 ]
  %.lcssa2 = phi i8 [ %split44, %..loopexit_crit_edge ], [ %.promoted1, %30 ]
  %.lcssa = phi ptr [ %split45, %..loopexit_crit_edge ], [ %.promoted, %30 ]
  store ptr %.lcssa, ptr %21, align 8
  store i8 %.lcssa2, ptr %36, align 1
  store double %.lcssa4, ptr %22, align 8
  store ptr %.lcssa6, ptr %15, align 8
  store ptr %.lcssa8, ptr %16, align 8
  store ptr %.lcssa10, ptr %17, align 8
  store ptr %.lcssa12, ptr %12, align 8
  store ptr %.lcssa14, ptr %13, align 8
  store ptr %.lcssa16, ptr %7, align 8
  store ptr %.lcssa18, ptr %8, align 8
  store ptr %.lcssa20, ptr %9, align 8
  store ptr %.lcssa22, ptr %4, align 8
  store ptr %.lcssa24, ptr %5, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store ptr %.lcssa28, ptr %10, align 1
  store ptr %.lcssa30, ptr %11, align 1
  br label %88

88:                                               ; preds = %.loopexit, %29
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %8, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %8, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load i8, ptr %14, align 1
  %16 = icmp ne ptr %.promoted, %12
  br i1 %16, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %3
  br label %17

17:                                               ; preds = %.lr.ph, %21
  %18 = phi ptr [ %.promoted, %.lr.ph ], [ %22, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %19 = load i8, ptr %13, align 1
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %19)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %18, i8 %20)
  br label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw double, ptr %18, i32 1
  %23 = icmp ne ptr %22, %12
  br i1 %23, label %17, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %21
  %split = phi i8 [ %20, %21 ]
  %split3 = phi ptr [ %22, %21 ]
  br label %24

24:                                               ; preds = %._crit_edge, %3
  %.lcssa2 = phi i8 [ %split, %._crit_edge ], [ %.promoted1, %3 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %7, align 8
  store i8 %.lcssa2, ptr %14, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %3, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load double, ptr %8, align 8
  store double %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %12, ptr %6, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.promoted)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = phi ptr [ %.promoted, %.lr.ph ], [ %18, %14 ]
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %15, %14 ]
  %17 = load double, ptr %15, align 8
  store double %17, ptr %16, align 8
  %18 = getelementptr inbounds double, ptr %15, i32 -1
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %14
  %split = phi ptr [ %15, %14 ]
  %split3 = phi ptr [ %18, %14 ]
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %2 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  %21 = load double, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  store double %21, ptr %22, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %struct.inline_less_than_functor, align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %11 = load double, ptr %10, align 8
  %12 = fcmp olt double %9, %11
  ret i1 %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = icmp ne ptr %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %21)
  %23 = mul nsw i64 %22, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %14, ptr noundef %15, i64 noundef %23, i8 %25)
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %8, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %26, ptr noundef %27, i8 %29)
  br label %30

30:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %3 = alloca %"struct.std::less", align 1
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds nuw %"struct.std::less", ptr %3, i32 0, i32 0
  store i8 %0, ptr %5, align 1
  %6 = getelementptr inbounds nuw %"struct.std::less", ptr %4, i32 0, i32 0
  %7 = load i8, ptr %6, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 %7)
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %2, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  ret i8 %9
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
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %13, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %11, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %12, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted2 = load i64, ptr %8, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  %19 = ptrtoint ptr %.promoted to i64
  %20 = sub i64 %19, %15
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %23

23:                                               ; preds = %.lr.ph, %34
  %24 = phi ptr [ %.promoted, %.lr.ph ], [ %37, %34 ]
  %25 = phi i64 [ %.promoted2, %.lr.ph ], [ %35, %34 ]
  %26 = phi ptr [ %.promoted5, %.lr.ph ], [ %37, %34 ]
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %.lcssa7 = phi ptr [ %26, %23 ]
  %.lcssa4 = phi i64 [ %25, %23 ]
  %.lcssa1 = phi ptr [ %24, %23 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 %33)
  br label %43

34:                                               ; preds = %23
  %35 = add nsw i64 %25, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %36 = load i8, ptr %17, align 1
  %37 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %16, ptr noundef %24, i8 %36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %38 = load i8, ptr %18, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %37, ptr noundef %24, i64 noundef %35, i8 %38)
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %39, %15
  %41 = sdiv exact i64 %40, 8
  %42 = icmp sgt i64 %41, 16
  br i1 %42, label %23, label %..loopexit_crit_edge, !llvm.loop !89

..loopexit_crit_edge:                             ; preds = %34
  %split = phi ptr [ %37, %34 ]
  %split8 = phi i64 [ %35, %34 ]
  %split9 = phi ptr [ %37, %34 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.lcssa6 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted5, %4 ]
  %.lcssa3 = phi i64 [ %split8, %..loopexit_crit_edge ], [ %.promoted2, %4 ]
  %.lcssa = phi ptr [ %split9, %..loopexit_crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %43

43:                                               ; preds = %.loopexit, %28
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 16
  %26 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %27 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %8, i32 0, i32 0
  %28 = load i8, ptr %27, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %25, ptr noundef %26, i8 %28)
  br label %34

29:                                               ; preds = %3
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %30, ptr noundef %31, i8 %33)
  br label %34

34:                                               ; preds = %29, %18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %11, ptr noundef %12, ptr noundef %13, i8 %15)
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = sdiv i64 %17, 2
  %19 = getelementptr inbounds double, ptr %11, i64 %18
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds double, ptr %28, i64 1
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  %34 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 %33)
  ret ptr %34
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %9, align 8
  %18 = icmp ult ptr %.promoted, %14
  br i1 %18, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %24
  %20 = phi ptr [ %.promoted, %.lr.ph ], [ %25, %24 ]
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef %15)
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds nuw double, ptr %20, i32 1
  %26 = icmp ult ptr %25, %14
  br i1 %26, label %19, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %24
  %split = phi ptr [ %25, %24 ]
  br label %27

27:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %9, align 8
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15
  %.promoted = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %.promoted to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %9, ptr noundef %17, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %8
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 1
  br i1 %21, label %15, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %15
  %split = phi ptr [ %17, %15 ]
  br label %22

22:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %5, align 8
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
  br label %42

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  store i64 %25, ptr %7, align 8
  %26 = load i64, ptr %7, align 8
  %27 = sub nsw i64 %26, 2
  %28 = sdiv i64 %27, 2
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %7, align 8
  %32 = load ptr, ptr %6, align 8, !nonnull !15
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %10, i32 0, i32 0
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %34, %19
  %35 = phi i64 [ %40, %34 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %32, i64 1, i1 false)
  %38 = load i8, ptr %33, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %38)
  %39 = icmp eq i64 %35, 0
  %40 = add nsw i64 %35, -1
  br i1 %39, label %41, label %34, !llvm.loop !92

41:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %42

42:                                               ; preds = %41, %18
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
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
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
  %18 = load ptr, ptr %5, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = load double, ptr %9, align 8
  %24 = load ptr, ptr %8, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %24, i64 1, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %10, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %22, double noundef %23, i8 %26)
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
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  store i8 %4, ptr %14, align 1
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
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  %24 = icmp slt i64 %.promoted, %19
  br i1 %24, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %5
  br label %25

25:                                               ; preds = %.lr.ph, %36
  %26 = phi i64 [ %.promoted, %.lr.ph ], [ %37, %36 ]
  %27 = phi i64 [ %.promoted1, %.lr.ph ], [ %37, %36 ]
  %28 = add nsw i64 %26, 1
  %29 = mul nsw i64 2, %28
  %30 = getelementptr inbounds double, ptr %20, i64 %29
  %31 = sub nsw i64 %29, 1
  %32 = getelementptr inbounds double, ptr %21, i64 %31
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %30, ptr noundef %32)
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = add nsw i64 %29, -1
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i64 [ %35, %34 ], [ %29, %25 ]
  %38 = getelementptr inbounds double, ptr %22, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %23, i64 %27
  store double %39, ptr %40, align 8
  %41 = icmp slt i64 %37, %19
  br i1 %41, label %25, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %36
  %split = phi i64 [ %37, %36 ]
  %split3 = phi i64 [ %37, %36 ]
  br label %42

42:                                               ; preds = %._crit_edge, %5
  %.lcssa2 = phi i64 [ %split, %._crit_edge ], [ %.promoted1, %5 ]
  %.lcssa = phi i64 [ %split3, %._crit_edge ], [ %.promoted, %5 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %43 = load i64, ptr %9, align 8
  %44 = and i64 %43, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %9, align 8
  %49 = sub nsw i64 %48, 2
  %50 = sdiv i64 %49, 2
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i64, ptr %12, align 8
  %54 = add nsw i64 %53, 1
  %55 = mul nsw i64 2, %54
  store i64 %55, ptr %12, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %12, align 8
  %58 = sub nsw i64 %57, 1
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = load i64, ptr %8, align 8
  %63 = getelementptr inbounds double, ptr %61, i64 %62
  store double %60, ptr %63, align 8
  %64 = load i64, ptr %12, align 8
  %65 = sub nsw i64 %64, 1
  store i64 %65, ptr %8, align 8
  br label %66

66:                                               ; preds = %52, %46, %42
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %67 = load ptr, ptr %7, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load i64, ptr %11, align 8
  %70 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %67, i64 noundef %68, i64 noundef %69, double noundef %70, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !15
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
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  %.promoted1 = load i64, ptr %11, align 8
  br label %20

20:                                               ; preds = %29, %5
  %21 = phi i64 [ %34, %29 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %21, %29 ], [ %.promoted, %5 ]
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds double, ptr %17, i64 %21
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %18, i64 %21
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %19, i64 %22
  store double %31, ptr %32, align 8
  %33 = sub nsw i64 %21, 1
  %34 = sdiv i64 %33, 2
  br label %20, !llvm.loop !94

35:                                               ; preds = %27
  %.lcssa2 = phi i64 [ %21, %27 ]
  %.lcssa = phi i64 [ %22, %27 ]
  store i64 %.lcssa, ptr %7, align 8
  store i64 %.lcssa2, ptr %11, align 8
  %36 = load double, ptr %9, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  store double %36, ptr %39, align 8
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
  %9 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %10 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  store i8 %4, ptr %11, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %17)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %20, ptr noundef %21)
  br label %33

22:                                               ; preds = %15
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %24)
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
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %35, ptr noundef %36)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  br label %52

41:                                               ; preds = %34
  %42 = load ptr, ptr %9, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %42, ptr noundef %43)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %12

12:                                               ; preds = %27, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %27 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %28, %27 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi ptr [ %16, %13 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  %16 = getelementptr inbounds nuw double, ptr %14, i32 1
  br i1 %15, label %13, label %17, !llvm.loop !95

17:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %18 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %22, %19 ], [ %18, %17 ]
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %20)
  %22 = getelementptr inbounds double, ptr %20, i32 -1
  br i1 %21, label %19, label %23, !llvm.loop !96

23:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %20, %19 ]
  %24 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %23 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %26 = load ptr, ptr %6, align 8
  ret ptr %26

27:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %28 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %12, !llvm.loop !97
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
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %18, i32 0, i32 0
  store i8 %2, ptr %25, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %88

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %20, align 8
  %34 = load ptr, ptr %19, align 8
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %24, i32 0, i32 0
  %36 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %23, i32 0, i32 0
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %23, i32 0, i32 0
  %38 = load ptr, ptr %19, align 8
  %39 = load ptr, ptr %19, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load i8, ptr %36, align 1
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
  %40 = icmp ne ptr %.promoted, %33
  br i1 %40, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %41

41:                                               ; preds = %.lr.ph, %85
  %42 = phi ptr [ %.promoted, %.lr.ph ], [ %86, %85 ]
  %43 = phi i8 [ %.promoted1, %.lr.ph ], [ %84, %85 ]
  %44 = phi double [ %.promoted3, %.lr.ph ], [ %83, %85 ]
  %45 = phi ptr [ %.promoted5, %.lr.ph ], [ %82, %85 ]
  %46 = phi ptr [ %.promoted7, %.lr.ph ], [ %81, %85 ]
  %47 = phi ptr [ %.promoted9, %.lr.ph ], [ %80, %85 ]
  %48 = phi ptr [ %.promoted11, %.lr.ph ], [ %79, %85 ]
  %49 = phi ptr [ %.promoted13, %.lr.ph ], [ %78, %85 ]
  %50 = phi ptr [ %.promoted15, %.lr.ph ], [ %77, %85 ]
  %51 = phi ptr [ %.promoted17, %.lr.ph ], [ %76, %85 ]
  %52 = phi ptr [ %.promoted19, %.lr.ph ], [ %75, %85 ]
  %53 = phi ptr [ %.promoted21, %.lr.ph ], [ %74, %85 ]
  %54 = phi ptr [ %.promoted23, %.lr.ph ], [ %73, %85 ]
  %55 = phi ptr [ %.promoted25, %.lr.ph ], [ %72, %85 ]
  %56 = phi ptr [ %.promoted27, %.lr.ph ], [ %71, %85 ]
  %57 = phi ptr [ %.promoted29, %.lr.ph ], [ %70, %85 ]
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %42, ptr noundef %34)
  br i1 %58, label %59, label %66

59:                                               ; preds = %41
  %60 = load double, ptr %42, align 8
  %61 = getelementptr inbounds double, ptr %42, i64 1
  %62 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %38)
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %42)
  store ptr %61, ptr %14, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store double %60, ptr %39, align 8
  br label %69

66:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = load i8, ptr %35, align 1
  %68 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %67)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %42, i8 %68)
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %57, %66 ], [ %65, %59 ]
  %71 = phi ptr [ %56, %66 ], [ %14, %59 ]
  %72 = phi ptr [ %55, %66 ], [ %64, %59 ]
  %73 = phi ptr [ %54, %66 ], [ %63, %59 ]
  %74 = phi ptr [ %53, %66 ], [ %62, %59 ]
  %75 = phi ptr [ %52, %66 ], [ %64, %59 ]
  %76 = phi ptr [ %51, %66 ], [ %63, %59 ]
  %77 = phi ptr [ %50, %66 ], [ %62, %59 ]
  %78 = phi ptr [ %49, %66 ], [ %63, %59 ]
  %79 = phi ptr [ %48, %66 ], [ %62, %59 ]
  %80 = phi ptr [ %47, %66 ], [ %61, %59 ]
  %81 = phi ptr [ %46, %66 ], [ %42, %59 ]
  %82 = phi ptr [ %45, %66 ], [ %38, %59 ]
  %83 = phi double [ %44, %66 ], [ %60, %59 ]
  %84 = phi i8 [ %68, %66 ], [ %43, %59 ]
  br label %85

85:                                               ; preds = %69
  %86 = getelementptr inbounds nuw double, ptr %42, i32 1
  %87 = icmp ne ptr %86, %33
  br i1 %87, label %41, label %..loopexit_crit_edge, !llvm.loop !98

..loopexit_crit_edge:                             ; preds = %85
  %split = phi ptr [ %70, %85 ]
  %split31 = phi ptr [ %71, %85 ]
  %split32 = phi ptr [ %72, %85 ]
  %split33 = phi ptr [ %73, %85 ]
  %split34 = phi ptr [ %74, %85 ]
  %split35 = phi ptr [ %75, %85 ]
  %split36 = phi ptr [ %76, %85 ]
  %split37 = phi ptr [ %77, %85 ]
  %split38 = phi ptr [ %78, %85 ]
  %split39 = phi ptr [ %79, %85 ]
  %split40 = phi ptr [ %80, %85 ]
  %split41 = phi ptr [ %81, %85 ]
  %split42 = phi ptr [ %82, %85 ]
  %split43 = phi double [ %83, %85 ]
  %split44 = phi i8 [ %84, %85 ]
  %split45 = phi ptr [ %86, %85 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  %.lcssa30 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted29, %30 ]
  %.lcssa28 = phi ptr [ %split31, %..loopexit_crit_edge ], [ %.promoted27, %30 ]
  %.lcssa26 = phi ptr [ %split32, %..loopexit_crit_edge ], [ %.promoted25, %30 ]
  %.lcssa24 = phi ptr [ %split33, %..loopexit_crit_edge ], [ %.promoted23, %30 ]
  %.lcssa22 = phi ptr [ %split34, %..loopexit_crit_edge ], [ %.promoted21, %30 ]
  %.lcssa20 = phi ptr [ %split35, %..loopexit_crit_edge ], [ %.promoted19, %30 ]
  %.lcssa18 = phi ptr [ %split36, %..loopexit_crit_edge ], [ %.promoted17, %30 ]
  %.lcssa16 = phi ptr [ %split37, %..loopexit_crit_edge ], [ %.promoted15, %30 ]
  %.lcssa14 = phi ptr [ %split38, %..loopexit_crit_edge ], [ %.promoted13, %30 ]
  %.lcssa12 = phi ptr [ %split39, %..loopexit_crit_edge ], [ %.promoted11, %30 ]
  %.lcssa10 = phi ptr [ %split40, %..loopexit_crit_edge ], [ %.promoted9, %30 ]
  %.lcssa8 = phi ptr [ %split41, %..loopexit_crit_edge ], [ %.promoted7, %30 ]
  %.lcssa6 = phi ptr [ %split42, %..loopexit_crit_edge ], [ %.promoted5, %30 ]
  %.lcssa4 = phi double [ %split43, %..loopexit_crit_edge ], [ %.promoted3, %30 ]
  %.lcssa2 = phi i8 [ %split44, %..loopexit_crit_edge ], [ %.promoted1, %30 ]
  %.lcssa = phi ptr [ %split45, %..loopexit_crit_edge ], [ %.promoted, %30 ]
  store ptr %.lcssa, ptr %21, align 8
  store i8 %.lcssa2, ptr %36, align 1
  store double %.lcssa4, ptr %22, align 8
  store ptr %.lcssa6, ptr %15, align 8
  store ptr %.lcssa8, ptr %16, align 8
  store ptr %.lcssa10, ptr %17, align 8
  store ptr %.lcssa12, ptr %12, align 8
  store ptr %.lcssa14, ptr %13, align 8
  store ptr %.lcssa16, ptr %7, align 8
  store ptr %.lcssa18, ptr %8, align 8
  store ptr %.lcssa20, ptr %9, align 8
  store ptr %.lcssa22, ptr %4, align 8
  store ptr %.lcssa24, ptr %5, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store ptr %.lcssa28, ptr %10, align 1
  store ptr %.lcssa30, ptr %11, align 1
  br label %88

88:                                               ; preds = %.loopexit, %29
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %8, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %8, i32 0, i32 0
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load i8, ptr %14, align 1
  %16 = icmp ne ptr %.promoted, %12
  br i1 %16, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %3
  br label %17

17:                                               ; preds = %.lr.ph, %21
  %18 = phi ptr [ %.promoted, %.lr.ph ], [ %22, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %19 = load i8, ptr %13, align 1
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %19)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %18, i8 %20)
  br label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw double, ptr %18, i32 1
  %23 = icmp ne ptr %22, %12
  br i1 %23, label %17, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %21
  %split = phi i8 [ %20, %21 ]
  %split3 = phi ptr [ %22, %21 ]
  br label %24

24:                                               ; preds = %._crit_edge, %3
  %.lcssa2 = phi i8 [ %split, %._crit_edge ], [ %.promoted1, %3 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %7, align 8
  store i8 %.lcssa2, ptr %14, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %3, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load double, ptr %8, align 8
  store double %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %12, ptr %6, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.promoted)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = phi ptr [ %.promoted, %.lr.ph ], [ %18, %14 ]
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %15, %14 ]
  %17 = load double, ptr %15, align 8
  store double %17, ptr %16, align 8
  %18 = getelementptr inbounds double, ptr %15, i32 -1
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %14
  %split = phi ptr [ %15, %14 ]
  %split3 = phi ptr [ %18, %14 ]
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %2 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  %21 = load double, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  store double %21, ptr %22, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::less", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.std::less", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = icmp ne ptr %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %21)
  %23 = mul nsw i64 %22, 2
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %14, ptr noundef %15, i64 noundef %23, i8 %25)
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %26, ptr noundef %27, i8 %29)
  br label %30

30:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
  %1 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %2 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %1, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  ret i8 %3
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
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %13, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %11, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %12, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  %.promoted = load ptr, ptr %7, align 8
  %.promoted2 = load i64, ptr %8, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  %21 = ptrtoint ptr %.promoted to i64
  %22 = sub i64 %21, %15
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 16
  br i1 %24, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %25

25:                                               ; preds = %.lr.ph, %36
  %26 = phi ptr [ %.promoted, %.lr.ph ], [ %38, %36 ]
  %27 = phi i64 [ %.promoted2, %.lr.ph ], [ %37, %36 ]
  %28 = phi ptr [ %.promoted5, %.lr.ph ], [ %38, %36 ]
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %.lcssa7 = phi ptr [ %28, %25 ]
  %.lcssa4 = phi i64 [ %27, %25 ]
  %.lcssa1 = phi ptr [ %26, %25 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %35 = load i8, ptr %34, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %31, ptr noundef %32, ptr noundef %33, i8 %35)
  br label %43

36:                                               ; preds = %25
  %37 = add nsw i64 %27, -1
  %38 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %16, ptr noundef %26, i8 %18)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %38, ptr noundef %26, i64 noundef %37, i8 %20)
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %15
  %41 = sdiv exact i64 %40, 8
  %42 = icmp sgt i64 %41, 16
  br i1 %42, label %25, label %..loopexit_crit_edge, !llvm.loop !101

..loopexit_crit_edge:                             ; preds = %36
  %split = phi ptr [ %38, %36 ]
  %split8 = phi i64 [ %37, %36 ]
  %split9 = phi ptr [ %38, %36 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.lcssa6 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted5, %4 ]
  %.lcssa3 = phi i64 [ %split8, %..loopexit_crit_edge ], [ %.promoted2, %4 ]
  %.lcssa = phi ptr [ %split9, %..loopexit_crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %43

43:                                               ; preds = %.loopexit, %30
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 16
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 16
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %28 = load i8, ptr %27, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %25, ptr noundef %26, i8 %28)
  br label %34

29:                                               ; preds = %3
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %30, ptr noundef %31, i8 %33)
  br label %34

34:                                               ; preds = %29, %18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %11, ptr noundef %12, ptr noundef %13, i8 %15)
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = sdiv i64 %17, 2
  %19 = getelementptr inbounds double, ptr %11, i64 %18
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds double, ptr %28, i64 1
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  %34 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 %33)
  ret ptr %34
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %10, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %9, align 8
  %18 = icmp ult ptr %.promoted, %14
  br i1 %18, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %24
  %20 = phi ptr [ %.promoted, %.lr.ph ], [ %25, %24 ]
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef %15)
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds nuw double, ptr %20, i32 1
  %26 = icmp ult ptr %25, %14
  br i1 %26, label %19, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %24
  %split = phi ptr [ %25, %24 ]
  br label %27

27:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %4 ]
  store ptr %.lcssa, ptr %9, align 8
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15
  %.promoted = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %.promoted to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %9, ptr noundef %17, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %8
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 1
  br i1 %21, label %15, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %15
  %split = phi ptr [ %17, %15 ]
  br label %22

22:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %5, align 8
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
  br label %41

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  store i64 %25, ptr %7, align 8
  %26 = load i64, ptr %7, align 8
  %27 = sub nsw i64 %26, 2
  %28 = sdiv i64 %27, 2
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %10, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %34, %19
  %35 = phi i64 [ %39, %34 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %33)
  %38 = icmp eq i64 %35, 0
  %39 = add nsw i64 %35, -1
  br i1 %38, label %40, label %34, !llvm.loop !104

40:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %41

41:                                               ; preds = %40, %18
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load double, ptr %10, align 8
  %12 = fcmp olt double %9, %11
  ret i1 %12
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
  %18 = load ptr, ptr %5, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = load double, ptr %9, align 8
  %24 = load ptr, ptr %8, align 8, !nonnull !15
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %10, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %22, double noundef %23, i8 %26)
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
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  store i8 %4, ptr %15, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  %16 = load i64, ptr %8, align 8
  store i64 %16, ptr %11, align 8
  %17 = load i64, ptr %8, align 8
  store i64 %17, ptr %12, align 8
  %18 = load i64, ptr %9, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  %25 = icmp slt i64 %.promoted, %20
  br i1 %25, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %5
  br label %26

26:                                               ; preds = %.lr.ph, %37
  %27 = phi i64 [ %.promoted, %.lr.ph ], [ %38, %37 ]
  %28 = phi i64 [ %.promoted1, %.lr.ph ], [ %38, %37 ]
  %29 = add nsw i64 %27, 1
  %30 = mul nsw i64 2, %29
  %31 = getelementptr inbounds double, ptr %21, i64 %30
  %32 = sub nsw i64 %30, 1
  %33 = getelementptr inbounds double, ptr %22, i64 %32
  %34 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %31, ptr noundef %33)
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = add nsw i64 %30, -1
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i64 [ %36, %35 ], [ %30, %26 ]
  %39 = getelementptr inbounds double, ptr %23, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %24, i64 %28
  store double %40, ptr %41, align 8
  %42 = icmp slt i64 %38, %20
  br i1 %42, label %26, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %37
  %split = phi i64 [ %38, %37 ]
  %split3 = phi i64 [ %38, %37 ]
  br label %43

43:                                               ; preds = %._crit_edge, %5
  %.lcssa2 = phi i64 [ %split, %._crit_edge ], [ %.promoted1, %5 ]
  %.lcssa = phi i64 [ %split3, %._crit_edge ], [ %.promoted, %5 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %44 = load i64, ptr %9, align 8
  %45 = and i64 %44, 1
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i64, ptr %12, align 8
  %49 = load i64, ptr %9, align 8
  %50 = sub nsw i64 %49, 2
  %51 = sdiv i64 %50, 2
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i64, ptr %12, align 8
  %55 = add nsw i64 %54, 1
  %56 = mul nsw i64 2, %55
  store i64 %56, ptr %12, align 8
  %57 = load ptr, ptr %7, align 8
  %58 = load i64, ptr %12, align 8
  %59 = sub nsw i64 %58, 1
  %60 = getelementptr inbounds double, ptr %57, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = load ptr, ptr %7, align 8
  %63 = load i64, ptr %8, align 8
  %64 = getelementptr inbounds double, ptr %62, i64 %63
  store double %61, ptr %64, align 8
  %65 = load i64, ptr %12, align 8
  %66 = sub nsw i64 %65, 1
  store i64 %66, ptr %8, align 8
  br label %67

67:                                               ; preds = %53, %47, %43
  %68 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %14, i32 0, i32 0
  %69 = load i8, ptr %68, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 %69)
  %70 = load ptr, ptr %7, align 8
  %71 = load i64, ptr %8, align 8
  %72 = load i64, ptr %11, align 8
  %73 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %70, i64 noundef %71, i64 noundef %72, double noundef %73, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
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
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  %.promoted1 = load i64, ptr %11, align 8
  br label %20

20:                                               ; preds = %29, %5
  %21 = phi i64 [ %34, %29 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %21, %29 ], [ %.promoted, %5 ]
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds double, ptr %17, i64 %21
  %26 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %18, i64 %21
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %19, i64 %22
  store double %31, ptr %32, align 8
  %33 = sub nsw i64 %21, 1
  %34 = sdiv i64 %33, 2
  br label %20, !llvm.loop !106

35:                                               ; preds = %27
  %.lcssa2 = phi i64 [ %21, %27 ]
  %.lcssa = phi i64 [ %22, %27 ]
  store i64 %.lcssa, ptr %7, align 8
  store i64 %.lcssa2, ptr %11, align 8
  %36 = load double, ptr %9, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  store double %36, ptr %39, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %11 = load double, ptr %10, align 8
  %12 = fcmp olt double %9, %11
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  store i8 %4, ptr %11, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %17)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %20, ptr noundef %21)
  br label %33

22:                                               ; preds = %15
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %24)
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
  %37 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %35, ptr noundef %36)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  br label %52

41:                                               ; preds = %34
  %42 = load ptr, ptr %9, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %42, ptr noundef %43)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %12

12:                                               ; preds = %27, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %27 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %28, %27 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi ptr [ %16, %13 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  %16 = getelementptr inbounds nuw double, ptr %14, i32 1
  br i1 %15, label %13, label %17, !llvm.loop !107

17:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %18 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %22, %19 ], [ %18, %17 ]
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %20)
  %22 = getelementptr inbounds double, ptr %20, i32 -1
  br i1 %21, label %19, label %23, !llvm.loop !108

23:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %20, %19 ]
  %24 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %23 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %26 = load ptr, ptr %6, align 8
  ret ptr %26

27:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %28 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %12, !llvm.loop !109
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
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %18, i32 0, i32 0
  store i8 %2, ptr %25, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %86

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %20, align 8
  %34 = load ptr, ptr %19, align 8
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %24, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %23, i32 0, i32 0
  %38 = load i8, ptr %37, align 1
  %39 = load ptr, ptr %19, align 8
  %40 = load ptr, ptr %19, align 8
  %.promoted = load ptr, ptr %21, align 8
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
  %41 = icmp ne ptr %.promoted, %33
  br i1 %41, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %42

42:                                               ; preds = %.lr.ph, %83
  %43 = phi ptr [ %.promoted, %.lr.ph ], [ %84, %83 ]
  %44 = phi double [ %.promoted1, %.lr.ph ], [ %82, %83 ]
  %45 = phi ptr [ %.promoted3, %.lr.ph ], [ %81, %83 ]
  %46 = phi ptr [ %.promoted5, %.lr.ph ], [ %80, %83 ]
  %47 = phi ptr [ %.promoted7, %.lr.ph ], [ %79, %83 ]
  %48 = phi ptr [ %.promoted9, %.lr.ph ], [ %78, %83 ]
  %49 = phi ptr [ %.promoted11, %.lr.ph ], [ %77, %83 ]
  %50 = phi ptr [ %.promoted13, %.lr.ph ], [ %76, %83 ]
  %51 = phi ptr [ %.promoted15, %.lr.ph ], [ %75, %83 ]
  %52 = phi ptr [ %.promoted17, %.lr.ph ], [ %74, %83 ]
  %53 = phi ptr [ %.promoted19, %.lr.ph ], [ %73, %83 ]
  %54 = phi ptr [ %.promoted21, %.lr.ph ], [ %72, %83 ]
  %55 = phi ptr [ %.promoted23, %.lr.ph ], [ %71, %83 ]
  %56 = phi ptr [ %.promoted25, %.lr.ph ], [ %70, %83 ]
  %57 = phi ptr [ %.promoted27, %.lr.ph ], [ %69, %83 ]
  %58 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %43, ptr noundef %34)
  br i1 %58, label %59, label %66

59:                                               ; preds = %42
  %60 = load double, ptr %43, align 8
  %61 = getelementptr inbounds double, ptr %43, i64 1
  %62 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %39)
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %43)
  store ptr %61, ptr %14, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store double %60, ptr %40, align 8
  br label %68

66:                                               ; preds = %42
  %67 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %36)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %43, i8 %38)
  br label %68

68:                                               ; preds = %66, %59
  %69 = phi ptr [ %57, %66 ], [ %65, %59 ]
  %70 = phi ptr [ %56, %66 ], [ %14, %59 ]
  %71 = phi ptr [ %55, %66 ], [ %64, %59 ]
  %72 = phi ptr [ %54, %66 ], [ %63, %59 ]
  %73 = phi ptr [ %53, %66 ], [ %62, %59 ]
  %74 = phi ptr [ %52, %66 ], [ %64, %59 ]
  %75 = phi ptr [ %51, %66 ], [ %63, %59 ]
  %76 = phi ptr [ %50, %66 ], [ %62, %59 ]
  %77 = phi ptr [ %49, %66 ], [ %63, %59 ]
  %78 = phi ptr [ %48, %66 ], [ %62, %59 ]
  %79 = phi ptr [ %47, %66 ], [ %61, %59 ]
  %80 = phi ptr [ %46, %66 ], [ %43, %59 ]
  %81 = phi ptr [ %45, %66 ], [ %39, %59 ]
  %82 = phi double [ %44, %66 ], [ %60, %59 ]
  br label %83

83:                                               ; preds = %68
  %84 = getelementptr inbounds nuw double, ptr %43, i32 1
  %85 = icmp ne ptr %84, %33
  br i1 %85, label %42, label %..loopexit_crit_edge, !llvm.loop !110

..loopexit_crit_edge:                             ; preds = %83
  %split = phi ptr [ %69, %83 ]
  %split29 = phi ptr [ %70, %83 ]
  %split30 = phi ptr [ %71, %83 ]
  %split31 = phi ptr [ %72, %83 ]
  %split32 = phi ptr [ %73, %83 ]
  %split33 = phi ptr [ %74, %83 ]
  %split34 = phi ptr [ %75, %83 ]
  %split35 = phi ptr [ %76, %83 ]
  %split36 = phi ptr [ %77, %83 ]
  %split37 = phi ptr [ %78, %83 ]
  %split38 = phi ptr [ %79, %83 ]
  %split39 = phi ptr [ %80, %83 ]
  %split40 = phi ptr [ %81, %83 ]
  %split41 = phi double [ %82, %83 ]
  %split42 = phi ptr [ %84, %83 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  %.lcssa28 = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted27, %30 ]
  %.lcssa26 = phi ptr [ %split29, %..loopexit_crit_edge ], [ %.promoted25, %30 ]
  %.lcssa24 = phi ptr [ %split30, %..loopexit_crit_edge ], [ %.promoted23, %30 ]
  %.lcssa22 = phi ptr [ %split31, %..loopexit_crit_edge ], [ %.promoted21, %30 ]
  %.lcssa20 = phi ptr [ %split32, %..loopexit_crit_edge ], [ %.promoted19, %30 ]
  %.lcssa18 = phi ptr [ %split33, %..loopexit_crit_edge ], [ %.promoted17, %30 ]
  %.lcssa16 = phi ptr [ %split34, %..loopexit_crit_edge ], [ %.promoted15, %30 ]
  %.lcssa14 = phi ptr [ %split35, %..loopexit_crit_edge ], [ %.promoted13, %30 ]
  %.lcssa12 = phi ptr [ %split36, %..loopexit_crit_edge ], [ %.promoted11, %30 ]
  %.lcssa10 = phi ptr [ %split37, %..loopexit_crit_edge ], [ %.promoted9, %30 ]
  %.lcssa8 = phi ptr [ %split38, %..loopexit_crit_edge ], [ %.promoted7, %30 ]
  %.lcssa6 = phi ptr [ %split39, %..loopexit_crit_edge ], [ %.promoted5, %30 ]
  %.lcssa4 = phi ptr [ %split40, %..loopexit_crit_edge ], [ %.promoted3, %30 ]
  %.lcssa2 = phi double [ %split41, %..loopexit_crit_edge ], [ %.promoted1, %30 ]
  %.lcssa = phi ptr [ %split42, %..loopexit_crit_edge ], [ %.promoted, %30 ]
  store ptr %.lcssa, ptr %21, align 8
  store double %.lcssa2, ptr %22, align 8
  store ptr %.lcssa4, ptr %15, align 8
  store ptr %.lcssa6, ptr %16, align 8
  store ptr %.lcssa8, ptr %17, align 8
  store ptr %.lcssa10, ptr %12, align 8
  store ptr %.lcssa12, ptr %13, align 8
  store ptr %.lcssa14, ptr %7, align 8
  store ptr %.lcssa16, ptr %8, align 8
  store ptr %.lcssa18, ptr %9, align 8
  store ptr %.lcssa20, ptr %4, align 8
  store ptr %.lcssa22, ptr %5, align 8
  store ptr %.lcssa24, ptr %6, align 8
  store ptr %.lcssa26, ptr %10, align 1
  store ptr %.lcssa28, ptr %11, align 1
  br label %86

86:                                               ; preds = %.loopexit, %29
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
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %10, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %8, i32 0, i32 0
  %16 = load i8, ptr %15, align 1
  %.promoted = load ptr, ptr %7, align 8
  %17 = icmp ne ptr %.promoted, %12
  br i1 %17, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %3
  br label %18

18:                                               ; preds = %.lr.ph, %21
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %22, %21 ]
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %14)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %19, i8 %16)
  br label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw double, ptr %19, i32 1
  %23 = icmp ne ptr %22, %12
  br i1 %23, label %18, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %21
  %split = phi ptr [ %22, %21 ]
  br label %24

24:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store ptr %.lcssa, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %3, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load double, ptr %8, align 8
  store double %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %12, ptr %6, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.promoted)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = phi ptr [ %.promoted, %.lr.ph ], [ %18, %14 ]
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %15, %14 ]
  %17 = load double, ptr %15, align 8
  store double %17, ptr %16, align 8
  %18 = getelementptr inbounds double, ptr %15, i32 -1
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %14
  %split = phi ptr [ %15, %14 ]
  %split3 = phi ptr [ %18, %14 ]
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %2 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  %21 = load double, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  store double %21, ptr %22, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %0) #5 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %3, i32 0, i32 0
  store i8 %0, ptr %4, align 1
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %2, i32 0, i32 0
  %6 = load i8, ptr %5, align 1
  ret i8 %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load double, ptr %10, align 8
  %12 = fcmp olt double %9, %11
  ret i1 %12
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
