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
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { ptr }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { ptr }
%"struct.std::random_access_iterator_tag" = type { i8 }
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
  br label %10

10:                                               ; preds = %28, %5
  %11 = phi i32 [ %27, %28 ], [ 12, %5 ]
  %12 = phi i32 [ %23, %28 ], [ undef, %5 ]
  %13 = phi i32 [ %29, %28 ], [ 0, %5 ]
  %14 = load i32, ptr @current_test, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load ptr, ptr @results, align 8
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds %struct.one_result, ptr %17, i64 %18
  %20 = getelementptr inbounds nuw %struct.one_result, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = call i64 @strlen(ptr noundef %21) #15
  %23 = trunc i64 %22 to i32
  %24 = icmp sgt i32 %23, %11
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %16
  %27 = phi i32 [ %23, %25 ], [ %11, %16 ]
  br label %28

28:                                               ; preds = %26
  %29 = add nsw i32 %13, 1
  br label %10, !llvm.loop !7

30:                                               ; preds = %10
  %.lcssa4 = phi i32 [ %11, %10 ]
  %.lcssa2 = phi i32 [ %12, %10 ]
  %.lcssa = phi i32 [ %13, %10 ]
  %31 = sub nsw i32 %.lcssa4, 12
  %32 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %31, ptr noundef @.str.2)
  %33 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %.lcssa4, ptr noundef @.str.2)
  %34 = sext i32 %.lcssa4 to i64
  br label %35

35:                                               ; preds = %75, %30
  %36 = phi i32 [ %76, %75 ], [ 0, %30 ]
  %37 = load i32, ptr @current_test, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load ptr, ptr @results, align 8
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds %struct.one_result, ptr %40, i64 %41
  %43 = getelementptr inbounds nuw %struct.one_result, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = call i64 @strlen(ptr noundef %44) #15
  %46 = sub i64 %34, %45
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr @results, align 8
  %49 = sext i32 %36 to i64
  %50 = getelementptr inbounds %struct.one_result, ptr %48, i64 %49
  %51 = getelementptr inbounds nuw %struct.one_result, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr @results, align 8
  %54 = sext i32 %36 to i64
  %55 = getelementptr inbounds %struct.one_result, ptr %53, i64 %54
  %56 = getelementptr inbounds nuw %struct.one_result, ptr %55, i32 0, i32 0
  %57 = load double, ptr %56, align 8
  %58 = load ptr, ptr @results, align 8
  %59 = sext i32 %36 to i64
  %60 = getelementptr inbounds %struct.one_result, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw %struct.one_result, ptr %60, i32 0, i32 0
  %62 = load double, ptr %61, align 8
  %63 = fdiv double %9, %62
  %64 = load ptr, ptr @results, align 8
  %65 = sext i32 %36 to i64
  %66 = getelementptr inbounds %struct.one_result, ptr %64, i64 %65
  %67 = getelementptr inbounds nuw %struct.one_result, ptr %66, i32 0, i32 0
  %68 = load double, ptr %67, align 8
  %69 = load ptr, ptr @results, align 8
  %70 = getelementptr inbounds %struct.one_result, ptr %69, i64 0
  %71 = getelementptr inbounds nuw %struct.one_result, ptr %70, i32 0, i32 0
  %72 = load double, ptr %71, align 8
  %73 = fdiv double %68, %72
  %74 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %36, i32 noundef %47, ptr noundef @.str.5, ptr noundef %52, double noundef %57, double noundef %63, double noundef %73)
  br label %75

75:                                               ; preds = %39
  %76 = add nsw i32 %36, 1
  br label %35, !llvm.loop !9

77:                                               ; preds = %35
  %.lcssa6 = phi i32 [ %36, %35 ]
  %78 = load i32, ptr @current_test, align 4
  %79 = load ptr, ptr @results, align 8
  br label %80

80:                                               ; preds = %90, %77
  %81 = phi double [ %89, %90 ], [ 0.000000e+00, %77 ]
  %82 = phi i32 [ %91, %90 ], [ 0, %77 ]
  %83 = icmp slt i32 %82, %78
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds %struct.one_result, ptr %79, i64 %85
  %87 = getelementptr inbounds nuw %struct.one_result, ptr %86, i32 0, i32 0
  %88 = load double, ptr %87, align 8
  %89 = fadd double %81, %88
  br label %90

90:                                               ; preds = %84
  %91 = add nsw i32 %82, 1
  br label %80, !llvm.loop !10

92:                                               ; preds = %80
  %.lcssa10 = phi double [ %81, %80 ]
  %.lcssa8 = phi i32 [ %82, %80 ]
  %93 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %.lcssa10)
  %94 = load i32, ptr @current_test, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = icmp ne i32 %4, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %117, %98
  %100 = phi double [ %116, %117 ], [ 0.000000e+00, %98 ]
  %101 = phi i32 [ %118, %117 ], [ 1, %98 ]
  %102 = load i32, ptr @current_test, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load ptr, ptr @results, align 8
  %106 = sext i32 %101 to i64
  %107 = getelementptr inbounds %struct.one_result, ptr %105, i64 %106
  %108 = getelementptr inbounds nuw %struct.one_result, ptr %107, i32 0, i32 0
  %109 = load double, ptr %108, align 8
  %110 = load ptr, ptr @results, align 8
  %111 = getelementptr inbounds %struct.one_result, ptr %110, i64 0
  %112 = getelementptr inbounds nuw %struct.one_result, ptr %111, i32 0, i32 0
  %113 = load double, ptr %112, align 8
  %114 = fdiv double %109, %113
  %115 = call double @log(double noundef %114) #15
  %116 = fadd double %100, %115
  br label %117

117:                                              ; preds = %104
  %118 = add nsw i32 %101, 1
  br label %99, !llvm.loop !11

119:                                              ; preds = %99
  %.lcssa14 = phi double [ %100, %99 ]
  %.lcssa12 = phi i32 [ %101, %99 ]
  %120 = load i32, ptr @current_test, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %.lcssa14, %122
  %124 = call double @exp(double noundef %123) #15
  %125 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %124)
  br label %126

126:                                              ; preds = %119, %96, %92
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

3:                                                ; preds = %21, %2
  %4 = phi i32 [ %20, %21 ], [ 12, %2 ]
  %5 = phi i32 [ %16, %21 ], [ undef, %2 ]
  %6 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %7 = load i32, ptr @current_test, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = load ptr, ptr @results, align 8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds %struct.one_result, ptr %10, i64 %11
  %13 = getelementptr inbounds nuw %struct.one_result, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 @strlen(ptr noundef %14) #15
  %16 = trunc i64 %15 to i32
  %17 = icmp sgt i32 %16, %4
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %16, %18 ], [ %4, %9 ]
  br label %21

21:                                               ; preds = %19
  %22 = add nsw i32 %6, 1
  br label %3, !llvm.loop !12

23:                                               ; preds = %3
  %.lcssa4 = phi i32 [ %4, %3 ]
  %.lcssa2 = phi i32 [ %5, %3 ]
  %.lcssa = phi i32 [ %6, %3 ]
  %24 = sub nsw i32 %.lcssa4, 12
  %25 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %24, ptr noundef @.str.2)
  %26 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %.lcssa4, ptr noundef @.str.2)
  %27 = sext i32 %.lcssa4 to i64
  br label %28

28:                                               ; preds = %52, %23
  %29 = phi i32 [ %53, %52 ], [ 0, %23 ]
  %30 = load i32, ptr @current_test, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load ptr, ptr @results, align 8
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds %struct.one_result, ptr %33, i64 %34
  %36 = getelementptr inbounds nuw %struct.one_result, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = call i64 @strlen(ptr noundef %37) #15
  %39 = sub i64 %27, %38
  %40 = trunc i64 %39 to i32
  %41 = load ptr, ptr @results, align 8
  %42 = sext i32 %29 to i64
  %43 = getelementptr inbounds %struct.one_result, ptr %41, i64 %42
  %44 = getelementptr inbounds nuw %struct.one_result, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr @results, align 8
  %47 = sext i32 %29 to i64
  %48 = getelementptr inbounds %struct.one_result, ptr %46, i64 %47
  %49 = getelementptr inbounds nuw %struct.one_result, ptr %48, i32 0, i32 0
  %50 = load double, ptr %49, align 8
  %51 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %29, i32 noundef %40, ptr noundef @.str.5, ptr noundef %45, double noundef %50)
  br label %52

52:                                               ; preds = %32
  %53 = add nsw i32 %29, 1
  br label %28, !llvm.loop !13

54:                                               ; preds = %28
  %.lcssa6 = phi i32 [ %29, %28 ]
  %55 = load i32, ptr @current_test, align 4
  %56 = load ptr, ptr @results, align 8
  br label %57

57:                                               ; preds = %67, %54
  %58 = phi double [ %66, %67 ], [ 0.000000e+00, %54 ]
  %59 = phi i32 [ %68, %67 ], [ 0, %54 ]
  %60 = icmp slt i32 %59, %55
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds %struct.one_result, ptr %56, i64 %62
  %64 = getelementptr inbounds nuw %struct.one_result, ptr %63, i32 0, i32 0
  %65 = load double, ptr %64, align 8
  %66 = fadd double %58, %65
  br label %67

67:                                               ; preds = %61
  %68 = add nsw i32 %59, 1
  br label %57, !llvm.loop !14

69:                                               ; preds = %57
  %.lcssa10 = phi double [ %58, %57 ]
  %.lcssa8 = phi i32 [ %59, %57 ]
  %70 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %.lcssa10)
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
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi double [ %33, %32 ], [ undef, %9 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %32 ], [ %0, %9 ]
  %.lcssa4 = phi ptr [ %.lcssa, %32 ], [ %1, %9 ]
  br label %13

13:                                               ; preds = %18, %11
  %14 = phi ptr [ %15, %18 ], [ %.lcssa4, %11 ]
  %15 = getelementptr inbounds double, ptr %14, i32 -1
  %16 = load double, ptr %15, align 8
  %17 = call noundef zeroext i1 %2(double noundef %10, double noundef %16)
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %13, !llvm.loop !15

19:                                               ; preds = %13
  %.lcssa = phi ptr [ %15, %13 ]
  %20 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  %.lcssa8 = phi double [ %12, %19 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %19 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %19 ]
  br label %35

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %27, %22
  %24 = phi ptr [ %28, %27 ], [ %.lcssa26, %22 ]
  %25 = load double, ptr %24, align 8
  %26 = call noundef zeroext i1 %2(double noundef %25, double noundef %10)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw double, ptr %24, i32 1
  br label %23, !llvm.loop !16

29:                                               ; preds = %23
  %.lcssa2 = phi ptr [ %24, %23 ]
  %30 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  %.lcssa9 = phi double [ %12, %29 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %29 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %29 ]
  br label %35

32:                                               ; preds = %29
  %33 = load double, ptr %.lcssa, align 8
  %34 = load double, ptr %.lcssa2, align 8
  store double %34, ptr %.lcssa, align 8
  store double %33, ptr %.lcssa2, align 8
  br label %11, !llvm.loop !17

35:                                               ; preds = %31, %21
  %.0 = phi ptr [ %.lcssa.lcssa5, %31 ], [ %.lcssa.lcssa, %21 ]
  %36 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %36, ptr noundef %2)
  %37 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %37, ptr noundef %1, ptr noundef %2)
  br label %38

38:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi double [ %33, %32 ], [ undef, %9 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %32 ], [ %0, %9 ]
  %.lcssa4 = phi ptr [ %.lcssa, %32 ], [ %1, %9 ]
  br label %13

13:                                               ; preds = %18, %11
  %14 = phi ptr [ %15, %18 ], [ %.lcssa4, %11 ]
  %15 = getelementptr inbounds double, ptr %14, i32 -1
  %16 = load double, ptr %15, align 8
  %17 = call noundef zeroext i1 %2(double noundef %10, double noundef %16)
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %13, !llvm.loop !18

19:                                               ; preds = %13
  %.lcssa = phi ptr [ %15, %13 ]
  %20 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  %.lcssa8 = phi double [ %12, %19 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %19 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %19 ]
  br label %35

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %27, %22
  %24 = phi ptr [ %28, %27 ], [ %.lcssa26, %22 ]
  %25 = load double, ptr %24, align 8
  %26 = call noundef zeroext i1 %2(double noundef %25, double noundef %10)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw double, ptr %24, i32 1
  br label %23, !llvm.loop !19

29:                                               ; preds = %23
  %.lcssa2 = phi ptr [ %24, %23 ]
  %30 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  %.lcssa9 = phi double [ %12, %29 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %29 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %29 ]
  br label %35

32:                                               ; preds = %29
  %33 = load double, ptr %.lcssa, align 8
  %34 = load double, ptr %.lcssa2, align 8
  store double %34, ptr %.lcssa, align 8
  store double %33, ptr %.lcssa2, align 8
  br label %11, !llvm.loop !20

35:                                               ; preds = %31, %21
  %.0 = phi ptr [ %.lcssa.lcssa5, %31 ], [ %.lcssa.lcssa, %21 ]
  %36 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %36, ptr noundef %2)
  %37 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %37, ptr noundef %1, ptr noundef %2)
  br label %38

38:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = alloca %struct.less_than_functor, align 1
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca %struct.inline_less_than_functor, align 1
  %6 = alloca %struct.inline_less_than_functor, align 1
  %7 = alloca %"struct.std::less", align 1
  %8 = alloca %"struct.std::less", align 1
  %9 = icmp slt i32 1, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @atoi(ptr noundef %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 300, %14 ]
  %17 = icmp slt i32 2, %0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds ptr, ptr %1, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @atoi(ptr noundef %20)
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 10000, %22 ]
  %25 = add nsw i32 %24, 123
  call void @srand(i32 noundef %25)
  %26 = sext i32 %24 to i64
  %27 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %26, i64 8)
  %28 = extractvalue { i64, i1 } %27, 1
  %29 = extractvalue { i64, i1 } %27, 0
  %30 = select i1 %28, i64 -1, i64 %29
  %31 = call noalias noundef nonnull ptr @_Znay(i64 noundef %30) #16
  br label %32

32:                                               ; preds = %40, %23
  %33 = phi i32 [ %41, %40 ], [ 0, %23 ]
  %34 = icmp slt i32 %33, %24
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = call i32 @rand()
  %37 = sitofp i32 %36 to double
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds double, ptr %31, i64 %38
  store double %37, ptr %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = add nsw i32 %33, 1
  br label %32, !llvm.loop !21

42:                                               ; preds = %32
  %.lcssa = phi i32 [ %33, %32 ]
  %43 = sext i32 %24 to i64
  %44 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %43, i64 8)
  %45 = extractvalue { i64, i1 } %44, 1
  %46 = extractvalue { i64, i1 } %44, 0
  %47 = select i1 %45, i64 -1, i64 %46
  %48 = call noalias noundef nonnull ptr @_Znay(i64 noundef %47) #16
  %49 = sext i32 %24 to i64
  %50 = getelementptr inbounds double, ptr %31, i64 %49
  %51 = sext i32 %24 to i64
  %52 = sext i32 %24 to i64
  %53 = getelementptr inbounds double, ptr %48, i64 %52
  br label %54

54:                                               ; preds = %59, %42
  %55 = phi i32 [ %60, %59 ], [ 0, %42 ]
  %56 = icmp slt i32 %55, %16
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %50, ptr noundef %48)
  call void @qsort(ptr noundef %48, i64 noundef %51, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %53)
  br label %59

59:                                               ; preds = %57
  %60 = add nsw i32 %55, 1
  br label %54, !llvm.loop !22

61:                                               ; preds = %54
  %.lcssa2 = phi i32 [ %55, %54 ]
  %62 = sext i32 %24 to i64
  %63 = getelementptr inbounds double, ptr %31, i64 %62
  %64 = sext i32 %24 to i64
  %65 = getelementptr inbounds double, ptr %48, i64 %64
  %66 = sext i32 %24 to i64
  %67 = getelementptr inbounds double, ptr %48, i64 %66
  br label %68

68:                                               ; preds = %73, %61
  %69 = phi i32 [ %74, %73 ], [ 0, %61 ]
  %70 = icmp slt i32 %69, %16
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %63, ptr noundef %48)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %48, ptr noundef %65, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %67)
  br label %73

73:                                               ; preds = %71
  %74 = add nsw i32 %69, 1
  br label %68, !llvm.loop !23

75:                                               ; preds = %68
  %.lcssa4 = phi i32 [ %69, %68 ]
  %76 = sext i32 %24 to i64
  %77 = getelementptr inbounds double, ptr %31, i64 %76
  %78 = sext i32 %24 to i64
  %79 = getelementptr inbounds double, ptr %48, i64 %78
  %80 = sext i32 %24 to i64
  %81 = getelementptr inbounds double, ptr %48, i64 %80
  br label %82

82:                                               ; preds = %87, %75
  %83 = phi i32 [ %88, %87 ], [ 0, %75 ]
  %84 = icmp slt i32 %83, %16
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %77, ptr noundef %48)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %48, ptr noundef %79, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %81)
  br label %87

87:                                               ; preds = %85
  %88 = add nsw i32 %83, 1
  br label %82, !llvm.loop !24

89:                                               ; preds = %82
  %.lcssa6 = phi i32 [ %83, %82 ]
  %90 = sext i32 %24 to i64
  %91 = getelementptr inbounds double, ptr %31, i64 %90
  %92 = sext i32 %24 to i64
  %93 = getelementptr inbounds double, ptr %48, i64 %92
  %94 = sext i32 %24 to i64
  %95 = getelementptr inbounds double, ptr %48, i64 %94
  br label %96

96:                                               ; preds = %101, %89
  %97 = phi i32 [ %102, %101 ], [ 0, %89 ]
  %98 = icmp slt i32 %97, %16
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %91, ptr noundef %48)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %48, ptr noundef %93)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %95)
  br label %101

101:                                              ; preds = %99
  %102 = add nsw i32 %97, 1
  br label %96, !llvm.loop !25

103:                                              ; preds = %96
  %.lcssa8 = phi i32 [ %97, %96 ]
  %104 = sext i32 %24 to i64
  %105 = getelementptr inbounds double, ptr %31, i64 %104
  %106 = sext i32 %24 to i64
  %107 = getelementptr inbounds double, ptr %48, i64 %106
  %108 = sext i32 %24 to i64
  %109 = getelementptr inbounds double, ptr %48, i64 %108
  br label %110

110:                                              ; preds = %115, %103
  %111 = phi i32 [ %116, %115 ], [ 0, %103 ]
  %112 = icmp slt i32 %111, %16
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %105, ptr noundef %48)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %48, ptr noundef %107, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %109)
  br label %115

115:                                              ; preds = %113
  %116 = add nsw i32 %111, 1
  br label %110, !llvm.loop !26

117:                                              ; preds = %110
  %.lcssa10 = phi i32 [ %111, %110 ]
  %118 = sext i32 %24 to i64
  %119 = getelementptr inbounds double, ptr %31, i64 %118
  %120 = sext i32 %24 to i64
  %121 = getelementptr inbounds double, ptr %48, i64 %120
  %122 = getelementptr inbounds nuw %struct.less_than_functor, ptr %3, i32 0, i32 0
  %123 = load i8, ptr %122, align 1
  %124 = sext i32 %24 to i64
  %125 = getelementptr inbounds double, ptr %48, i64 %124
  br label %126

126:                                              ; preds = %131, %117
  %127 = phi i32 [ %132, %131 ], [ 0, %117 ]
  %128 = icmp slt i32 %127, %16
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %119, ptr noundef %48)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %48, ptr noundef %121, i8 %123)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %125)
  br label %131

131:                                              ; preds = %129
  %132 = add nsw i32 %127, 1
  br label %126, !llvm.loop !27

133:                                              ; preds = %126
  %.lcssa12 = phi i32 [ %127, %126 ]
  %134 = sext i32 %24 to i64
  %135 = getelementptr inbounds double, ptr %48, i64 %134
  %136 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  %137 = load i8, ptr %136, align 1
  %138 = sext i32 %24 to i64
  %139 = getelementptr inbounds double, ptr %48, i64 %138
  %140 = sext i32 %24 to i64
  %141 = getelementptr inbounds double, ptr %31, i64 %140
  br label %142

142:                                              ; preds = %147, %133
  %143 = phi i32 [ %148, %147 ], [ 0, %133 ]
  %144 = icmp slt i32 %143, %16
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %48, ptr noundef %135, i8 %137)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %139)
  %146 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %141, ptr noundef %48)
  br label %147

147:                                              ; preds = %145
  %148 = add nsw i32 %143, 1
  br label %142, !llvm.loop !28

149:                                              ; preds = %142
  %.lcssa14 = phi i32 [ %143, %142 ]
  %150 = sext i32 %24 to i64
  %151 = getelementptr inbounds double, ptr %31, i64 %150
  %152 = sext i32 %24 to i64
  %153 = getelementptr inbounds double, ptr %48, i64 %152
  %154 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %5, i32 0, i32 0
  %155 = load i8, ptr %154, align 1
  %156 = sext i32 %24 to i64
  %157 = getelementptr inbounds double, ptr %48, i64 %156
  br label %158

158:                                              ; preds = %163, %149
  %159 = phi i32 [ %164, %163 ], [ 0, %149 ]
  %160 = icmp slt i32 %159, %16
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %151, ptr noundef %48)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %48, ptr noundef %153, i8 %155)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %157)
  br label %163

163:                                              ; preds = %161
  %164 = add nsw i32 %159, 1
  br label %158, !llvm.loop !29

165:                                              ; preds = %158
  %.lcssa16 = phi i32 [ %159, %158 ]
  %166 = sext i32 %24 to i64
  %167 = getelementptr inbounds double, ptr %31, i64 %166
  %168 = sext i32 %24 to i64
  %169 = getelementptr inbounds double, ptr %48, i64 %168
  %170 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %6, i32 0, i32 0
  %171 = load i8, ptr %170, align 1
  %172 = sext i32 %24 to i64
  %173 = getelementptr inbounds double, ptr %48, i64 %172
  br label %174

174:                                              ; preds = %179, %165
  %175 = phi i32 [ %180, %179 ], [ 0, %165 ]
  %176 = icmp slt i32 %175, %16
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %167, ptr noundef %48)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %48, ptr noundef %169, i8 %171)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %173)
  br label %179

179:                                              ; preds = %177
  %180 = add nsw i32 %175, 1
  br label %174, !llvm.loop !30

181:                                              ; preds = %174
  %.lcssa18 = phi i32 [ %175, %174 ]
  %182 = sext i32 %24 to i64
  %183 = getelementptr inbounds double, ptr %31, i64 %182
  %184 = sext i32 %24 to i64
  %185 = getelementptr inbounds double, ptr %48, i64 %184
  %186 = getelementptr inbounds nuw %"struct.std::less", ptr %7, i32 0, i32 0
  %187 = load i8, ptr %186, align 1
  %188 = sext i32 %24 to i64
  %189 = getelementptr inbounds double, ptr %48, i64 %188
  br label %190

190:                                              ; preds = %195, %181
  %191 = phi i32 [ %196, %195 ], [ 0, %181 ]
  %192 = icmp slt i32 %191, %16
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %183, ptr noundef %48)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %48, ptr noundef %185, i8 %187)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %189)
  br label %195

195:                                              ; preds = %193
  %196 = add nsw i32 %191, 1
  br label %190, !llvm.loop !31

197:                                              ; preds = %190
  %.lcssa20 = phi i32 [ %191, %190 ]
  %198 = sext i32 %24 to i64
  %199 = getelementptr inbounds double, ptr %31, i64 %198
  %200 = sext i32 %24 to i64
  %201 = getelementptr inbounds double, ptr %48, i64 %200
  %202 = getelementptr inbounds nuw %"struct.std::less", ptr %8, i32 0, i32 0
  %203 = load i8, ptr %202, align 1
  %204 = sext i32 %24 to i64
  %205 = getelementptr inbounds double, ptr %48, i64 %204
  br label %206

206:                                              ; preds = %211, %197
  %207 = phi i32 [ %212, %211 ], [ 0, %197 ]
  %208 = icmp slt i32 %207, %16
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %199, ptr noundef %48)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %48, ptr noundef %201, i8 %203)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %205)
  br label %211

211:                                              ; preds = %209
  %212 = add nsw i32 %207, 1
  br label %206, !llvm.loop !32

213:                                              ; preds = %206
  %.lcssa22 = phi i32 [ %207, %206 ]
  %214 = sext i32 %24 to i64
  %215 = getelementptr inbounds double, ptr %31, i64 %214
  %216 = sext i32 %24 to i64
  %217 = getelementptr inbounds double, ptr %48, i64 %216
  %218 = sext i32 %24 to i64
  %219 = getelementptr inbounds double, ptr %48, i64 %218
  br label %220

220:                                              ; preds = %225, %213
  %221 = phi i32 [ %226, %225 ], [ 0, %213 ]
  %222 = icmp slt i32 %221, %16
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %215, ptr noundef %48)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %48, ptr noundef %217)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %219)
  br label %225

225:                                              ; preds = %223
  %226 = add nsw i32 %221, 1
  br label %220, !llvm.loop !33

227:                                              ; preds = %220
  %.lcssa24 = phi i32 [ %221, %220 ]
  %228 = sext i32 %24 to i64
  %229 = getelementptr inbounds double, ptr %31, i64 %228
  %230 = sext i32 %24 to i64
  %231 = getelementptr inbounds double, ptr %48, i64 %230
  %232 = sext i32 %24 to i64
  %233 = getelementptr inbounds double, ptr %48, i64 %232
  br label %234

234:                                              ; preds = %239, %227
  %235 = phi i32 [ %240, %239 ], [ 0, %227 ]
  %236 = icmp slt i32 %235, %16
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %229, ptr noundef %48)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %48, ptr noundef %231)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %233)
  br label %239

239:                                              ; preds = %237
  %240 = add nsw i32 %235, 1
  br label %234, !llvm.loop !34

241:                                              ; preds = %234
  %.lcssa26 = phi i32 [ %235, %234 ]
  %242 = icmp eq ptr %48, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %241
  call void @_ZdaPv(ptr noundef %48) #17
  br label %244

244:                                              ; preds = %243, %241
  %245 = icmp eq ptr %31, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %244
  call void @_ZdaPv(ptr noundef %31) #17
  br label %247

247:                                              ; preds = %246, %244
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
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi ptr [ %11, %17 ], [ %0, %2 ]
  %6 = phi ptr [ %9, %17 ], [ %3, %2 ]
  %7 = icmp ne ptr %6, %1
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw double, ptr %6, i32 1
  %10 = load double, ptr %6, align 8
  %11 = getelementptr inbounds nuw double, ptr %5, i32 1
  %12 = load double, ptr %5, align 8
  %13 = fcmp olt double %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %.lcssa4 = phi ptr [ %11, %8 ]
  %.lcssa1 = phi ptr [ %9, %8 ]
  %15 = load i32, ptr @current_test, align 4
  %16 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %15)
  br label %18

17:                                               ; preds = %8
  br label %4, !llvm.loop !35

.loopexit:                                        ; preds = %4
  %.lcssa3 = phi ptr [ %5, %4 ]
  %.lcssa = phi ptr [ %6, %4 ]
  br label %18

18:                                               ; preds = %.loopexit, %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %31, %8
  %11 = phi double [ %32, %31 ], [ undef, %8 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %31 ], [ %0, %8 ]
  %.lcssa4 = phi ptr [ %.lcssa, %31 ], [ %1, %8 ]
  br label %12

12:                                               ; preds = %17, %10
  %13 = phi ptr [ %14, %17 ], [ %.lcssa4, %10 ]
  %14 = getelementptr inbounds double, ptr %13, i32 -1
  %15 = load double, ptr %14, align 8
  %16 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %9, double noundef %15)
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %12, !llvm.loop !36

18:                                               ; preds = %12
  %.lcssa = phi ptr [ %14, %12 ]
  %19 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  %.lcssa8 = phi double [ %11, %18 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %18 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %18 ]
  br label %34

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi ptr [ %27, %26 ], [ %.lcssa26, %21 ]
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %24, double noundef %9)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw double, ptr %23, i32 1
  br label %22, !llvm.loop !37

28:                                               ; preds = %22
  %.lcssa2 = phi ptr [ %23, %22 ]
  %29 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  %.lcssa9 = phi double [ %11, %28 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %28 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %28 ]
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %.lcssa, align 8
  %33 = load double, ptr %.lcssa2, align 8
  store double %33, ptr %.lcssa, align 8
  store double %32, ptr %.lcssa2, align 8
  br label %10, !llvm.loop !38

34:                                               ; preds = %30, %20
  %.0 = phi ptr [ %.lcssa.lcssa5, %30 ], [ %.lcssa.lcssa, %20 ]
  %35 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %35, ptr noundef @_Z19less_than_function2dd)
  %36 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %36, ptr noundef %1, ptr noundef @_Z19less_than_function2dd)
  br label %37

37:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %2)
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %7 = inttoptr i64 %5 to ptr
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %10)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca double, align 8
  %6 = alloca %struct.less_than_functor, align 1
  %7 = alloca %struct.less_than_functor, align 1
  %8 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %34, %14
  %.03 = phi ptr [ %0, %14 ], [ %.lcssa2, %34 ]
  %.0 = phi ptr [ %1, %14 ], [ %.lcssa, %34 ]
  br label %17

17:                                               ; preds = %21, %16
  %18 = phi ptr [ %19, %21 ], [ %.0, %16 ]
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  %20 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %19)
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17, !llvm.loop !39

22:                                               ; preds = %17
  %.lcssa = phi ptr [ %19, %17 ]
  %23 = icmp ult ptr %.03, %.lcssa
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  br label %37

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %29, %25
  %27 = phi ptr [ %30, %29 ], [ %.03, %25 ]
  %28 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw double, ptr %27, i32 1
  br label %26, !llvm.loop !40

31:                                               ; preds = %26
  %.lcssa2 = phi ptr [ %27, %26 ]
  %32 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  br label %37

34:                                               ; preds = %31
  %35 = load double, ptr %.lcssa, align 8
  %36 = load double, ptr %.lcssa2, align 8
  store double %36, ptr %.lcssa, align 8
  store double %35, ptr %.lcssa2, align 8
  br label %16, !llvm.loop !41

37:                                               ; preds = %33, %24
  %38 = getelementptr inbounds double, ptr %.lcssa, i64 1
  %39 = getelementptr inbounds nuw %struct.less_than_functor, ptr %6, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %38, i8 %40)
  %41 = getelementptr inbounds double, ptr %.lcssa, i64 1
  %42 = getelementptr inbounds nuw %struct.less_than_functor, ptr %7, i32 0, i32 0
  %43 = load i8, ptr %42, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %41, ptr noundef %1, i8 %43)
  br label %44

44:                                               ; preds = %37, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %struct.less_than_functor, align 1
  %7 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds nuw %struct.less_than_functor, ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %9)
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %13)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = alloca double, align 8
  %6 = alloca %struct.inline_less_than_functor, align 1
  %7 = alloca %struct.inline_less_than_functor, align 1
  %8 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %34, %14
  %.03 = phi ptr [ %0, %14 ], [ %.lcssa2, %34 ]
  %.0 = phi ptr [ %1, %14 ], [ %.lcssa, %34 ]
  br label %17

17:                                               ; preds = %21, %16
  %18 = phi ptr [ %19, %21 ], [ %.0, %16 ]
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  %20 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %19)
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17, !llvm.loop !42

22:                                               ; preds = %17
  %.lcssa = phi ptr [ %19, %17 ]
  %23 = icmp ult ptr %.03, %.lcssa
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  br label %37

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %29, %25
  %27 = phi ptr [ %30, %29 ], [ %.03, %25 ]
  %28 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw double, ptr %27, i32 1
  br label %26, !llvm.loop !43

31:                                               ; preds = %26
  %.lcssa2 = phi ptr [ %27, %26 ]
  %32 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  br label %37

34:                                               ; preds = %31
  %35 = load double, ptr %.lcssa, align 8
  %36 = load double, ptr %.lcssa2, align 8
  store double %36, ptr %.lcssa, align 8
  store double %35, ptr %.lcssa2, align 8
  br label %16, !llvm.loop !44

37:                                               ; preds = %33, %24
  %38 = getelementptr inbounds double, ptr %.lcssa, i64 1
  %39 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %6, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %38, i8 %40)
  %41 = getelementptr inbounds double, ptr %.lcssa, i64 1
  %42 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %7, i32 0, i32 0
  %43 = load i8, ptr %42, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %41, ptr noundef %1, i8 %43)
  br label %44

44:                                               ; preds = %37, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %struct.inline_less_than_functor, align 1
  %7 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %9)
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %13)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca double, align 8
  %6 = alloca %"struct.std::less", align 1
  %7 = alloca %"struct.std::less", align 1
  %8 = getelementptr inbounds nuw %"struct.std::less", ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %34, %14
  %.03 = phi ptr [ %0, %14 ], [ %.lcssa2, %34 ]
  %.0 = phi ptr [ %1, %14 ], [ %.lcssa, %34 ]
  br label %17

17:                                               ; preds = %21, %16
  %18 = phi ptr [ %19, %21 ], [ %.0, %16 ]
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  %20 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %19)
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17, !llvm.loop !45

22:                                               ; preds = %17
  %.lcssa = phi ptr [ %19, %17 ]
  %23 = icmp ult ptr %.03, %.lcssa
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  br label %37

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %29, %25
  %27 = phi ptr [ %30, %29 ], [ %.03, %25 ]
  %28 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw double, ptr %27, i32 1
  br label %26, !llvm.loop !46

31:                                               ; preds = %26
  %.lcssa2 = phi ptr [ %27, %26 ]
  %32 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  br label %37

34:                                               ; preds = %31
  %35 = load double, ptr %.lcssa, align 8
  %36 = load double, ptr %.lcssa2, align 8
  store double %36, ptr %.lcssa, align 8
  store double %35, ptr %.lcssa2, align 8
  br label %16, !llvm.loop !47

37:                                               ; preds = %33, %24
  %38 = getelementptr inbounds double, ptr %.lcssa, i64 1
  %39 = getelementptr inbounds nuw %"struct.std::less", ptr %6, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %38, i8 %40)
  %41 = getelementptr inbounds double, ptr %.lcssa, i64 1
  %42 = getelementptr inbounds nuw %"struct.std::less", ptr %7, i32 0, i32 0
  %43 = load i8, ptr %42, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %41, ptr noundef %1, i8 %43)
  br label %44

44:                                               ; preds = %37, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.std::less", align 1
  %7 = getelementptr inbounds nuw %"struct.std::less", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds nuw %"struct.std::less", ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %9)
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %13)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %31, %8
  %11 = phi double [ %32, %31 ], [ undef, %8 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %31 ], [ %0, %8 ]
  %.lcssa4 = phi ptr [ %.lcssa, %31 ], [ %1, %8 ]
  br label %12

12:                                               ; preds = %17, %10
  %13 = phi ptr [ %14, %17 ], [ %.lcssa4, %10 ]
  %14 = getelementptr inbounds double, ptr %13, i32 -1
  %15 = load double, ptr %14, align 8
  %16 = fcmp olt double %9, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %12, !llvm.loop !48

18:                                               ; preds = %12
  %.lcssa = phi ptr [ %14, %12 ]
  %19 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  %.lcssa8 = phi double [ %11, %18 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %18 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %18 ]
  br label %34

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi ptr [ %27, %26 ], [ %.lcssa26, %21 ]
  %24 = load double, ptr %23, align 8
  %25 = fcmp olt double %24, %9
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw double, ptr %23, i32 1
  br label %22, !llvm.loop !49

28:                                               ; preds = %22
  %.lcssa2 = phi ptr [ %23, %22 ]
  %29 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  %.lcssa9 = phi double [ %11, %28 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %28 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %28 ]
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %.lcssa, align 8
  %33 = load double, ptr %.lcssa2, align 8
  store double %33, ptr %.lcssa, align 8
  store double %32, ptr %.lcssa2, align 8
  br label %10, !llvm.loop !50

34:                                               ; preds = %30, %20
  %.0 = phi ptr [ %.lcssa.lcssa5, %30 ], [ %.lcssa.lcssa, %20 ]
  %35 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %35)
  %36 = getelementptr inbounds double, ptr %.0, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %36, ptr noundef %1)
  br label %37

37:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = call i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %3, i32 0, i32 0
  %6 = load i8, ptr %5, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %6)
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %8 = inttoptr i64 %2 to ptr
  store ptr %8, ptr %7, align 8
  %9 = icmp ne ptr %0, %1
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %14)
  %16 = mul nsw i64 %15, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %4, i64 8, i1 false)
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %16, i64 %19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %21 to i64
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %22)
  br label %23

23:                                               ; preds = %10, %3
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
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %10 = inttoptr i64 %3 to ptr
  store ptr %10, ptr %9, align 8
  %11 = ptrtoint ptr %0 to i64
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %8, i32 0, i32 0
  br label %14

14:                                               ; preds = %28, %4
  %15 = phi ptr [ %32, %28 ], [ undef, %4 ]
  %16 = phi i64 [ %29, %28 ], [ %2, %4 ]
  %17 = phi ptr [ %32, %28 ], [ %1, %4 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %11
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %14
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %.lcssa7 = phi ptr [ %15, %22 ]
  %.lcssa4 = phi i64 [ %16, %22 ]
  %.lcssa1 = phi ptr [ %17, %22 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %5, i64 8, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i64 %27)
  br label %35

28:                                               ; preds = %22
  %29 = add nsw i64 %16, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 8, i1 false)
  %30 = load ptr, ptr %12, align 8
  %31 = ptrtoint ptr %30 to i64
  %32 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %17, i64 %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 8, i1 false)
  %33 = load ptr, ptr %13, align 8
  %34 = ptrtoint ptr %33 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %32, ptr noundef %17, i64 noundef %29, i64 %34)
  br label %14, !llvm.loop !51

.loopexit:                                        ; preds = %14
  %.lcssa6 = phi ptr [ %15, %14 ]
  %.lcssa3 = phi i64 [ %16, %14 ]
  %.lcssa = phi ptr [ %17, %14 ]
  br label %35

35:                                               ; preds = %.loopexit, %24
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %9 = inttoptr i64 %2 to ptr
  store ptr %9, ptr %8, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %4, i64 8, i1 false)
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %16, i64 %19)
  %20 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %22 to i64
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %20, ptr noundef %1, i64 %23)
  br label %28

24:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %27)
  br label %28

28:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %8 = inttoptr i64 %3 to ptr
  store ptr %8, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %5, i64 8, i1 false)
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %11)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %8 = inttoptr i64 %2 to ptr
  store ptr %8, ptr %7, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = sdiv i64 %12, 2
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = getelementptr inbounds double, ptr %0, i64 1
  %16 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %4, i64 8, i1 false)
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %15, ptr noundef %14, ptr noundef %16, i64 %19)
  %20 = getelementptr inbounds double, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %20, ptr noundef %1, ptr noundef %0, i64 %23)
  ret ptr %24
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %7 = inttoptr i64 %3 to ptr
  store ptr %7, ptr %6, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %8

8:                                                ; preds = %15, %4
  %9 = phi ptr [ %16, %15 ], [ %1, %4 ]
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %0)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %14

14:                                               ; preds = %13, %11
  br label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds nuw double, ptr %9, i32 1
  br label %8, !llvm.loop !52

17:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds double, ptr %6, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %5, !llvm.loop !53

13:                                               ; preds = %5
  %.lcssa = phi ptr [ %6, %5 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %29

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  br label %19

19:                                               ; preds = %27, %11
  %20 = phi i64 [ %28, %27 ], [ %17, %11 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %2, i64 8, i1 false)
  %23 = load ptr, ptr %18, align 8
  %24 = ptrtoint ptr %23 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %15, double noundef %22, i64 %24)
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  %.lcssa2 = phi double [ %22, %19 ]
  %.lcssa = phi i64 [ %20, %19 ]
  br label %29

27:                                               ; preds = %19
  %28 = add nsw i64 %20, -1
  br label %19, !llvm.loop !54

29:                                               ; preds = %26, %10
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
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = load double, ptr %2, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %2, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %3, i64 8, i1 false)
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i64 %14)
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
  br label %12

12:                                               ; preds = %25, %5
  %13 = phi i64 [ %26, %25 ], [ %1, %5 ]
  %14 = phi i64 [ %26, %25 ], [ %1, %5 ]
  %15 = icmp slt i64 %14, %11
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = add nsw i64 %14, 1
  %18 = mul nsw i64 2, %17
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = sub nsw i64 %18, 1
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %19, ptr noundef %21)
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = add nsw i64 %18, -1
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i64 [ %24, %23 ], [ %18, %16 ]
  %27 = getelementptr inbounds double, ptr %0, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds double, ptr %0, i64 %13
  store double %28, ptr %29, align 8
  br label %12, !llvm.loop !55

30:                                               ; preds = %12
  %.lcssa2 = phi i64 [ %13, %12 ]
  %.lcssa = phi i64 [ %14, %12 ]
  %31 = and i64 %2, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = sub nsw i64 %2, 2
  %35 = sdiv i64 %34, 2
  %36 = icmp eq i64 %.lcssa, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = add nsw i64 %.lcssa, 1
  %39 = mul nsw i64 2, %38
  %40 = sub nsw i64 %39, 1
  %41 = getelementptr inbounds double, ptr %0, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = getelementptr inbounds double, ptr %0, i64 %.lcssa2
  store double %42, ptr %43, align 8
  %44 = sub nsw i64 %39, 1
  br label %45

45:                                               ; preds = %37, %33, %30
  %.0 = phi i64 [ %44, %37 ], [ %.lcssa2, %33 ], [ %.lcssa2, %30 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.0, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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

9:                                                ; preds = %18, %5
  %10 = phi i64 [ %23, %18 ], [ %8, %5 ]
  %11 = phi i64 [ %10, %18 ], [ %1, %5 ]
  %12 = icmp sgt i64 %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds double, ptr %0, i64 %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %0, i64 %10
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %11
  store double %20, ptr %21, align 8
  %22 = sub nsw i64 %10, 1
  %23 = sdiv i64 %22, 2
  br label %9, !llvm.loop !56

24:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %10, %16 ]
  %.lcssa = phi i64 [ %11, %16 ]
  %25 = load double, ptr %6, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %.lcssa
  store double %25, ptr %26, align 8
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

8:                                                ; preds = %24, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %24 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %25, %24 ], [ %0, %4 ]
  br label %9

9:                                                ; preds = %12, %8
  %10 = phi ptr [ %13, %12 ], [ %.lcssa4, %8 ]
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw double, ptr %10, i32 1
  br label %9, !llvm.loop !57

14:                                               ; preds = %9
  %.lcssa = phi ptr [ %10, %9 ]
  %15 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %16

16:                                               ; preds = %19, %14
  %17 = phi ptr [ %20, %19 ], [ %15, %14 ]
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds double, ptr %17, i32 -1
  br label %16, !llvm.loop !58

21:                                               ; preds = %16
  %.lcssa2 = phi ptr [ %17, %16 ]
  %22 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %21 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %21 ]
  ret ptr %.lcssa.lcssa

24:                                               ; preds = %21
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %25 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
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
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %9 = inttoptr i64 %2 to ptr
  store ptr %9, ptr %8, align 8
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %68

12:                                               ; preds = %3
  %13 = getelementptr inbounds double, ptr %0, i64 1
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %6, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %6, i32 0, i32 0
  %.promoted1 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %66, %12
  %18 = phi ptr [ %51, %66 ], [ undef, %12 ]
  %19 = phi ptr [ %52, %66 ], [ undef, %12 ]
  %20 = phi ptr [ %53, %66 ], [ undef, %12 ]
  %21 = phi ptr [ %54, %66 ], [ undef, %12 ]
  %22 = phi ptr [ %55, %66 ], [ undef, %12 ]
  %23 = phi ptr [ %56, %66 ], [ undef, %12 ]
  %24 = phi ptr [ %57, %66 ], [ undef, %12 ]
  %25 = phi ptr [ %58, %66 ], [ undef, %12 ]
  %26 = phi ptr [ %59, %66 ], [ undef, %12 ]
  %27 = phi ptr [ %60, %66 ], [ undef, %12 ]
  %28 = phi ptr [ %61, %66 ], [ undef, %12 ]
  %29 = phi ptr [ %62, %66 ], [ undef, %12 ]
  %30 = phi ptr [ %63, %66 ], [ undef, %12 ]
  %31 = phi double [ %64, %66 ], [ undef, %12 ]
  %32 = phi ptr [ %65, %66 ], [ %.promoted1, %12 ]
  %33 = phi ptr [ %67, %66 ], [ %13, %12 ]
  %34 = icmp ne ptr %33, %1
  br i1 %34, label %35, label %.loopexit

35:                                               ; preds = %17
  %36 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %33, ptr noundef %0)
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = load double, ptr %33, align 8
  %39 = getelementptr inbounds double, ptr %33, i64 1
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %41 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %33)
  store ptr %39, ptr %4, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %40, ptr noundef %41, ptr noundef %42)
  store double %38, ptr %0, align 8
  br label %50

44:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 8, i1 false)
  %45 = load ptr, ptr %14, align 8
  %46 = ptrtoint ptr %45 to i64
  %47 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %46)
  %48 = inttoptr i64 %47 to ptr
  %49 = ptrtoint ptr %48 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %33, i64 %49)
  br label %50

50:                                               ; preds = %44, %37
  %51 = phi ptr [ %18, %44 ], [ %43, %37 ]
  %52 = phi ptr [ %19, %44 ], [ %4, %37 ]
  %53 = phi ptr [ %20, %44 ], [ %42, %37 ]
  %54 = phi ptr [ %21, %44 ], [ %41, %37 ]
  %55 = phi ptr [ %22, %44 ], [ %40, %37 ]
  %56 = phi ptr [ %23, %44 ], [ %42, %37 ]
  %57 = phi ptr [ %24, %44 ], [ %41, %37 ]
  %58 = phi ptr [ %25, %44 ], [ %40, %37 ]
  %59 = phi ptr [ %26, %44 ], [ %41, %37 ]
  %60 = phi ptr [ %27, %44 ], [ %40, %37 ]
  %61 = phi ptr [ %28, %44 ], [ %39, %37 ]
  %62 = phi ptr [ %29, %44 ], [ %33, %37 ]
  %63 = phi ptr [ %30, %44 ], [ %0, %37 ]
  %64 = phi double [ %31, %44 ], [ %38, %37 ]
  %65 = phi ptr [ %48, %44 ], [ %32, %37 ]
  br label %66

66:                                               ; preds = %50
  %67 = getelementptr inbounds nuw double, ptr %33, i32 1
  br label %17, !llvm.loop !60

.loopexit:                                        ; preds = %17
  %.lcssa30 = phi ptr [ %18, %17 ]
  %.lcssa28 = phi ptr [ %19, %17 ]
  %.lcssa26 = phi ptr [ %20, %17 ]
  %.lcssa24 = phi ptr [ %21, %17 ]
  %.lcssa22 = phi ptr [ %22, %17 ]
  %.lcssa20 = phi ptr [ %23, %17 ]
  %.lcssa18 = phi ptr [ %24, %17 ]
  %.lcssa16 = phi ptr [ %25, %17 ]
  %.lcssa14 = phi ptr [ %26, %17 ]
  %.lcssa12 = phi ptr [ %27, %17 ]
  %.lcssa10 = phi ptr [ %28, %17 ]
  %.lcssa8 = phi ptr [ %29, %17 ]
  %.lcssa6 = phi ptr [ %30, %17 ]
  %.lcssa4 = phi double [ %31, %17 ]
  %.lcssa2 = phi ptr [ %32, %17 ]
  %.lcssa = phi ptr [ %33, %17 ]
  store ptr %.lcssa2, ptr %15, align 8
  br label %68

68:                                               ; preds = %.loopexit, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %8 = inttoptr i64 %2 to ptr
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %.promoted1 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %22, %3
  %13 = phi ptr [ %20, %22 ], [ %.promoted1, %3 ]
  %14 = phi ptr [ %23, %22 ], [ %0, %3 ]
  %15 = icmp ne ptr %14, %1
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %17 = load ptr, ptr %9, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %18)
  %20 = inttoptr i64 %19 to ptr
  %21 = ptrtoint ptr %20 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %14, i64 %21)
  br label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %12, !llvm.loop !61

24:                                               ; preds = %12
  %.lcssa2 = phi ptr [ %13, %12 ]
  %.lcssa = phi ptr [ %14, %12 ]
  store ptr %.lcssa2, ptr %10, align 8
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
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %0, %2 ]
  %11 = phi ptr [ %15, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  %15 = getelementptr inbounds double, ptr %11, i32 -1
  br label %9, !llvm.loop !62

16:                                               ; preds = %9
  %.lcssa2 = phi ptr [ %10, %9 ]
  %.lcssa = phi ptr [ %11, %9 ]
  %17 = load double, ptr %4, align 8
  store double %17, ptr %.lcssa2, align 8
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
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  %5 = getelementptr inbounds nuw %"struct.std::random_access_iterator_tag", ptr %4, i32 0, i32 0
  store i8 %2, ptr %5, align 1
  %6 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = icmp eq i64 %1, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw double, ptr %10, i32 1
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
  %18 = getelementptr inbounds double, ptr %17, i32 -1
  store ptr %18, ptr %0, align 8
  br label %22

19:                                               ; preds = %14, %12
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 %1
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = mul nsw i64 %14, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %15, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %19)
  br label %20

20:                                               ; preds = %9, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  %10 = ptrtoint ptr %0 to i64
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %8, i32 0, i32 0
  br label %13

13:                                               ; preds = %26, %4
  %14 = phi ptr [ %29, %26 ], [ undef, %4 ]
  %15 = phi i64 [ %27, %26 ], [ %2, %4 ]
  %16 = phi ptr [ %29, %26 ], [ %1, %4 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %21, label %.loopexit

21:                                               ; preds = %13
  %22 = icmp eq i64 %15, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %.lcssa7 = phi ptr [ %14, %21 ]
  %.lcssa4 = phi i64 [ %15, %21 ]
  %.lcssa1 = phi ptr [ %16, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %25)
  br label %31

26:                                               ; preds = %21
  %27 = add nsw i64 %15, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %11, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %16, i8 %28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %30 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %29, ptr noundef %16, i64 noundef %27, i8 %30)
  br label %13, !llvm.loop !63

.loopexit:                                        ; preds = %13
  %.lcssa6 = phi ptr [ %14, %13 ]
  %.lcssa3 = phi i64 [ %15, %13 ]
  %.lcssa = phi ptr [ %16, %13 ]
  br label %31

31:                                               ; preds = %.loopexit, %23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 16
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %18, ptr noundef %1, i8 %20)
  br label %24

21:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %23)
  br label %24

24:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %7, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %9)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds double, ptr %0, i64 %12
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %14, ptr noundef %13, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  %21 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %18, ptr noundef %1, ptr noundef %0, i8 %20)
  ret ptr %21
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ %15, %14 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw double, ptr %8, i32 1
  br label %7, !llvm.loop !64

16:                                               ; preds = %7
  %.lcssa = phi ptr [ %8, %7 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds double, ptr %6, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !65

13:                                               ; preds = %5
  %.lcssa = phi ptr [ %6, %5 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %28

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  br label %19

19:                                               ; preds = %26, %11
  %20 = phi i64 [ %27, %26 ], [ %17, %11 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %23 = load i8, ptr %18, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %15, double noundef %22, i8 %23)
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  %.lcssa2 = phi double [ %22, %19 ]
  %.lcssa = phi i64 [ %20, %19 ]
  br label %28

26:                                               ; preds = %19
  %27 = add nsw i64 %20, -1
  br label %19, !llvm.loop !66

28:                                               ; preds = %25, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = load double, ptr %2, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %2, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %3, i64 1, i1 false)
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %13)
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
  br label %11

11:                                               ; preds = %24, %5
  %12 = phi i64 [ %25, %24 ], [ %1, %5 ]
  %13 = phi i64 [ %25, %24 ], [ %1, %5 ]
  %14 = icmp slt i64 %13, %10
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = add nsw i64 %13, 1
  %17 = mul nsw i64 2, %16
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = sub nsw i64 %17, 1
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %18, ptr noundef %20)
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = add nsw i64 %17, -1
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i64 [ %23, %22 ], [ %17, %15 ]
  %26 = getelementptr inbounds double, ptr %0, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %0, i64 %12
  store double %27, ptr %28, align 8
  br label %11, !llvm.loop !67

29:                                               ; preds = %11
  %.lcssa2 = phi i64 [ %12, %11 ]
  %.lcssa = phi i64 [ %13, %11 ]
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = sub nsw i64 %2, 2
  %34 = sdiv i64 %33, 2
  %35 = icmp eq i64 %.lcssa, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = add nsw i64 %.lcssa, 1
  %38 = mul nsw i64 2, %37
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds double, ptr %0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %0, i64 %.lcssa2
  store double %41, ptr %42, align 8
  %43 = sub nsw i64 %38, 1
  br label %44

44:                                               ; preds = %36, %32, %29
  %.0 = phi i64 [ %43, %36 ], [ %.lcssa2, %32 ], [ %.lcssa2, %29 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.0, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %18, %5
  %10 = phi i64 [ %23, %18 ], [ %8, %5 ]
  %11 = phi i64 [ %10, %18 ], [ %1, %5 ]
  %12 = icmp sgt i64 %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds double, ptr %0, i64 %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %0, i64 %10
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %11
  store double %20, ptr %21, align 8
  %22 = sub nsw i64 %10, 1
  %23 = sdiv i64 %22, 2
  br label %9, !llvm.loop !68

24:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %10, %16 ]
  %.lcssa = phi i64 [ %11, %16 ]
  %25 = load double, ptr %6, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %.lcssa
  store double %25, ptr %26, align 8
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

7:                                                ; preds = %23, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %23 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %24, %23 ], [ %0, %4 ]
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi ptr [ %12, %11 ], [ %.lcssa4, %7 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %9, ptr noundef %2)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw double, ptr %9, i32 1
  br label %8, !llvm.loop !69

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %15

15:                                               ; preds = %18, %13
  %16 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds double, ptr %16, i32 -1
  br label %15, !llvm.loop !70

20:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ]
  %21 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %20 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %20 ]
  ret ptr %.lcssa.lcssa

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %24 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %7, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %64

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %6, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %6, i32 0, i32 0
  %.promoted1 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %62, %11
  %17 = phi ptr [ %47, %62 ], [ undef, %11 ]
  %18 = phi ptr [ %48, %62 ], [ undef, %11 ]
  %19 = phi ptr [ %49, %62 ], [ undef, %11 ]
  %20 = phi ptr [ %50, %62 ], [ undef, %11 ]
  %21 = phi ptr [ %51, %62 ], [ undef, %11 ]
  %22 = phi ptr [ %52, %62 ], [ undef, %11 ]
  %23 = phi ptr [ %53, %62 ], [ undef, %11 ]
  %24 = phi ptr [ %54, %62 ], [ undef, %11 ]
  %25 = phi ptr [ %55, %62 ], [ undef, %11 ]
  %26 = phi ptr [ %56, %62 ], [ undef, %11 ]
  %27 = phi ptr [ %57, %62 ], [ undef, %11 ]
  %28 = phi ptr [ %58, %62 ], [ undef, %11 ]
  %29 = phi ptr [ %59, %62 ], [ undef, %11 ]
  %30 = phi double [ %60, %62 ], [ undef, %11 ]
  %31 = phi i8 [ %61, %62 ], [ %.promoted1, %11 ]
  %32 = phi ptr [ %63, %62 ], [ %12, %11 ]
  %33 = icmp ne ptr %32, %1
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %16
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %32, ptr noundef %0)
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = load double, ptr %32, align 8
  %38 = getelementptr inbounds double, ptr %32, i64 1
  %39 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
  store ptr %38, ptr %4, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store double %37, ptr %0, align 8
  br label %46

43:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %44 = load i8, ptr %13, align 1
  %45 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %44)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %32, i8 %45)
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi ptr [ %17, %43 ], [ %42, %36 ]
  %48 = phi ptr [ %18, %43 ], [ %4, %36 ]
  %49 = phi ptr [ %19, %43 ], [ %41, %36 ]
  %50 = phi ptr [ %20, %43 ], [ %40, %36 ]
  %51 = phi ptr [ %21, %43 ], [ %39, %36 ]
  %52 = phi ptr [ %22, %43 ], [ %41, %36 ]
  %53 = phi ptr [ %23, %43 ], [ %40, %36 ]
  %54 = phi ptr [ %24, %43 ], [ %39, %36 ]
  %55 = phi ptr [ %25, %43 ], [ %40, %36 ]
  %56 = phi ptr [ %26, %43 ], [ %39, %36 ]
  %57 = phi ptr [ %27, %43 ], [ %38, %36 ]
  %58 = phi ptr [ %28, %43 ], [ %32, %36 ]
  %59 = phi ptr [ %29, %43 ], [ %0, %36 ]
  %60 = phi double [ %30, %43 ], [ %37, %36 ]
  %61 = phi i8 [ %45, %43 ], [ %31, %36 ]
  br label %62

62:                                               ; preds = %46
  %63 = getelementptr inbounds nuw double, ptr %32, i32 1
  br label %16, !llvm.loop !72

.loopexit:                                        ; preds = %16
  %.lcssa30 = phi ptr [ %17, %16 ]
  %.lcssa28 = phi ptr [ %18, %16 ]
  %.lcssa26 = phi ptr [ %19, %16 ]
  %.lcssa24 = phi ptr [ %20, %16 ]
  %.lcssa22 = phi ptr [ %21, %16 ]
  %.lcssa20 = phi ptr [ %22, %16 ]
  %.lcssa18 = phi ptr [ %23, %16 ]
  %.lcssa16 = phi ptr [ %24, %16 ]
  %.lcssa14 = phi ptr [ %25, %16 ]
  %.lcssa12 = phi ptr [ %26, %16 ]
  %.lcssa10 = phi ptr [ %27, %16 ]
  %.lcssa8 = phi ptr [ %28, %16 ]
  %.lcssa6 = phi ptr [ %29, %16 ]
  %.lcssa4 = phi double [ %30, %16 ]
  %.lcssa2 = phi i8 [ %31, %16 ]
  %.lcssa = phi ptr [ %32, %16 ]
  store i8 %.lcssa2, ptr %14, align 1
  br label %64

64:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  %.promoted1 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %18, %3
  %12 = phi i8 [ %17, %18 ], [ %.promoted1, %3 ]
  %13 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %14 = icmp ne ptr %13, %1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %8, align 1
  %17 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %16)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %13, i8 %17)
  br label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw double, ptr %13, i32 1
  br label %11, !llvm.loop !73

20:                                               ; preds = %11
  %.lcssa2 = phi i8 [ %12, %11 ]
  %.lcssa = phi ptr [ %13, %11 ]
  store i8 %.lcssa2, ptr %9, align 1
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
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %10, %12 ], [ %0, %2 ]
  %10 = phi ptr [ %14, %12 ], [ %7, %2 ]
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %10)
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load double, ptr %10, align 8
  store double %13, ptr %9, align 8
  %14 = getelementptr inbounds double, ptr %10, i32 -1
  br label %8, !llvm.loop !74

15:                                               ; preds = %8
  %.lcssa2 = phi ptr [ %9, %8 ]
  %.lcssa = phi ptr [ %10, %8 ]
  %16 = load double, ptr %4, align 8
  store double %16, ptr %.lcssa2, align 8
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
  %3 = alloca %struct.less_than_functor, align 1
  %4 = getelementptr inbounds nuw %struct.less_than_functor, ptr %3, i32 0, i32 0
  store i8 %1, ptr %4, align 1
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = mul nsw i64 %14, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %15, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %19)
  br label %20

20:                                               ; preds = %9, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  %10 = ptrtoint ptr %0 to i64
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %8, i32 0, i32 0
  br label %13

13:                                               ; preds = %26, %4
  %14 = phi ptr [ %29, %26 ], [ undef, %4 ]
  %15 = phi i64 [ %27, %26 ], [ %2, %4 ]
  %16 = phi ptr [ %29, %26 ], [ %1, %4 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %21, label %.loopexit

21:                                               ; preds = %13
  %22 = icmp eq i64 %15, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %.lcssa7 = phi ptr [ %14, %21 ]
  %.lcssa4 = phi i64 [ %15, %21 ]
  %.lcssa1 = phi ptr [ %16, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %25)
  br label %31

26:                                               ; preds = %21
  %27 = add nsw i64 %15, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %11, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %16, i8 %28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %30 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %29, ptr noundef %16, i64 noundef %27, i8 %30)
  br label %13, !llvm.loop !75

.loopexit:                                        ; preds = %13
  %.lcssa6 = phi ptr [ %14, %13 ]
  %.lcssa3 = phi i64 [ %15, %13 ]
  %.lcssa = phi ptr [ %16, %13 ]
  br label %31

31:                                               ; preds = %.loopexit, %23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 16
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %18, ptr noundef %1, i8 %20)
  br label %24

21:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %23)
  br label %24

24:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %7, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %9)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds double, ptr %0, i64 %12
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %14, ptr noundef %13, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  %21 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %18, ptr noundef %1, ptr noundef %0, i8 %20)
  ret ptr %21
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ %15, %14 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw double, ptr %8, i32 1
  br label %7, !llvm.loop !76

16:                                               ; preds = %7
  %.lcssa = phi ptr [ %8, %7 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds double, ptr %6, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !77

13:                                               ; preds = %5
  %.lcssa = phi ptr [ %6, %5 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %28

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  br label %19

19:                                               ; preds = %26, %11
  %20 = phi i64 [ %27, %26 ], [ %17, %11 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %23 = load i8, ptr %18, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %15, double noundef %22, i8 %23)
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  %.lcssa2 = phi double [ %22, %19 ]
  %.lcssa = phi i64 [ %20, %19 ]
  br label %28

26:                                               ; preds = %19
  %27 = add nsw i64 %20, -1
  br label %19, !llvm.loop !78

28:                                               ; preds = %25, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = load double, ptr %2, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %2, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %3, i64 1, i1 false)
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %13)
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
  br label %11

11:                                               ; preds = %24, %5
  %12 = phi i64 [ %25, %24 ], [ %1, %5 ]
  %13 = phi i64 [ %25, %24 ], [ %1, %5 ]
  %14 = icmp slt i64 %13, %10
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = add nsw i64 %13, 1
  %17 = mul nsw i64 2, %16
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = sub nsw i64 %17, 1
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %18, ptr noundef %20)
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = add nsw i64 %17, -1
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i64 [ %23, %22 ], [ %17, %15 ]
  %26 = getelementptr inbounds double, ptr %0, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %0, i64 %12
  store double %27, ptr %28, align 8
  br label %11, !llvm.loop !79

29:                                               ; preds = %11
  %.lcssa2 = phi i64 [ %12, %11 ]
  %.lcssa = phi i64 [ %13, %11 ]
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = sub nsw i64 %2, 2
  %34 = sdiv i64 %33, 2
  %35 = icmp eq i64 %.lcssa, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = add nsw i64 %.lcssa, 1
  %38 = mul nsw i64 2, %37
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds double, ptr %0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %0, i64 %.lcssa2
  store double %41, ptr %42, align 8
  %43 = sub nsw i64 %38, 1
  br label %44

44:                                               ; preds = %36, %32, %29
  %.0 = phi i64 [ %43, %36 ], [ %.lcssa2, %32 ], [ %.lcssa2, %29 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.0, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %18, %5
  %10 = phi i64 [ %23, %18 ], [ %8, %5 ]
  %11 = phi i64 [ %10, %18 ], [ %1, %5 ]
  %12 = icmp sgt i64 %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds double, ptr %0, i64 %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %0, i64 %10
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %11
  store double %20, ptr %21, align 8
  %22 = sub nsw i64 %10, 1
  %23 = sdiv i64 %22, 2
  br label %9, !llvm.loop !80

24:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %10, %16 ]
  %.lcssa = phi i64 [ %11, %16 ]
  %25 = load double, ptr %6, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %.lcssa
  store double %25, ptr %26, align 8
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

7:                                                ; preds = %23, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %23 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %24, %23 ], [ %0, %4 ]
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi ptr [ %12, %11 ], [ %.lcssa4, %7 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %9, ptr noundef %2)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw double, ptr %9, i32 1
  br label %8, !llvm.loop !81

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %15

15:                                               ; preds = %18, %13
  %16 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds double, ptr %16, i32 -1
  br label %15, !llvm.loop !82

20:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ]
  %21 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %20 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %20 ]
  ret ptr %.lcssa.lcssa

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %24 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %7, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %64

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %6, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %6, i32 0, i32 0
  %.promoted1 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %62, %11
  %17 = phi ptr [ %47, %62 ], [ undef, %11 ]
  %18 = phi ptr [ %48, %62 ], [ undef, %11 ]
  %19 = phi ptr [ %49, %62 ], [ undef, %11 ]
  %20 = phi ptr [ %50, %62 ], [ undef, %11 ]
  %21 = phi ptr [ %51, %62 ], [ undef, %11 ]
  %22 = phi ptr [ %52, %62 ], [ undef, %11 ]
  %23 = phi ptr [ %53, %62 ], [ undef, %11 ]
  %24 = phi ptr [ %54, %62 ], [ undef, %11 ]
  %25 = phi ptr [ %55, %62 ], [ undef, %11 ]
  %26 = phi ptr [ %56, %62 ], [ undef, %11 ]
  %27 = phi ptr [ %57, %62 ], [ undef, %11 ]
  %28 = phi ptr [ %58, %62 ], [ undef, %11 ]
  %29 = phi ptr [ %59, %62 ], [ undef, %11 ]
  %30 = phi double [ %60, %62 ], [ undef, %11 ]
  %31 = phi i8 [ %61, %62 ], [ %.promoted1, %11 ]
  %32 = phi ptr [ %63, %62 ], [ %12, %11 ]
  %33 = icmp ne ptr %32, %1
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %16
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %32, ptr noundef %0)
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = load double, ptr %32, align 8
  %38 = getelementptr inbounds double, ptr %32, i64 1
  %39 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
  store ptr %38, ptr %4, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store double %37, ptr %0, align 8
  br label %46

43:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %44 = load i8, ptr %13, align 1
  %45 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %44)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %32, i8 %45)
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi ptr [ %17, %43 ], [ %42, %36 ]
  %48 = phi ptr [ %18, %43 ], [ %4, %36 ]
  %49 = phi ptr [ %19, %43 ], [ %41, %36 ]
  %50 = phi ptr [ %20, %43 ], [ %40, %36 ]
  %51 = phi ptr [ %21, %43 ], [ %39, %36 ]
  %52 = phi ptr [ %22, %43 ], [ %41, %36 ]
  %53 = phi ptr [ %23, %43 ], [ %40, %36 ]
  %54 = phi ptr [ %24, %43 ], [ %39, %36 ]
  %55 = phi ptr [ %25, %43 ], [ %40, %36 ]
  %56 = phi ptr [ %26, %43 ], [ %39, %36 ]
  %57 = phi ptr [ %27, %43 ], [ %38, %36 ]
  %58 = phi ptr [ %28, %43 ], [ %32, %36 ]
  %59 = phi ptr [ %29, %43 ], [ %0, %36 ]
  %60 = phi double [ %30, %43 ], [ %37, %36 ]
  %61 = phi i8 [ %45, %43 ], [ %31, %36 ]
  br label %62

62:                                               ; preds = %46
  %63 = getelementptr inbounds nuw double, ptr %32, i32 1
  br label %16, !llvm.loop !84

.loopexit:                                        ; preds = %16
  %.lcssa30 = phi ptr [ %17, %16 ]
  %.lcssa28 = phi ptr [ %18, %16 ]
  %.lcssa26 = phi ptr [ %19, %16 ]
  %.lcssa24 = phi ptr [ %20, %16 ]
  %.lcssa22 = phi ptr [ %21, %16 ]
  %.lcssa20 = phi ptr [ %22, %16 ]
  %.lcssa18 = phi ptr [ %23, %16 ]
  %.lcssa16 = phi ptr [ %24, %16 ]
  %.lcssa14 = phi ptr [ %25, %16 ]
  %.lcssa12 = phi ptr [ %26, %16 ]
  %.lcssa10 = phi ptr [ %27, %16 ]
  %.lcssa8 = phi ptr [ %28, %16 ]
  %.lcssa6 = phi ptr [ %29, %16 ]
  %.lcssa4 = phi double [ %30, %16 ]
  %.lcssa2 = phi i8 [ %31, %16 ]
  %.lcssa = phi ptr [ %32, %16 ]
  store i8 %.lcssa2, ptr %14, align 1
  br label %64

64:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  %.promoted1 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %18, %3
  %12 = phi i8 [ %17, %18 ], [ %.promoted1, %3 ]
  %13 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %14 = icmp ne ptr %13, %1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %8, align 1
  %17 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %16)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %13, i8 %17)
  br label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw double, ptr %13, i32 1
  br label %11, !llvm.loop !85

20:                                               ; preds = %11
  %.lcssa2 = phi i8 [ %12, %11 ]
  %.lcssa = phi ptr [ %13, %11 ]
  store i8 %.lcssa2, ptr %9, align 1
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
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %10, %12 ], [ %0, %2 ]
  %10 = phi ptr [ %14, %12 ], [ %7, %2 ]
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %10)
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load double, ptr %10, align 8
  store double %13, ptr %9, align 8
  %14 = getelementptr inbounds double, ptr %10, i32 -1
  br label %8, !llvm.loop !86

15:                                               ; preds = %8
  %.lcssa2 = phi ptr [ %9, %8 ]
  %.lcssa = phi ptr [ %10, %8 ]
  %16 = load double, ptr %4, align 8
  store double %16, ptr %.lcssa2, align 8
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
  %3 = alloca %struct.inline_less_than_functor, align 1
  %4 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %3, i32 0, i32 0
  store i8 %1, ptr %4, align 1
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
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = mul nsw i64 %14, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %15, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %19)
  br label %20

20:                                               ; preds = %9, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  %10 = ptrtoint ptr %0 to i64
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %8, i32 0, i32 0
  br label %13

13:                                               ; preds = %26, %4
  %14 = phi ptr [ %29, %26 ], [ undef, %4 ]
  %15 = phi i64 [ %27, %26 ], [ %2, %4 ]
  %16 = phi ptr [ %29, %26 ], [ %1, %4 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %21, label %.loopexit

21:                                               ; preds = %13
  %22 = icmp eq i64 %15, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %.lcssa7 = phi ptr [ %14, %21 ]
  %.lcssa4 = phi i64 [ %15, %21 ]
  %.lcssa1 = phi ptr [ %16, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %25)
  br label %31

26:                                               ; preds = %21
  %27 = add nsw i64 %15, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %11, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %16, i8 %28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %30 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %29, ptr noundef %16, i64 noundef %27, i8 %30)
  br label %13, !llvm.loop !87

.loopexit:                                        ; preds = %13
  %.lcssa6 = phi ptr [ %14, %13 ]
  %.lcssa3 = phi i64 [ %15, %13 ]
  %.lcssa = phi ptr [ %16, %13 ]
  br label %31

31:                                               ; preds = %.loopexit, %23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 16
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %18, ptr noundef %1, i8 %20)
  br label %24

21:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %23)
  br label %24

24:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %7, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %9)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds double, ptr %0, i64 %12
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %14, ptr noundef %13, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  %21 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %18, ptr noundef %1, ptr noundef %0, i8 %20)
  ret ptr %21
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ %15, %14 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw double, ptr %8, i32 1
  br label %7, !llvm.loop !88

16:                                               ; preds = %7
  %.lcssa = phi ptr [ %8, %7 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds double, ptr %6, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !89

13:                                               ; preds = %5
  %.lcssa = phi ptr [ %6, %5 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %28

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  br label %19

19:                                               ; preds = %26, %11
  %20 = phi i64 [ %27, %26 ], [ %17, %11 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %23 = load i8, ptr %18, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %15, double noundef %22, i8 %23)
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  %.lcssa2 = phi double [ %22, %19 ]
  %.lcssa = phi i64 [ %20, %19 ]
  br label %28

26:                                               ; preds = %19
  %27 = add nsw i64 %20, -1
  br label %19, !llvm.loop !90

28:                                               ; preds = %25, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = load double, ptr %2, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %2, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %3, i64 1, i1 false)
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %13)
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
  br label %11

11:                                               ; preds = %24, %5
  %12 = phi i64 [ %25, %24 ], [ %1, %5 ]
  %13 = phi i64 [ %25, %24 ], [ %1, %5 ]
  %14 = icmp slt i64 %13, %10
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = add nsw i64 %13, 1
  %17 = mul nsw i64 2, %16
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = sub nsw i64 %17, 1
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %18, ptr noundef %20)
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = add nsw i64 %17, -1
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i64 [ %23, %22 ], [ %17, %15 ]
  %26 = getelementptr inbounds double, ptr %0, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %0, i64 %12
  store double %27, ptr %28, align 8
  br label %11, !llvm.loop !91

29:                                               ; preds = %11
  %.lcssa2 = phi i64 [ %12, %11 ]
  %.lcssa = phi i64 [ %13, %11 ]
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = sub nsw i64 %2, 2
  %34 = sdiv i64 %33, 2
  %35 = icmp eq i64 %.lcssa, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = add nsw i64 %.lcssa, 1
  %38 = mul nsw i64 2, %37
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds double, ptr %0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %0, i64 %.lcssa2
  store double %41, ptr %42, align 8
  %43 = sub nsw i64 %38, 1
  br label %44

44:                                               ; preds = %36, %32, %29
  %.0 = phi i64 [ %43, %36 ], [ %.lcssa2, %32 ], [ %.lcssa2, %29 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.0, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %18, %5
  %10 = phi i64 [ %23, %18 ], [ %8, %5 ]
  %11 = phi i64 [ %10, %18 ], [ %1, %5 ]
  %12 = icmp sgt i64 %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds double, ptr %0, i64 %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %0, i64 %10
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %11
  store double %20, ptr %21, align 8
  %22 = sub nsw i64 %10, 1
  %23 = sdiv i64 %22, 2
  br label %9, !llvm.loop !92

24:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %10, %16 ]
  %.lcssa = phi i64 [ %11, %16 ]
  %25 = load double, ptr %6, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %.lcssa
  store double %25, ptr %26, align 8
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

7:                                                ; preds = %23, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %23 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %24, %23 ], [ %0, %4 ]
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi ptr [ %12, %11 ], [ %.lcssa4, %7 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %9, ptr noundef %2)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw double, ptr %9, i32 1
  br label %8, !llvm.loop !93

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %15

15:                                               ; preds = %18, %13
  %16 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds double, ptr %16, i32 -1
  br label %15, !llvm.loop !94

20:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ]
  %21 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %20 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %20 ]
  ret ptr %.lcssa.lcssa

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %24 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %7, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %64

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %6, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %6, i32 0, i32 0
  %.promoted1 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %62, %11
  %17 = phi ptr [ %47, %62 ], [ undef, %11 ]
  %18 = phi ptr [ %48, %62 ], [ undef, %11 ]
  %19 = phi ptr [ %49, %62 ], [ undef, %11 ]
  %20 = phi ptr [ %50, %62 ], [ undef, %11 ]
  %21 = phi ptr [ %51, %62 ], [ undef, %11 ]
  %22 = phi ptr [ %52, %62 ], [ undef, %11 ]
  %23 = phi ptr [ %53, %62 ], [ undef, %11 ]
  %24 = phi ptr [ %54, %62 ], [ undef, %11 ]
  %25 = phi ptr [ %55, %62 ], [ undef, %11 ]
  %26 = phi ptr [ %56, %62 ], [ undef, %11 ]
  %27 = phi ptr [ %57, %62 ], [ undef, %11 ]
  %28 = phi ptr [ %58, %62 ], [ undef, %11 ]
  %29 = phi ptr [ %59, %62 ], [ undef, %11 ]
  %30 = phi double [ %60, %62 ], [ undef, %11 ]
  %31 = phi i8 [ %61, %62 ], [ %.promoted1, %11 ]
  %32 = phi ptr [ %63, %62 ], [ %12, %11 ]
  %33 = icmp ne ptr %32, %1
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %16
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %32, ptr noundef %0)
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = load double, ptr %32, align 8
  %38 = getelementptr inbounds double, ptr %32, i64 1
  %39 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
  store ptr %38, ptr %4, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store double %37, ptr %0, align 8
  br label %46

43:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %44 = load i8, ptr %13, align 1
  %45 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %44)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %32, i8 %45)
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi ptr [ %17, %43 ], [ %42, %36 ]
  %48 = phi ptr [ %18, %43 ], [ %4, %36 ]
  %49 = phi ptr [ %19, %43 ], [ %41, %36 ]
  %50 = phi ptr [ %20, %43 ], [ %40, %36 ]
  %51 = phi ptr [ %21, %43 ], [ %39, %36 ]
  %52 = phi ptr [ %22, %43 ], [ %41, %36 ]
  %53 = phi ptr [ %23, %43 ], [ %40, %36 ]
  %54 = phi ptr [ %24, %43 ], [ %39, %36 ]
  %55 = phi ptr [ %25, %43 ], [ %40, %36 ]
  %56 = phi ptr [ %26, %43 ], [ %39, %36 ]
  %57 = phi ptr [ %27, %43 ], [ %38, %36 ]
  %58 = phi ptr [ %28, %43 ], [ %32, %36 ]
  %59 = phi ptr [ %29, %43 ], [ %0, %36 ]
  %60 = phi double [ %30, %43 ], [ %37, %36 ]
  %61 = phi i8 [ %45, %43 ], [ %31, %36 ]
  br label %62

62:                                               ; preds = %46
  %63 = getelementptr inbounds nuw double, ptr %32, i32 1
  br label %16, !llvm.loop !96

.loopexit:                                        ; preds = %16
  %.lcssa30 = phi ptr [ %17, %16 ]
  %.lcssa28 = phi ptr [ %18, %16 ]
  %.lcssa26 = phi ptr [ %19, %16 ]
  %.lcssa24 = phi ptr [ %20, %16 ]
  %.lcssa22 = phi ptr [ %21, %16 ]
  %.lcssa20 = phi ptr [ %22, %16 ]
  %.lcssa18 = phi ptr [ %23, %16 ]
  %.lcssa16 = phi ptr [ %24, %16 ]
  %.lcssa14 = phi ptr [ %25, %16 ]
  %.lcssa12 = phi ptr [ %26, %16 ]
  %.lcssa10 = phi ptr [ %27, %16 ]
  %.lcssa8 = phi ptr [ %28, %16 ]
  %.lcssa6 = phi ptr [ %29, %16 ]
  %.lcssa4 = phi double [ %30, %16 ]
  %.lcssa2 = phi i8 [ %31, %16 ]
  %.lcssa = phi ptr [ %32, %16 ]
  store i8 %.lcssa2, ptr %14, align 1
  br label %64

64:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  %.promoted1 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %18, %3
  %12 = phi i8 [ %17, %18 ], [ %.promoted1, %3 ]
  %13 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %14 = icmp ne ptr %13, %1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %8, align 1
  %17 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %16)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %13, i8 %17)
  br label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw double, ptr %13, i32 1
  br label %11, !llvm.loop !97

20:                                               ; preds = %11
  %.lcssa2 = phi i8 [ %12, %11 ]
  %.lcssa = phi ptr [ %13, %11 ]
  store i8 %.lcssa2, ptr %9, align 1
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
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %10, %12 ], [ %0, %2 ]
  %10 = phi ptr [ %14, %12 ], [ %7, %2 ]
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %10)
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load double, ptr %10, align 8
  store double %13, ptr %9, align 8
  %14 = getelementptr inbounds double, ptr %10, i32 -1
  br label %8, !llvm.loop !98

15:                                               ; preds = %8
  %.lcssa2 = phi ptr [ %9, %8 ]
  %.lcssa = phi ptr [ %10, %8 ]
  %16 = load double, ptr %4, align 8
  store double %16, ptr %.lcssa2, align 8
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
  %3 = alloca %"struct.std::less", align 1
  %4 = getelementptr inbounds nuw %"struct.std::less", ptr %3, i32 0, i32 0
  store i8 %1, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = mul nsw i64 %14, 2
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %15, i8 %17)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %19)
  br label %20

20:                                               ; preds = %9, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  %10 = ptrtoint ptr %0 to i64
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %14 = load i8, ptr %13, align 1
  br label %15

15:                                               ; preds = %28, %4
  %16 = phi ptr [ %30, %28 ], [ undef, %4 ]
  %17 = phi i64 [ %29, %28 ], [ %2, %4 ]
  %18 = phi ptr [ %30, %28 ], [ %1, %4 ]
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %10
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %15
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %.lcssa7 = phi ptr [ %16, %23 ]
  %.lcssa4 = phi i64 [ %17, %23 ]
  %.lcssa1 = phi ptr [ %18, %23 ]
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %27)
  br label %31

28:                                               ; preds = %23
  %29 = add nsw i64 %17, -1
  %30 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %18, i8 %12)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %30, ptr noundef %18, i64 noundef %29, i8 %14)
  br label %15, !llvm.loop !99

.loopexit:                                        ; preds = %15
  %.lcssa6 = phi ptr [ %16, %15 ]
  %.lcssa3 = phi i64 [ %17, %15 ]
  %.lcssa = phi ptr [ %18, %15 ]
  br label %31

31:                                               ; preds = %.loopexit, %25
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 16
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds double, ptr %0, i64 16
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 16
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %18, ptr noundef %1, i8 %20)
  br label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %23)
  br label %24

24:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %7, align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %9)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds double, ptr %0, i64 %12
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = getelementptr inbounds double, ptr %1, i64 -1
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %14, ptr noundef %13, ptr noundef %15, i8 %17)
  %18 = getelementptr inbounds double, ptr %0, i64 1
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  %21 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %18, ptr noundef %1, ptr noundef %0, i8 %20)
  ret ptr %21
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ %15, %14 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw double, ptr %8, i32 1
  br label %7, !llvm.loop !100

16:                                               ; preds = %7
  %.lcssa = phi ptr [ %8, %7 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds double, ptr %6, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !101

13:                                               ; preds = %5
  %.lcssa = phi ptr [ %6, %5 ]
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %28

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  br label %20

20:                                               ; preds = %26, %11
  %21 = phi i64 [ %27, %26 ], [ %17, %11 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %21, i64 noundef %15, double noundef %23, i8 %19)
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  %.lcssa2 = phi double [ %23, %20 ]
  %.lcssa = phi i64 [ %21, %20 ]
  br label %28

26:                                               ; preds = %20
  %27 = add nsw i64 %21, -1
  br label %20, !llvm.loop !102

28:                                               ; preds = %25, %10
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
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = load double, ptr %2, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %2, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %13)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %9 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  store i8 %4, ptr %9, align 1
  %10 = sub nsw i64 %2, 1
  %11 = sdiv i64 %10, 2
  br label %12

12:                                               ; preds = %25, %5
  %13 = phi i64 [ %26, %25 ], [ %1, %5 ]
  %14 = phi i64 [ %26, %25 ], [ %1, %5 ]
  %15 = icmp slt i64 %14, %11
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = add nsw i64 %14, 1
  %18 = mul nsw i64 2, %17
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = sub nsw i64 %18, 1
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %19, ptr noundef %21)
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = add nsw i64 %18, -1
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i64 [ %24, %23 ], [ %18, %16 ]
  %27 = getelementptr inbounds double, ptr %0, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds double, ptr %0, i64 %13
  store double %28, ptr %29, align 8
  br label %12, !llvm.loop !103

30:                                               ; preds = %12
  %.lcssa2 = phi i64 [ %13, %12 ]
  %.lcssa = phi i64 [ %14, %12 ]
  %31 = and i64 %2, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = sub nsw i64 %2, 2
  %35 = sdiv i64 %34, 2
  %36 = icmp eq i64 %.lcssa, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = add nsw i64 %.lcssa, 1
  %39 = mul nsw i64 2, %38
  %40 = sub nsw i64 %39, 1
  %41 = getelementptr inbounds double, ptr %0, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = getelementptr inbounds double, ptr %0, i64 %.lcssa2
  store double %42, ptr %43, align 8
  %44 = sub nsw i64 %39, 1
  br label %45

45:                                               ; preds = %37, %33, %30
  %.0 = phi i64 [ %44, %37 ], [ %.lcssa2, %33 ], [ %.lcssa2, %30 ]
  %46 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %47 = load i8, ptr %46, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 %47)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.0, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %3, i32 0, i32 0
  store i8 %1, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca double, align 8
  store double %3, ptr %6, align 8
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %18, %5
  %10 = phi i64 [ %23, %18 ], [ %8, %5 ]
  %11 = phi i64 [ %10, %18 ], [ %1, %5 ]
  %12 = icmp sgt i64 %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds double, ptr %0, i64 %10
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %0, i64 %10
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %11
  store double %20, ptr %21, align 8
  %22 = sub nsw i64 %10, 1
  %23 = sdiv i64 %22, 2
  br label %9, !llvm.loop !104

24:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %10, %16 ]
  %.lcssa = phi i64 [ %11, %16 ]
  %25 = load double, ptr %6, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %.lcssa
  store double %25, ptr %26, align 8
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

7:                                                ; preds = %23, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %23 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %24, %23 ], [ %0, %4 ]
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi ptr [ %12, %11 ], [ %.lcssa4, %7 ]
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %9, ptr noundef %2)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw double, ptr %9, i32 1
  br label %8, !llvm.loop !105

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %15

15:                                               ; preds = %18, %13
  %16 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds double, ptr %16, i32 -1
  br label %15, !llvm.loop !106

20:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ]
  %21 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %20 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %20 ]
  ret ptr %.lcssa.lcssa

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %24 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
  br label %7, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %62

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %6, i32 0, i32 0
  %16 = load i8, ptr %15, align 1
  br label %17

17:                                               ; preds = %60, %11
  %18 = phi ptr [ %46, %60 ], [ undef, %11 ]
  %19 = phi ptr [ %47, %60 ], [ undef, %11 ]
  %20 = phi ptr [ %48, %60 ], [ undef, %11 ]
  %21 = phi ptr [ %49, %60 ], [ undef, %11 ]
  %22 = phi ptr [ %50, %60 ], [ undef, %11 ]
  %23 = phi ptr [ %51, %60 ], [ undef, %11 ]
  %24 = phi ptr [ %52, %60 ], [ undef, %11 ]
  %25 = phi ptr [ %53, %60 ], [ undef, %11 ]
  %26 = phi ptr [ %54, %60 ], [ undef, %11 ]
  %27 = phi ptr [ %55, %60 ], [ undef, %11 ]
  %28 = phi ptr [ %56, %60 ], [ undef, %11 ]
  %29 = phi ptr [ %57, %60 ], [ undef, %11 ]
  %30 = phi ptr [ %58, %60 ], [ undef, %11 ]
  %31 = phi double [ %59, %60 ], [ undef, %11 ]
  %32 = phi ptr [ %61, %60 ], [ %12, %11 ]
  %33 = icmp ne ptr %32, %1
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %17
  %35 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %32, ptr noundef %0)
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = load double, ptr %32, align 8
  %38 = getelementptr inbounds double, ptr %32, i64 1
  %39 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
  store ptr %38, ptr %4, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store double %37, ptr %0, align 8
  br label %45

43:                                               ; preds = %34
  %44 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %14)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %32, i8 %16)
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %18, %43 ], [ %42, %36 ]
  %47 = phi ptr [ %19, %43 ], [ %4, %36 ]
  %48 = phi ptr [ %20, %43 ], [ %41, %36 ]
  %49 = phi ptr [ %21, %43 ], [ %40, %36 ]
  %50 = phi ptr [ %22, %43 ], [ %39, %36 ]
  %51 = phi ptr [ %23, %43 ], [ %41, %36 ]
  %52 = phi ptr [ %24, %43 ], [ %40, %36 ]
  %53 = phi ptr [ %25, %43 ], [ %39, %36 ]
  %54 = phi ptr [ %26, %43 ], [ %40, %36 ]
  %55 = phi ptr [ %27, %43 ], [ %39, %36 ]
  %56 = phi ptr [ %28, %43 ], [ %38, %36 ]
  %57 = phi ptr [ %29, %43 ], [ %32, %36 ]
  %58 = phi ptr [ %30, %43 ], [ %0, %36 ]
  %59 = phi double [ %31, %43 ], [ %37, %36 ]
  br label %60

60:                                               ; preds = %45
  %61 = getelementptr inbounds nuw double, ptr %32, i32 1
  br label %17, !llvm.loop !108

.loopexit:                                        ; preds = %17
  %.lcssa28 = phi ptr [ %18, %17 ]
  %.lcssa26 = phi ptr [ %19, %17 ]
  %.lcssa24 = phi ptr [ %20, %17 ]
  %.lcssa22 = phi ptr [ %21, %17 ]
  %.lcssa20 = phi ptr [ %22, %17 ]
  %.lcssa18 = phi ptr [ %23, %17 ]
  %.lcssa16 = phi ptr [ %24, %17 ]
  %.lcssa14 = phi ptr [ %25, %17 ]
  %.lcssa12 = phi ptr [ %26, %17 ]
  %.lcssa10 = phi ptr [ %27, %17 ]
  %.lcssa8 = phi ptr [ %28, %17 ]
  %.lcssa6 = phi ptr [ %29, %17 ]
  %.lcssa4 = phi ptr [ %30, %17 ]
  %.lcssa2 = phi double [ %31, %17 ]
  %.lcssa = phi ptr [ %32, %17 ]
  br label %62

62:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %5, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  br label %12

12:                                               ; preds = %17, %3
  %13 = phi ptr [ %18, %17 ], [ %0, %3 ]
  %14 = icmp ne ptr %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %9)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %13, i8 %11)
  br label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw double, ptr %13, i32 1
  br label %12, !llvm.loop !109

19:                                               ; preds = %12
  %.lcssa = phi ptr [ %13, %12 ]
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
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %10, %12 ], [ %0, %2 ]
  %10 = phi ptr [ %14, %12 ], [ %7, %2 ]
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %10)
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load double, ptr %10, align 8
  store double %13, ptr %9, align 8
  %14 = getelementptr inbounds double, ptr %10, i32 -1
  br label %8, !llvm.loop !110

15:                                               ; preds = %8
  %.lcssa2 = phi ptr [ %9, %8 ]
  %.lcssa = phi ptr [ %10, %8 ]
  %16 = load double, ptr %4, align 8
  store double %16, ptr %.lcssa2, align 8
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
