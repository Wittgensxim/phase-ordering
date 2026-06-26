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
  %23 = load i32, ptr %11, align 4
  %24 = load i32, ptr @current_test, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %5
  %.promoted = load i32, ptr %11, align 4
  %.promoted12 = load i32, ptr %15, align 4
  br label %26

26:                                               ; preds = %.lr.ph, %40
  %27 = phi i32 [ %.promoted12, %.lr.ph ], [ %39, %40 ]
  %28 = phi i32 [ %.promoted, %.lr.ph ], [ %41, %40 ]
  %29 = load ptr, ptr @results, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.one_result, ptr %29, i64 %30
  %32 = getelementptr inbounds nuw %struct.one_result, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = call i64 @strlen(ptr noundef %33) #15
  %35 = trunc i64 %34 to i32
  %36 = icmp sgt i32 %35, %27
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %26
  %39 = phi i32 [ %35, %37 ], [ %27, %26 ]
  br label %40

40:                                               ; preds = %38
  %41 = add nsw i32 %28, 1
  %42 = load i32, ptr @current_test, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %26, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %40
  %.lcssa13 = phi i32 [ %39, %40 ]
  %.lcssa11 = phi i32 [ %35, %40 ]
  %.lcssa = phi i32 [ %41, %40 ]
  store i32 %.lcssa, ptr %11, align 4
  store i32 %.lcssa11, ptr %16, align 4
  store i32 %.lcssa13, ptr %15, align 4
  br label %44

44:                                               ; preds = %._crit_edge, %5
  %45 = load i32, ptr %15, align 4
  %46 = sub nsw i32 %45, 12
  %47 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %46, ptr noundef @.str.2)
  %48 = load i32, ptr %15, align 4
  %49 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %48, ptr noundef @.str.2)
  store i32 0, ptr %11, align 4
  %50 = load i32, ptr %11, align 4
  %51 = load i32, ptr @current_test, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %.lr.ph2, label %97

.lr.ph2:                                          ; preds = %44
  %53 = load i32, ptr %15, align 4
  %54 = sext i32 %53 to i64
  %55 = load double, ptr %12, align 8
  %.promoted14 = load i32, ptr %11, align 4
  br label %56

56:                                               ; preds = %.lr.ph2, %93
  %57 = phi i32 [ %.promoted14, %.lr.ph2 ], [ %94, %93 ]
  %58 = load ptr, ptr @results, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.one_result, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw %struct.one_result, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = call i64 @strlen(ptr noundef %62) #15
  %64 = sub i64 %54, %63
  %65 = trunc i64 %64 to i32
  %66 = load ptr, ptr @results, align 8
  %67 = sext i32 %57 to i64
  %68 = getelementptr inbounds %struct.one_result, ptr %66, i64 %67
  %69 = getelementptr inbounds nuw %struct.one_result, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr @results, align 8
  %72 = sext i32 %57 to i64
  %73 = getelementptr inbounds %struct.one_result, ptr %71, i64 %72
  %74 = getelementptr inbounds nuw %struct.one_result, ptr %73, i32 0, i32 0
  %75 = load double, ptr %74, align 8
  %76 = load ptr, ptr @results, align 8
  %77 = sext i32 %57 to i64
  %78 = getelementptr inbounds %struct.one_result, ptr %76, i64 %77
  %79 = getelementptr inbounds nuw %struct.one_result, ptr %78, i32 0, i32 0
  %80 = load double, ptr %79, align 8
  %81 = fdiv double %55, %80
  %82 = load ptr, ptr @results, align 8
  %83 = sext i32 %57 to i64
  %84 = getelementptr inbounds %struct.one_result, ptr %82, i64 %83
  %85 = getelementptr inbounds nuw %struct.one_result, ptr %84, i32 0, i32 0
  %86 = load double, ptr %85, align 8
  %87 = load ptr, ptr @results, align 8
  %88 = getelementptr inbounds %struct.one_result, ptr %87, i64 0
  %89 = getelementptr inbounds nuw %struct.one_result, ptr %88, i32 0, i32 0
  %90 = load double, ptr %89, align 8
  %91 = fdiv double %86, %90
  %92 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %57, i32 noundef %65, ptr noundef @.str.5, ptr noundef %70, double noundef %75, double noundef %81, double noundef %91)
  br label %93

93:                                               ; preds = %56
  %94 = add nsw i32 %57, 1
  %95 = load i32, ptr @current_test, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %56, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %93
  %.lcssa15 = phi i32 [ %94, %93 ]
  store i32 %.lcssa15, ptr %11, align 4
  br label %97

97:                                               ; preds = %._crit_edge3, %44
  store i32 0, ptr %11, align 4
  %98 = load i32, ptr %11, align 4
  %99 = load i32, ptr @current_test, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %.lr.ph5, label %114

.lr.ph5:                                          ; preds = %97
  %101 = load ptr, ptr @results, align 8
  %102 = load i32, ptr @current_test, align 4
  %.promoted16 = load i32, ptr %11, align 4
  %.promoted18 = load double, ptr %13, align 8
  br label %103

103:                                              ; preds = %.lr.ph5, %111
  %104 = phi double [ %.promoted18, %.lr.ph5 ], [ %110, %111 ]
  %105 = phi i32 [ %.promoted16, %.lr.ph5 ], [ %112, %111 ]
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.one_result, ptr %101, i64 %106
  %108 = getelementptr inbounds nuw %struct.one_result, ptr %107, i32 0, i32 0
  %109 = load double, ptr %108, align 8
  %110 = fadd double %104, %109
  br label %111

111:                                              ; preds = %103
  %112 = add nsw i32 %105, 1
  %113 = icmp slt i32 %112, %102
  br i1 %113, label %103, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %111
  %.lcssa19 = phi double [ %110, %111 ]
  %.lcssa17 = phi i32 [ %112, %111 ]
  store i32 %.lcssa17, ptr %11, align 4
  store double %.lcssa19, ptr %13, align 8
  br label %114

114:                                              ; preds = %._crit_edge6, %97
  %115 = load ptr, ptr %6, align 8
  %116 = load double, ptr %13, align 8
  %117 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %115, double noundef %116)
  %118 = load i32, ptr @current_test, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %155

120:                                              ; preds = %114
  %121 = load i32, ptr %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %120
  store i32 1, ptr %11, align 4
  %124 = load i32, ptr %11, align 4
  %125 = load i32, ptr @current_test, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %.lr.ph8, label %146

.lr.ph8:                                          ; preds = %123
  %.promoted20 = load i32, ptr %11, align 4
  %.promoted22 = load double, ptr %14, align 8
  br label %127

127:                                              ; preds = %.lr.ph8, %142
  %128 = phi double [ %.promoted22, %.lr.ph8 ], [ %141, %142 ]
  %129 = phi i32 [ %.promoted20, %.lr.ph8 ], [ %143, %142 ]
  %130 = load ptr, ptr @results, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.one_result, ptr %130, i64 %131
  %133 = getelementptr inbounds nuw %struct.one_result, ptr %132, i32 0, i32 0
  %134 = load double, ptr %133, align 8
  %135 = load ptr, ptr @results, align 8
  %136 = getelementptr inbounds %struct.one_result, ptr %135, i64 0
  %137 = getelementptr inbounds nuw %struct.one_result, ptr %136, i32 0, i32 0
  %138 = load double, ptr %137, align 8
  %139 = fdiv double %134, %138
  %140 = call double @log(double noundef %139) #15
  %141 = fadd double %128, %140
  br label %142

142:                                              ; preds = %127
  %143 = add nsw i32 %129, 1
  %144 = load i32, ptr @current_test, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %127, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %142
  %.lcssa23 = phi double [ %141, %142 ]
  %.lcssa21 = phi i32 [ %143, %142 ]
  store i32 %.lcssa21, ptr %11, align 4
  store double %.lcssa23, ptr %14, align 8
  br label %146

146:                                              ; preds = %._crit_edge9, %123
  %147 = load ptr, ptr %6, align 8
  %148 = load double, ptr %14, align 8
  %149 = load i32, ptr @current_test, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sitofp i32 %150 to double
  %152 = fdiv double %148, %151
  %153 = call double @exp(double noundef %152) #15
  %154 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %147, double noundef %153)
  br label %155

155:                                              ; preds = %146, %120, %114
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
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr @current_test, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  %.promoted = load i32, ptr %5, align 4
  %.promoted9 = load i32, ptr %7, align 4
  br label %12

12:                                               ; preds = %.lr.ph, %26
  %13 = phi i32 [ %.promoted9, %.lr.ph ], [ %25, %26 ]
  %14 = phi i32 [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %15 = load ptr, ptr @results, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %struct.one_result, ptr %15, i64 %16
  %18 = getelementptr inbounds nuw %struct.one_result, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i64 @strlen(ptr noundef %19) #15
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, %13
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %12
  %25 = phi i32 [ %21, %23 ], [ %13, %12 ]
  br label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %14, 1
  %28 = load i32, ptr @current_test, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %12, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %26
  %.lcssa10 = phi i32 [ %25, %26 ]
  %.lcssa8 = phi i32 [ %21, %26 ]
  %.lcssa = phi i32 [ %27, %26 ]
  store i32 %.lcssa, ptr %5, align 4
  store i32 %.lcssa8, ptr %8, align 4
  store i32 %.lcssa10, ptr %7, align 4
  br label %30

30:                                               ; preds = %._crit_edge, %2
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %7, align 4
  %33 = sub nsw i32 %32, 12
  %34 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %31, ptr noundef @.str.8, i32 noundef %33, ptr noundef @.str.2)
  %35 = load ptr, ptr %3, align 8
  %36 = load i32, ptr %7, align 4
  %37 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %35, ptr noundef @.str.9, i32 noundef %36, ptr noundef @.str.2)
  store i32 0, ptr %5, align 4
  %38 = load i32, ptr %5, align 4
  %39 = load i32, ptr @current_test, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %.lr.ph2, label %69

.lr.ph2:                                          ; preds = %30
  %41 = load ptr, ptr %3, align 8
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %.promoted11 = load i32, ptr %5, align 4
  br label %44

44:                                               ; preds = %.lr.ph2, %65
  %45 = phi i32 [ %.promoted11, %.lr.ph2 ], [ %66, %65 ]
  %46 = load ptr, ptr @results, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.one_result, ptr %46, i64 %47
  %49 = getelementptr inbounds nuw %struct.one_result, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = call i64 @strlen(ptr noundef %50) #15
  %52 = sub i64 %43, %51
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr @results, align 8
  %55 = sext i32 %45 to i64
  %56 = getelementptr inbounds %struct.one_result, ptr %54, i64 %55
  %57 = getelementptr inbounds nuw %struct.one_result, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr @results, align 8
  %60 = sext i32 %45 to i64
  %61 = getelementptr inbounds %struct.one_result, ptr %59, i64 %60
  %62 = getelementptr inbounds nuw %struct.one_result, ptr %61, i32 0, i32 0
  %63 = load double, ptr %62, align 8
  %64 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %41, ptr noundef @.str.10, i32 noundef %45, i32 noundef %53, ptr noundef @.str.5, ptr noundef %58, double noundef %63)
  br label %65

65:                                               ; preds = %44
  %66 = add nsw i32 %45, 1
  %67 = load i32, ptr @current_test, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %44, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %65
  %.lcssa12 = phi i32 [ %66, %65 ]
  store i32 %.lcssa12, ptr %5, align 4
  br label %69

69:                                               ; preds = %._crit_edge3, %30
  store i32 0, ptr %5, align 4
  %70 = load i32, ptr %5, align 4
  %71 = load i32, ptr @current_test, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %.lr.ph5, label %86

.lr.ph5:                                          ; preds = %69
  %73 = load ptr, ptr @results, align 8
  %74 = load i32, ptr @current_test, align 4
  %.promoted13 = load i32, ptr %5, align 4
  %.promoted15 = load double, ptr %6, align 8
  br label %75

75:                                               ; preds = %.lr.ph5, %83
  %76 = phi double [ %.promoted15, %.lr.ph5 ], [ %82, %83 ]
  %77 = phi i32 [ %.promoted13, %.lr.ph5 ], [ %84, %83 ]
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.one_result, ptr %73, i64 %78
  %80 = getelementptr inbounds nuw %struct.one_result, ptr %79, i32 0, i32 0
  %81 = load double, ptr %80, align 8
  %82 = fadd double %76, %81
  br label %83

83:                                               ; preds = %75
  %84 = add nsw i32 %77, 1
  %85 = icmp slt i32 %84, %74
  br i1 %85, label %75, label %._crit_edge6, !llvm.loop !14

._crit_edge6:                                     ; preds = %83
  %.lcssa16 = phi double [ %82, %83 ]
  %.lcssa14 = phi i32 [ %84, %83 ]
  store i32 %.lcssa14, ptr %5, align 4
  store double %.lcssa16, ptr %6, align 8
  br label %86

86:                                               ; preds = %._crit_edge6, %69
  %87 = load ptr, ptr %3, align 8
  %88 = load ptr, ptr %4, align 8
  %89 = load double, ptr %6, align 8
  %90 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %87, ptr noundef @.str.6, ptr noundef %88, double noundef %89)
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
  br i1 %17, label %18, label %62

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
  %27 = load ptr, ptr %6, align 8
  %28 = load double, ptr %7, align 8
  %.promoted3 = load ptr, ptr %9, align 8
  %.promoted = load ptr, ptr %8, align 8
  %.promoted8 = load double, ptr %10, align 8
  br label %29

29:                                               ; preds = %50, %18
  %30 = phi double [ %51, %50 ], [ %.promoted8, %18 ]
  %.lcssa27 = phi ptr [ %.lcssa26, %50 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %.lcssa, %50 ], [ %.promoted3, %18 ]
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %33, %31 ], [ %.lcssa4, %29 ]
  %33 = getelementptr inbounds double, ptr %32, i32 -1
  %34 = load double, ptr %33, align 8
  %35 = call noundef zeroext i1 %23(double noundef %24, double noundef %34)
  br i1 %35, label %31, label %36, !llvm.loop !17

36:                                               ; preds = %31
  %.lcssa = phi ptr [ %33, %31 ]
  %37 = icmp ult ptr %.lcssa27, %.lcssa
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  %.lcssa9 = phi double [ %30, %36 ]
  %.lcssa27.lcssa = phi ptr [ %.lcssa27, %36 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %36 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa27.lcssa, ptr %8, align 8
  store double %.lcssa9, ptr %10, align 8
  br label %53

39:                                               ; preds = %36
  %40 = load double, ptr %.lcssa27, align 8
  %41 = call noundef zeroext i1 %25(double noundef %40, double noundef %26)
  br i1 %41, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %39
  br label %42

42:                                               ; preds = %.lr.ph, %42
  %43 = phi ptr [ %.lcssa27, %.lr.ph ], [ %44, %42 ]
  %44 = getelementptr inbounds nuw double, ptr %43, i32 1
  %45 = load double, ptr %44, align 8
  %46 = call noundef zeroext i1 %27(double noundef %45, double noundef %28)
  br i1 %46, label %42, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %42
  %.lcssa2 = phi ptr [ %44, %42 ]
  br label %47

47:                                               ; preds = %._crit_edge, %39
  %.lcssa26 = phi ptr [ %.lcssa2, %._crit_edge ], [ %.lcssa27, %39 ]
  %48 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  %.lcssa10 = phi double [ %30, %47 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %47 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %47 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  store double %.lcssa10, ptr %10, align 8
  br label %53

50:                                               ; preds = %47
  %51 = load double, ptr %.lcssa, align 8
  %52 = load double, ptr %.lcssa26, align 8
  store double %52, ptr %.lcssa, align 8
  store double %51, ptr %.lcssa26, align 8
  br label %29, !llvm.loop !19

53:                                               ; preds = %49, %38
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds double, ptr %55, i64 1
  %57 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %54, ptr noundef %56, ptr noundef %57)
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds double, ptr %58, i64 1
  %60 = load ptr, ptr %5, align 8
  %61 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  br label %62

62:                                               ; preds = %53, %3
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
  br i1 %17, label %18, label %62

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
  %27 = load ptr, ptr %6, align 8
  %28 = load double, ptr %7, align 8
  %.promoted3 = load ptr, ptr %9, align 8
  %.promoted = load ptr, ptr %8, align 8
  %.promoted8 = load double, ptr %10, align 8
  br label %29

29:                                               ; preds = %50, %18
  %30 = phi double [ %51, %50 ], [ %.promoted8, %18 ]
  %.lcssa27 = phi ptr [ %.lcssa26, %50 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %.lcssa, %50 ], [ %.promoted3, %18 ]
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %33, %31 ], [ %.lcssa4, %29 ]
  %33 = getelementptr inbounds double, ptr %32, i32 -1
  %34 = load double, ptr %33, align 8
  %35 = call noundef zeroext i1 %23(double noundef %24, double noundef %34)
  br i1 %35, label %31, label %36, !llvm.loop !20

36:                                               ; preds = %31
  %.lcssa = phi ptr [ %33, %31 ]
  %37 = icmp ult ptr %.lcssa27, %.lcssa
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  %.lcssa9 = phi double [ %30, %36 ]
  %.lcssa27.lcssa = phi ptr [ %.lcssa27, %36 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %36 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa27.lcssa, ptr %8, align 8
  store double %.lcssa9, ptr %10, align 8
  br label %53

39:                                               ; preds = %36
  %40 = load double, ptr %.lcssa27, align 8
  %41 = call noundef zeroext i1 %25(double noundef %40, double noundef %26)
  br i1 %41, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %39
  br label %42

42:                                               ; preds = %.lr.ph, %42
  %43 = phi ptr [ %.lcssa27, %.lr.ph ], [ %44, %42 ]
  %44 = getelementptr inbounds nuw double, ptr %43, i32 1
  %45 = load double, ptr %44, align 8
  %46 = call noundef zeroext i1 %27(double noundef %45, double noundef %28)
  br i1 %46, label %42, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %42
  %.lcssa2 = phi ptr [ %44, %42 ]
  br label %47

47:                                               ; preds = %._crit_edge, %39
  %.lcssa26 = phi ptr [ %.lcssa2, %._crit_edge ], [ %.lcssa27, %39 ]
  %48 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  %.lcssa10 = phi double [ %30, %47 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %47 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %47 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  store double %.lcssa10, ptr %10, align 8
  br label %53

50:                                               ; preds = %47
  %51 = load double, ptr %.lcssa, align 8
  %52 = load double, ptr %.lcssa26, align 8
  store double %52, ptr %.lcssa, align 8
  store double %51, ptr %.lcssa26, align 8
  br label %29, !llvm.loop !22

53:                                               ; preds = %49, %38
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds double, ptr %55, i64 1
  %57 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %54, ptr noundef %56, ptr noundef %57)
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds double, ptr %58, i64 1
  %60 = load ptr, ptr %5, align 8
  %61 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  br label %62

62:                                               ; preds = %53, %3
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
  %47 = load i32, ptr %10, align 4
  %48 = load i32, ptr %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %.lr.ph, label %61

.lr.ph:                                           ; preds = %36
  %50 = load ptr, ptr %9, align 8
  %51 = load i32, ptr %8, align 4
  %.promoted = load i32, ptr %10, align 4
  br label %52

52:                                               ; preds = %.lr.ph, %58
  %53 = phi i32 [ %.promoted, %.lr.ph ], [ %59, %58 ]
  %54 = call i32 @rand()
  %55 = sitofp i32 %54 to double
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds double, ptr %50, i64 %56
  store double %55, ptr %57, align 8
  br label %58

58:                                               ; preds = %52
  %59 = add nsw i32 %53, 1
  %60 = icmp slt i32 %59, %51
  br i1 %60, label %52, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %58
  %.lcssa = phi i32 [ %59, %58 ]
  store i32 %.lcssa, ptr %10, align 4
  br label %61

61:                                               ; preds = %._crit_edge, %36
  %62 = load i32, ptr %8, align 4
  %63 = sext i32 %62 to i64
  %64 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %63, i64 8)
  %65 = extractvalue { i64, i1 } %64, 1
  %66 = extractvalue { i64, i1 } %64, 0
  %67 = select i1 %65, i64 -1, i64 %66
  %68 = call noalias noundef nonnull ptr @_Znay(i64 noundef %67) #16
  store ptr %68, ptr %11, align 8
  store i32 0, ptr %6, align 4
  %69 = load i32, ptr %6, align 4
  %70 = load i32, ptr %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %.lr.ph2, label %93

.lr.ph2:                                          ; preds = %61
  %72 = load ptr, ptr %9, align 8
  %73 = load ptr, ptr %9, align 8
  %74 = load i32, ptr %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, ptr %73, i64 %75
  %77 = load ptr, ptr %11, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load ptr, ptr %11, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, ptr %82, i64 %84
  %86 = load i32, ptr %7, align 4
  %.promoted40 = load i32, ptr %6, align 4
  br label %87

87:                                               ; preds = %.lr.ph2, %90
  %88 = phi i32 [ %.promoted40, %.lr.ph2 ], [ %91, %90 ]
  %89 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %72, ptr noundef %76, ptr noundef %77)
  call void @qsort(ptr noundef %78, i64 noundef %80, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %81, ptr noundef %85)
  br label %90

90:                                               ; preds = %87
  %91 = add nsw i32 %88, 1
  %92 = icmp slt i32 %91, %86
  br i1 %92, label %87, label %._crit_edge3, !llvm.loop !24

._crit_edge3:                                     ; preds = %90
  %.lcssa41 = phi i32 [ %91, %90 ]
  store i32 %.lcssa41, ptr %6, align 4
  br label %93

93:                                               ; preds = %._crit_edge3, %61
  store i32 0, ptr %6, align 4
  %94 = load i32, ptr %6, align 4
  %95 = load i32, ptr %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %.lr.ph5, label %120

.lr.ph5:                                          ; preds = %93
  %97 = load ptr, ptr %9, align 8
  %98 = load ptr, ptr %9, align 8
  %99 = load i32, ptr %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %98, i64 %100
  %102 = load ptr, ptr %11, align 8
  %103 = load ptr, ptr %11, align 8
  %104 = load ptr, ptr %11, align 8
  %105 = load i32, ptr %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, ptr %104, i64 %106
  %108 = load ptr, ptr %11, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = load i32, ptr %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, ptr %109, i64 %111
  %113 = load i32, ptr %7, align 4
  %.promoted42 = load i32, ptr %6, align 4
  br label %114

114:                                              ; preds = %.lr.ph5, %117
  %115 = phi i32 [ %.promoted42, %.lr.ph5 ], [ %118, %117 ]
  %116 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %97, ptr noundef %101, ptr noundef %102)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %103, ptr noundef %107, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %108, ptr noundef %112)
  br label %117

117:                                              ; preds = %114
  %118 = add nsw i32 %115, 1
  %119 = icmp slt i32 %118, %113
  br i1 %119, label %114, label %._crit_edge6, !llvm.loop !25

._crit_edge6:                                     ; preds = %117
  %.lcssa43 = phi i32 [ %118, %117 ]
  store i32 %.lcssa43, ptr %6, align 4
  br label %120

120:                                              ; preds = %._crit_edge6, %93
  store i32 0, ptr %6, align 4
  %121 = load i32, ptr %6, align 4
  %122 = load i32, ptr %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %.lr.ph8, label %147

.lr.ph8:                                          ; preds = %120
  %124 = load ptr, ptr %9, align 8
  %125 = load ptr, ptr %9, align 8
  %126 = load i32, ptr %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, ptr %125, i64 %127
  %129 = load ptr, ptr %11, align 8
  %130 = load ptr, ptr %11, align 8
  %131 = load ptr, ptr %11, align 8
  %132 = load i32, ptr %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, ptr %131, i64 %133
  %135 = load ptr, ptr %11, align 8
  %136 = load ptr, ptr %11, align 8
  %137 = load i32, ptr %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, ptr %136, i64 %138
  %140 = load i32, ptr %7, align 4
  %.promoted44 = load i32, ptr %6, align 4
  br label %141

141:                                              ; preds = %.lr.ph8, %144
  %142 = phi i32 [ %.promoted44, %.lr.ph8 ], [ %145, %144 ]
  %143 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %124, ptr noundef %128, ptr noundef %129)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %130, ptr noundef %134, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %135, ptr noundef %139)
  br label %144

144:                                              ; preds = %141
  %145 = add nsw i32 %142, 1
  %146 = icmp slt i32 %145, %140
  br i1 %146, label %141, label %._crit_edge9, !llvm.loop !26

._crit_edge9:                                     ; preds = %144
  %.lcssa45 = phi i32 [ %145, %144 ]
  store i32 %.lcssa45, ptr %6, align 4
  br label %147

147:                                              ; preds = %._crit_edge9, %120
  store i32 0, ptr %6, align 4
  %148 = load i32, ptr %6, align 4
  %149 = load i32, ptr %7, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %.lr.ph11, label %174

.lr.ph11:                                         ; preds = %147
  %151 = load ptr, ptr %9, align 8
  %152 = load ptr, ptr %9, align 8
  %153 = load i32, ptr %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %152, i64 %154
  %156 = load ptr, ptr %11, align 8
  %157 = load ptr, ptr %11, align 8
  %158 = load ptr, ptr %11, align 8
  %159 = load i32, ptr %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, ptr %158, i64 %160
  %162 = load ptr, ptr %11, align 8
  %163 = load ptr, ptr %11, align 8
  %164 = load i32, ptr %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, ptr %163, i64 %165
  %167 = load i32, ptr %7, align 4
  %.promoted46 = load i32, ptr %6, align 4
  br label %168

168:                                              ; preds = %.lr.ph11, %171
  %169 = phi i32 [ %.promoted46, %.lr.ph11 ], [ %172, %171 ]
  %170 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %151, ptr noundef %155, ptr noundef %156)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %157, ptr noundef %161)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %162, ptr noundef %166)
  br label %171

171:                                              ; preds = %168
  %172 = add nsw i32 %169, 1
  %173 = icmp slt i32 %172, %167
  br i1 %173, label %168, label %._crit_edge12, !llvm.loop !27

._crit_edge12:                                    ; preds = %171
  %.lcssa47 = phi i32 [ %172, %171 ]
  store i32 %.lcssa47, ptr %6, align 4
  br label %174

174:                                              ; preds = %._crit_edge12, %147
  store i32 0, ptr %6, align 4
  %175 = load i32, ptr %6, align 4
  %176 = load i32, ptr %7, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %.lr.ph14, label %201

.lr.ph14:                                         ; preds = %174
  %178 = load ptr, ptr %9, align 8
  %179 = load ptr, ptr %9, align 8
  %180 = load i32, ptr %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, ptr %179, i64 %181
  %183 = load ptr, ptr %11, align 8
  %184 = load ptr, ptr %11, align 8
  %185 = load ptr, ptr %11, align 8
  %186 = load i32, ptr %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, ptr %185, i64 %187
  %189 = load ptr, ptr %11, align 8
  %190 = load ptr, ptr %11, align 8
  %191 = load i32, ptr %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, ptr %190, i64 %192
  %194 = load i32, ptr %7, align 4
  %.promoted48 = load i32, ptr %6, align 4
  br label %195

195:                                              ; preds = %.lr.ph14, %198
  %196 = phi i32 [ %.promoted48, %.lr.ph14 ], [ %199, %198 ]
  %197 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %178, ptr noundef %182, ptr noundef %183)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %184, ptr noundef %188, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %189, ptr noundef %193)
  br label %198

198:                                              ; preds = %195
  %199 = add nsw i32 %196, 1
  %200 = icmp slt i32 %199, %194
  br i1 %200, label %195, label %._crit_edge15, !llvm.loop !28

._crit_edge15:                                    ; preds = %198
  %.lcssa49 = phi i32 [ %199, %198 ]
  store i32 %.lcssa49, ptr %6, align 4
  br label %201

201:                                              ; preds = %._crit_edge15, %174
  store i32 0, ptr %6, align 4
  %202 = load i32, ptr %6, align 4
  %203 = load i32, ptr %7, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %.lr.ph17, label %230

.lr.ph17:                                         ; preds = %201
  %205 = load ptr, ptr %9, align 8
  %206 = load ptr, ptr %9, align 8
  %207 = load i32, ptr %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, ptr %206, i64 %208
  %210 = load ptr, ptr %11, align 8
  %211 = load ptr, ptr %11, align 8
  %212 = load ptr, ptr %11, align 8
  %213 = load i32, ptr %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds double, ptr %212, i64 %214
  %216 = getelementptr inbounds nuw %struct.less_than_functor, ptr %12, i32 0, i32 0
  %217 = load i8, ptr %216, align 1
  %218 = load ptr, ptr %11, align 8
  %219 = load ptr, ptr %11, align 8
  %220 = load i32, ptr %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, ptr %219, i64 %221
  %223 = load i32, ptr %7, align 4
  %.promoted50 = load i32, ptr %6, align 4
  br label %224

224:                                              ; preds = %.lr.ph17, %227
  %225 = phi i32 [ %.promoted50, %.lr.ph17 ], [ %228, %227 ]
  %226 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %205, ptr noundef %209, ptr noundef %210)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %211, ptr noundef %215, i8 %217)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %218, ptr noundef %222)
  br label %227

227:                                              ; preds = %224
  %228 = add nsw i32 %225, 1
  %229 = icmp slt i32 %228, %223
  br i1 %229, label %224, label %._crit_edge18, !llvm.loop !29

._crit_edge18:                                    ; preds = %227
  %.lcssa51 = phi i32 [ %228, %227 ]
  store i32 %.lcssa51, ptr %6, align 4
  br label %230

230:                                              ; preds = %._crit_edge18, %201
  store i32 0, ptr %6, align 4
  %231 = load i32, ptr %6, align 4
  %232 = load i32, ptr %7, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %.lr.ph20, label %259

.lr.ph20:                                         ; preds = %230
  %234 = load ptr, ptr %11, align 8
  %235 = load ptr, ptr %11, align 8
  %236 = load i32, ptr %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double, ptr %235, i64 %237
  %239 = getelementptr inbounds nuw %struct.less_than_functor, ptr %13, i32 0, i32 0
  %240 = load i8, ptr %239, align 1
  %241 = load ptr, ptr %11, align 8
  %242 = load ptr, ptr %11, align 8
  %243 = load i32, ptr %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds double, ptr %242, i64 %244
  %246 = load ptr, ptr %9, align 8
  %247 = load ptr, ptr %9, align 8
  %248 = load i32, ptr %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double, ptr %247, i64 %249
  %251 = load ptr, ptr %11, align 8
  %252 = load i32, ptr %7, align 4
  %.promoted52 = load i32, ptr %6, align 4
  br label %253

253:                                              ; preds = %.lr.ph20, %256
  %254 = phi i32 [ %.promoted52, %.lr.ph20 ], [ %257, %256 ]
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %234, ptr noundef %238, i8 %240)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %241, ptr noundef %245)
  %255 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %246, ptr noundef %250, ptr noundef %251)
  br label %256

256:                                              ; preds = %253
  %257 = add nsw i32 %254, 1
  %258 = icmp slt i32 %257, %252
  br i1 %258, label %253, label %._crit_edge21, !llvm.loop !30

._crit_edge21:                                    ; preds = %256
  %.lcssa53 = phi i32 [ %257, %256 ]
  store i32 %.lcssa53, ptr %6, align 4
  br label %259

259:                                              ; preds = %._crit_edge21, %230
  store i32 0, ptr %6, align 4
  %260 = load i32, ptr %6, align 4
  %261 = load i32, ptr %7, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %.lr.ph23, label %288

.lr.ph23:                                         ; preds = %259
  %263 = load ptr, ptr %9, align 8
  %264 = load ptr, ptr %9, align 8
  %265 = load i32, ptr %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double, ptr %264, i64 %266
  %268 = load ptr, ptr %11, align 8
  %269 = load ptr, ptr %11, align 8
  %270 = load ptr, ptr %11, align 8
  %271 = load i32, ptr %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, ptr %270, i64 %272
  %274 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %14, i32 0, i32 0
  %275 = load i8, ptr %274, align 1
  %276 = load ptr, ptr %11, align 8
  %277 = load ptr, ptr %11, align 8
  %278 = load i32, ptr %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds double, ptr %277, i64 %279
  %281 = load i32, ptr %7, align 4
  %.promoted54 = load i32, ptr %6, align 4
  br label %282

282:                                              ; preds = %.lr.ph23, %285
  %283 = phi i32 [ %.promoted54, %.lr.ph23 ], [ %286, %285 ]
  %284 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %263, ptr noundef %267, ptr noundef %268)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %269, ptr noundef %273, i8 %275)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %276, ptr noundef %280)
  br label %285

285:                                              ; preds = %282
  %286 = add nsw i32 %283, 1
  %287 = icmp slt i32 %286, %281
  br i1 %287, label %282, label %._crit_edge24, !llvm.loop !31

._crit_edge24:                                    ; preds = %285
  %.lcssa55 = phi i32 [ %286, %285 ]
  store i32 %.lcssa55, ptr %6, align 4
  br label %288

288:                                              ; preds = %._crit_edge24, %259
  store i32 0, ptr %6, align 4
  %289 = load i32, ptr %6, align 4
  %290 = load i32, ptr %7, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %.lr.ph26, label %317

.lr.ph26:                                         ; preds = %288
  %292 = load ptr, ptr %9, align 8
  %293 = load ptr, ptr %9, align 8
  %294 = load i32, ptr %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds double, ptr %293, i64 %295
  %297 = load ptr, ptr %11, align 8
  %298 = load ptr, ptr %11, align 8
  %299 = load ptr, ptr %11, align 8
  %300 = load i32, ptr %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds double, ptr %299, i64 %301
  %303 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %15, i32 0, i32 0
  %304 = load i8, ptr %303, align 1
  %305 = load ptr, ptr %11, align 8
  %306 = load ptr, ptr %11, align 8
  %307 = load i32, ptr %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, ptr %306, i64 %308
  %310 = load i32, ptr %7, align 4
  %.promoted56 = load i32, ptr %6, align 4
  br label %311

311:                                              ; preds = %.lr.ph26, %314
  %312 = phi i32 [ %.promoted56, %.lr.ph26 ], [ %315, %314 ]
  %313 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %292, ptr noundef %296, ptr noundef %297)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %298, ptr noundef %302, i8 %304)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %305, ptr noundef %309)
  br label %314

314:                                              ; preds = %311
  %315 = add nsw i32 %312, 1
  %316 = icmp slt i32 %315, %310
  br i1 %316, label %311, label %._crit_edge27, !llvm.loop !32

._crit_edge27:                                    ; preds = %314
  %.lcssa57 = phi i32 [ %315, %314 ]
  store i32 %.lcssa57, ptr %6, align 4
  br label %317

317:                                              ; preds = %._crit_edge27, %288
  store i32 0, ptr %6, align 4
  %318 = load i32, ptr %6, align 4
  %319 = load i32, ptr %7, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %.lr.ph29, label %346

.lr.ph29:                                         ; preds = %317
  %321 = load ptr, ptr %9, align 8
  %322 = load ptr, ptr %9, align 8
  %323 = load i32, ptr %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds double, ptr %322, i64 %324
  %326 = load ptr, ptr %11, align 8
  %327 = load ptr, ptr %11, align 8
  %328 = load ptr, ptr %11, align 8
  %329 = load i32, ptr %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds double, ptr %328, i64 %330
  %332 = getelementptr inbounds nuw %"struct.std::less", ptr %16, i32 0, i32 0
  %333 = load i8, ptr %332, align 1
  %334 = load ptr, ptr %11, align 8
  %335 = load ptr, ptr %11, align 8
  %336 = load i32, ptr %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds double, ptr %335, i64 %337
  %339 = load i32, ptr %7, align 4
  %.promoted58 = load i32, ptr %6, align 4
  br label %340

340:                                              ; preds = %.lr.ph29, %343
  %341 = phi i32 [ %.promoted58, %.lr.ph29 ], [ %344, %343 ]
  %342 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %321, ptr noundef %325, ptr noundef %326)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %327, ptr noundef %331, i8 %333)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %334, ptr noundef %338)
  br label %343

343:                                              ; preds = %340
  %344 = add nsw i32 %341, 1
  %345 = icmp slt i32 %344, %339
  br i1 %345, label %340, label %._crit_edge30, !llvm.loop !33

._crit_edge30:                                    ; preds = %343
  %.lcssa59 = phi i32 [ %344, %343 ]
  store i32 %.lcssa59, ptr %6, align 4
  br label %346

346:                                              ; preds = %._crit_edge30, %317
  store i32 0, ptr %6, align 4
  %347 = load i32, ptr %6, align 4
  %348 = load i32, ptr %7, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %.lr.ph32, label %375

.lr.ph32:                                         ; preds = %346
  %350 = load ptr, ptr %9, align 8
  %351 = load ptr, ptr %9, align 8
  %352 = load i32, ptr %8, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds double, ptr %351, i64 %353
  %355 = load ptr, ptr %11, align 8
  %356 = load ptr, ptr %11, align 8
  %357 = load ptr, ptr %11, align 8
  %358 = load i32, ptr %8, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds double, ptr %357, i64 %359
  %361 = getelementptr inbounds nuw %"struct.std::less", ptr %17, i32 0, i32 0
  %362 = load i8, ptr %361, align 1
  %363 = load ptr, ptr %11, align 8
  %364 = load ptr, ptr %11, align 8
  %365 = load i32, ptr %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, ptr %364, i64 %366
  %368 = load i32, ptr %7, align 4
  %.promoted60 = load i32, ptr %6, align 4
  br label %369

369:                                              ; preds = %.lr.ph32, %372
  %370 = phi i32 [ %.promoted60, %.lr.ph32 ], [ %373, %372 ]
  %371 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %350, ptr noundef %354, ptr noundef %355)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %356, ptr noundef %360, i8 %362)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %363, ptr noundef %367)
  br label %372

372:                                              ; preds = %369
  %373 = add nsw i32 %370, 1
  %374 = icmp slt i32 %373, %368
  br i1 %374, label %369, label %._crit_edge33, !llvm.loop !34

._crit_edge33:                                    ; preds = %372
  %.lcssa61 = phi i32 [ %373, %372 ]
  store i32 %.lcssa61, ptr %6, align 4
  br label %375

375:                                              ; preds = %._crit_edge33, %346
  store i32 0, ptr %6, align 4
  %376 = load i32, ptr %6, align 4
  %377 = load i32, ptr %7, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %.lr.ph35, label %402

.lr.ph35:                                         ; preds = %375
  %379 = load ptr, ptr %9, align 8
  %380 = load ptr, ptr %9, align 8
  %381 = load i32, ptr %8, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds double, ptr %380, i64 %382
  %384 = load ptr, ptr %11, align 8
  %385 = load ptr, ptr %11, align 8
  %386 = load ptr, ptr %11, align 8
  %387 = load i32, ptr %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds double, ptr %386, i64 %388
  %390 = load ptr, ptr %11, align 8
  %391 = load ptr, ptr %11, align 8
  %392 = load i32, ptr %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds double, ptr %391, i64 %393
  %395 = load i32, ptr %7, align 4
  %.promoted62 = load i32, ptr %6, align 4
  br label %396

396:                                              ; preds = %.lr.ph35, %399
  %397 = phi i32 [ %.promoted62, %.lr.ph35 ], [ %400, %399 ]
  %398 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %379, ptr noundef %383, ptr noundef %384)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %385, ptr noundef %389)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %390, ptr noundef %394)
  br label %399

399:                                              ; preds = %396
  %400 = add nsw i32 %397, 1
  %401 = icmp slt i32 %400, %395
  br i1 %401, label %396, label %._crit_edge36, !llvm.loop !35

._crit_edge36:                                    ; preds = %399
  %.lcssa63 = phi i32 [ %400, %399 ]
  store i32 %.lcssa63, ptr %6, align 4
  br label %402

402:                                              ; preds = %._crit_edge36, %375
  store i32 0, ptr %6, align 4
  %403 = load i32, ptr %6, align 4
  %404 = load i32, ptr %7, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %.lr.ph38, label %429

.lr.ph38:                                         ; preds = %402
  %406 = load ptr, ptr %9, align 8
  %407 = load ptr, ptr %9, align 8
  %408 = load i32, ptr %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds double, ptr %407, i64 %409
  %411 = load ptr, ptr %11, align 8
  %412 = load ptr, ptr %11, align 8
  %413 = load ptr, ptr %11, align 8
  %414 = load i32, ptr %8, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds double, ptr %413, i64 %415
  %417 = load ptr, ptr %11, align 8
  %418 = load ptr, ptr %11, align 8
  %419 = load i32, ptr %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds double, ptr %418, i64 %420
  %422 = load i32, ptr %7, align 4
  %.promoted64 = load i32, ptr %6, align 4
  br label %423

423:                                              ; preds = %.lr.ph38, %426
  %424 = phi i32 [ %.promoted64, %.lr.ph38 ], [ %427, %426 ]
  %425 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %406, ptr noundef %410, ptr noundef %411)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %412, ptr noundef %416)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %417, ptr noundef %421)
  br label %426

426:                                              ; preds = %423
  %427 = add nsw i32 %424, 1
  %428 = icmp slt i32 %427, %422
  br i1 %428, label %423, label %._crit_edge39, !llvm.loop !36

._crit_edge39:                                    ; preds = %426
  %.lcssa65 = phi i32 [ %427, %426 ]
  store i32 %.lcssa65, ptr %6, align 4
  br label %429

429:                                              ; preds = %._crit_edge39, %402
  %430 = load ptr, ptr %11, align 8
  %431 = icmp eq ptr %430, null
  br i1 %431, label %433, label %432

432:                                              ; preds = %429
  call void @_ZdaPv(ptr noundef %430) #17
  br label %433

433:                                              ; preds = %432, %429
  %434 = load ptr, ptr %9, align 8
  %435 = icmp eq ptr %434, null
  br i1 %435, label %437, label %436

436:                                              ; preds = %433
  call void @_ZdaPv(ptr noundef %434) #17
  br label %437

437:                                              ; preds = %436, %433
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
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ne ptr %9, %10
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %.promoted = load ptr, ptr %3, align 8
  %.promoted2 = load ptr, ptr %5, align 8
  br label %15

13:                                               ; preds = %15
  %14 = icmp ne ptr %18, %12
  br i1 %14, label %15, label %..loopexit_crit_edge, !llvm.loop !37

15:                                               ; preds = %.lr.ph, %13
  %16 = phi ptr [ %.promoted2, %.lr.ph ], [ %20, %13 ]
  %17 = phi ptr [ %.promoted, %.lr.ph ], [ %18, %13 ]
  %18 = getelementptr inbounds nuw double, ptr %17, i32 1
  %19 = load double, ptr %17, align 8
  %20 = getelementptr inbounds nuw double, ptr %16, i32 1
  %21 = load double, ptr %16, align 8
  %22 = fcmp olt double %19, %21
  br i1 %22, label %23, label %13

23:                                               ; preds = %15
  %.lcssa3 = phi ptr [ %20, %15 ]
  %.lcssa = phi ptr [ %18, %15 ]
  store ptr %.lcssa, ptr %3, align 8
  store ptr %.lcssa3, ptr %5, align 8
  %24 = load i32, ptr @current_test, align 4
  %25 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %24)
  br label %26

..loopexit_crit_edge:                             ; preds = %13
  %.lcssa4 = phi ptr [ %20, %13 ]
  %.lcssa1 = phi ptr [ %18, %13 ]
  store ptr %.lcssa1, ptr %3, align 8
  store ptr %.lcssa4, ptr %5, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
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
  br i1 %15, label %16, label %55

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
  %23 = load double, ptr %5, align 8
  %.promoted3 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted8 = load double, ptr %8, align 8
  br label %24

24:                                               ; preds = %45, %16
  %25 = phi double [ %46, %45 ], [ %.promoted8, %16 ]
  %.lcssa27 = phi ptr [ %.lcssa26, %45 ], [ %.promoted, %16 ]
  %.lcssa4 = phi ptr [ %.lcssa, %45 ], [ %.promoted3, %16 ]
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %28, %26 ], [ %.lcssa4, %24 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = load double, ptr %28, align 8
  %30 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %21, double noundef %29)
  br i1 %30, label %26, label %31, !llvm.loop !38

31:                                               ; preds = %26
  %.lcssa = phi ptr [ %28, %26 ]
  %32 = icmp ult ptr %.lcssa27, %.lcssa
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  %.lcssa9 = phi double [ %25, %31 ]
  %.lcssa27.lcssa = phi ptr [ %.lcssa27, %31 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %31 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa27.lcssa, ptr %6, align 8
  store double %.lcssa9, ptr %8, align 8
  br label %48

34:                                               ; preds = %31
  %35 = load double, ptr %.lcssa27, align 8
  %36 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %35, double noundef %22)
  br i1 %36, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph, %37
  %38 = phi ptr [ %.lcssa27, %.lr.ph ], [ %39, %37 ]
  %39 = getelementptr inbounds nuw double, ptr %38, i32 1
  %40 = load double, ptr %39, align 8
  %41 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %40, double noundef %23)
  br i1 %41, label %37, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %37
  %.lcssa2 = phi ptr [ %39, %37 ]
  br label %42

42:                                               ; preds = %._crit_edge, %34
  %.lcssa26 = phi ptr [ %.lcssa2, %._crit_edge ], [ %.lcssa27, %34 ]
  %43 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  %.lcssa10 = phi double [ %25, %42 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %42 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %42 ]
  store ptr %.lcssa.lcssa5, ptr %7, align 8
  store ptr %.lcssa26.lcssa, ptr %6, align 8
  store double %.lcssa10, ptr %8, align 8
  br label %48

45:                                               ; preds = %42
  %46 = load double, ptr %.lcssa, align 8
  %47 = load double, ptr %.lcssa26, align 8
  store double %47, ptr %.lcssa, align 8
  store double %46, ptr %.lcssa26, align 8
  br label %24, !llvm.loop !40

48:                                               ; preds = %44, %33
  %49 = load ptr, ptr %3, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds double, ptr %50, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %49, ptr noundef %51, ptr noundef @_Z19less_than_function2dd)
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds double, ptr %52, i64 1
  %54 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %53, ptr noundef %54, ptr noundef @_Z19less_than_function2dd)
  br label %55

55:                                               ; preds = %48, %2
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
  br i1 %20, label %21, label %67

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %48, %21
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
  br label %56

36:                                               ; preds = %31
  %37 = load ptr, ptr %8, align 8
  %38 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %38, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %36
  %.promoted1 = load ptr, ptr %8, align 8
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = phi ptr [ %.promoted1, %.lr.ph ], [ %41, %39 ]
  %41 = getelementptr inbounds nuw double, ptr %40, i32 1
  %42 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %42, label %39, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %39
  %.lcssa2 = phi ptr [ %41, %39 ]
  store ptr %.lcssa2, ptr %8, align 8
  br label %43

43:                                               ; preds = %._crit_edge, %36
  %44 = load ptr, ptr %8, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = icmp ult ptr %44, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %56

48:                                               ; preds = %43
  %49 = load ptr, ptr %9, align 8
  %50 = load double, ptr %49, align 8
  store double %50, ptr %10, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = load double, ptr %51, align 8
  %53 = load ptr, ptr %9, align 8
  store double %52, ptr %53, align 8
  %54 = load double, ptr %10, align 8
  %55 = load ptr, ptr %8, align 8
  store double %54, ptr %55, align 8
  br label %26, !llvm.loop !43

56:                                               ; preds = %47, %35
  %57 = load ptr, ptr %5, align 8
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds double, ptr %58, i64 1
  %60 = getelementptr inbounds nuw %struct.less_than_functor, ptr %11, i32 0, i32 0
  %61 = load i8, ptr %60, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %57, ptr noundef %59, i8 %61)
  %62 = load ptr, ptr %9, align 8
  %63 = getelementptr inbounds double, ptr %62, i64 1
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds nuw %struct.less_than_functor, ptr %12, i32 0, i32 0
  %66 = load i8, ptr %65, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %63, ptr noundef %64, i8 %66)
  br label %67

67:                                               ; preds = %56, %3
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
  br i1 %20, label %21, label %67

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %48, %21
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
  br label %56

36:                                               ; preds = %31
  %37 = load ptr, ptr %8, align 8
  %38 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %38, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %36
  %.promoted1 = load ptr, ptr %8, align 8
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = phi ptr [ %.promoted1, %.lr.ph ], [ %41, %39 ]
  %41 = getelementptr inbounds nuw double, ptr %40, i32 1
  %42 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %42, label %39, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %39
  %.lcssa2 = phi ptr [ %41, %39 ]
  store ptr %.lcssa2, ptr %8, align 8
  br label %43

43:                                               ; preds = %._crit_edge, %36
  %44 = load ptr, ptr %8, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = icmp ult ptr %44, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %56

48:                                               ; preds = %43
  %49 = load ptr, ptr %9, align 8
  %50 = load double, ptr %49, align 8
  store double %50, ptr %10, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = load double, ptr %51, align 8
  %53 = load ptr, ptr %9, align 8
  store double %52, ptr %53, align 8
  %54 = load double, ptr %10, align 8
  %55 = load ptr, ptr %8, align 8
  store double %54, ptr %55, align 8
  br label %26, !llvm.loop !46

56:                                               ; preds = %47, %35
  %57 = load ptr, ptr %5, align 8
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds double, ptr %58, i64 1
  %60 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %11, i32 0, i32 0
  %61 = load i8, ptr %60, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %57, ptr noundef %59, i8 %61)
  %62 = load ptr, ptr %9, align 8
  %63 = getelementptr inbounds double, ptr %62, i64 1
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %12, i32 0, i32 0
  %66 = load i8, ptr %65, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %63, ptr noundef %64, i8 %66)
  br label %67

67:                                               ; preds = %56, %3
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
  br i1 %20, label %21, label %67

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %48, %21
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
  br label %56

36:                                               ; preds = %31
  %37 = load ptr, ptr %8, align 8
  %38 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %38, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %36
  %.promoted1 = load ptr, ptr %8, align 8
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = phi ptr [ %.promoted1, %.lr.ph ], [ %41, %39 ]
  %41 = getelementptr inbounds nuw double, ptr %40, i32 1
  %42 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %42, label %39, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %39
  %.lcssa2 = phi ptr [ %41, %39 ]
  store ptr %.lcssa2, ptr %8, align 8
  br label %43

43:                                               ; preds = %._crit_edge, %36
  %44 = load ptr, ptr %8, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = icmp ult ptr %44, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %56

48:                                               ; preds = %43
  %49 = load ptr, ptr %9, align 8
  %50 = load double, ptr %49, align 8
  store double %50, ptr %10, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = load double, ptr %51, align 8
  %53 = load ptr, ptr %9, align 8
  store double %52, ptr %53, align 8
  %54 = load double, ptr %10, align 8
  %55 = load ptr, ptr %8, align 8
  store double %54, ptr %55, align 8
  br label %26, !llvm.loop !49

56:                                               ; preds = %47, %35
  %57 = load ptr, ptr %5, align 8
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds double, ptr %58, i64 1
  %60 = getelementptr inbounds nuw %"struct.std::less", ptr %11, i32 0, i32 0
  %61 = load i8, ptr %60, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %57, ptr noundef %59, i8 %61)
  %62 = load ptr, ptr %9, align 8
  %63 = getelementptr inbounds double, ptr %62, i64 1
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds nuw %"struct.std::less", ptr %12, i32 0, i32 0
  %66 = load i8, ptr %65, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %63, ptr noundef %64, i8 %66)
  br label %67

67:                                               ; preds = %56, %3
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
  br i1 %15, label %16, label %55

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
  %23 = load double, ptr %5, align 8
  %.promoted3 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted8 = load double, ptr %8, align 8
  br label %24

24:                                               ; preds = %45, %16
  %25 = phi double [ %46, %45 ], [ %.promoted8, %16 ]
  %.lcssa27 = phi ptr [ %.lcssa26, %45 ], [ %.promoted, %16 ]
  %.lcssa4 = phi ptr [ %.lcssa, %45 ], [ %.promoted3, %16 ]
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %28, %26 ], [ %.lcssa4, %24 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = load double, ptr %28, align 8
  %30 = fcmp olt double %21, %29
  br i1 %30, label %26, label %31, !llvm.loop !50

31:                                               ; preds = %26
  %.lcssa = phi ptr [ %28, %26 ]
  %32 = icmp ult ptr %.lcssa27, %.lcssa
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  %.lcssa9 = phi double [ %25, %31 ]
  %.lcssa27.lcssa = phi ptr [ %.lcssa27, %31 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %31 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa27.lcssa, ptr %6, align 8
  store double %.lcssa9, ptr %8, align 8
  br label %48

34:                                               ; preds = %31
  %35 = load double, ptr %.lcssa27, align 8
  %36 = fcmp olt double %35, %22
  br i1 %36, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph, %37
  %38 = phi ptr [ %.lcssa27, %.lr.ph ], [ %39, %37 ]
  %39 = getelementptr inbounds nuw double, ptr %38, i32 1
  %40 = load double, ptr %39, align 8
  %41 = fcmp olt double %40, %23
  br i1 %41, label %37, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %37
  %.lcssa2 = phi ptr [ %39, %37 ]
  br label %42

42:                                               ; preds = %._crit_edge, %34
  %.lcssa26 = phi ptr [ %.lcssa2, %._crit_edge ], [ %.lcssa27, %34 ]
  %43 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  %.lcssa10 = phi double [ %25, %42 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %42 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %42 ]
  store ptr %.lcssa.lcssa5, ptr %7, align 8
  store ptr %.lcssa26.lcssa, ptr %6, align 8
  store double %.lcssa10, ptr %8, align 8
  br label %48

45:                                               ; preds = %42
  %46 = load double, ptr %.lcssa, align 8
  %47 = load double, ptr %.lcssa26, align 8
  store double %47, ptr %.lcssa, align 8
  store double %46, ptr %.lcssa26, align 8
  br label %24, !llvm.loop !52

48:                                               ; preds = %44, %33
  %49 = load ptr, ptr %3, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds double, ptr %50, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %49, ptr noundef %51)
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds double, ptr %52, i64 1
  %54 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %53, ptr noundef %54)
  br label %55

55:                                               ; preds = %48, %2
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
  %15 = load ptr, ptr %7, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %11, i32 0, i32 0
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %12, i32 0, i32 0
  %25 = load ptr, ptr %6, align 8
  %26 = ptrtoint ptr %25 to i64
  %.promoted = load i64, ptr %8, align 8
  %.promoted2 = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %27

27:                                               ; preds = %.lr.ph, %39
  %28 = phi ptr [ %.promoted5, %.lr.ph ], [ %43, %39 ]
  %29 = phi ptr [ %.promoted2, %.lr.ph ], [ %43, %39 ]
  %30 = phi i64 [ %.promoted, %.lr.ph ], [ %40, %39 ]
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %.lcssa6 = phi ptr [ %28, %27 ]
  %.lcssa3 = phi ptr [ %29, %27 ]
  %.lcssa = phi i64 [ %30, %27 ]
  store i64 %.lcssa, ptr %8, align 8
  store ptr %.lcssa3, ptr %7, align 8
  store ptr %.lcssa6, ptr %10, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %36 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %37 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %33, ptr noundef %34, ptr noundef %35, i64 %38)
  br label %50

39:                                               ; preds = %27
  %40 = add nsw i64 %30, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %41 = load ptr, ptr %23, align 8
  %42 = ptrtoint ptr %41 to i64
  %43 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %22, ptr noundef %29, i64 %42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %44 = load ptr, ptr %24, align 8
  %45 = ptrtoint ptr %44 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %43, ptr noundef %29, i64 noundef %40, i64 %45)
  %46 = ptrtoint ptr %43 to i64
  %47 = sub i64 %46, %26
  %48 = sdiv exact i64 %47, 8
  %49 = icmp sgt i64 %48, 16
  br i1 %49, label %27, label %..loopexit_crit_edge, !llvm.loop !53

..loopexit_crit_edge:                             ; preds = %39
  %.lcssa7 = phi ptr [ %43, %39 ]
  %.lcssa4 = phi ptr [ %43, %39 ]
  %.lcssa1 = phi i64 [ %40, %39 ]
  store i64 %.lcssa1, ptr %8, align 8
  store ptr %.lcssa4, ptr %7, align 8
  store ptr %.lcssa7, ptr %10, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %50

50:                                               ; preds = %.loopexit, %32
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
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %4
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %9, align 8
  br label %22

22:                                               ; preds = %.lr.ph, %27
  %23 = phi ptr [ %.promoted, %.lr.ph ], [ %28, %27 ]
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %23, ptr noundef %18)
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %19, ptr noundef %20, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds nuw double, ptr %23, i32 1
  %29 = icmp ult ptr %28, %21
  br i1 %29, label %22, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %27
  %.lcssa = phi ptr [ %28, %27 ]
  store ptr %.lcssa, ptr %9, align 8
  br label %30

30:                                               ; preds = %._crit_edge, %4
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
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %16 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %18

18:                                               ; preds = %.lr.ph, %18
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %20, %18 ]
  %20 = getelementptr inbounds double, ptr %19, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %14, ptr noundef %20, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %17
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 1
  br i1 %24, label %18, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  store ptr %.lcssa, ptr %5, align 8
  br label %25

25:                                               ; preds = %._crit_edge, %3
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
  br label %44

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

34:                                               ; preds = %42, %19
  %35 = phi i64 [ %43, %42 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %32, i64 8, i1 false)
  %38 = load ptr, ptr %33, align 8
  %39 = ptrtoint ptr %38 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i64 %39)
  %40 = icmp eq i64 %35, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %44

42:                                               ; preds = %34
  %43 = add nsw i64 %35, -1
  br label %34, !llvm.loop !56

44:                                               ; preds = %41, %18
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
  %18 = load i64, ptr %12, align 8
  %19 = load i64, ptr %9, align 8
  %20 = sub nsw i64 %19, 1
  %21 = sdiv i64 %20, 2
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %5
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load i64, ptr %9, align 8
  %28 = sub nsw i64 %27, 1
  %29 = sdiv i64 %28, 2
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %30

30:                                               ; preds = %.lr.ph, %41
  %31 = phi i64 [ %.promoted1, %.lr.ph ], [ %42, %41 ]
  %32 = phi i64 [ %.promoted, %.lr.ph ], [ %42, %41 ]
  %33 = add nsw i64 %32, 1
  %34 = mul nsw i64 2, %33
  %35 = getelementptr inbounds double, ptr %23, i64 %34
  %36 = sub nsw i64 %34, 1
  %37 = getelementptr inbounds double, ptr %24, i64 %36
  %38 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %35, ptr noundef %37)
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = add nsw i64 %34, -1
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i64 [ %40, %39 ], [ %34, %30 ]
  %43 = getelementptr inbounds double, ptr %25, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds double, ptr %26, i64 %31
  store double %44, ptr %45, align 8
  %46 = icmp slt i64 %42, %29
  br i1 %46, label %30, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %41
  %.lcssa2 = phi i64 [ %42, %41 ]
  %.lcssa = phi i64 [ %42, %41 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  br label %47

47:                                               ; preds = %._crit_edge, %5
  %48 = load i64, ptr %9, align 8
  %49 = and i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load i64, ptr %12, align 8
  %53 = load i64, ptr %9, align 8
  %54 = sub nsw i64 %53, 2
  %55 = sdiv i64 %54, 2
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i64, ptr %12, align 8
  %59 = add nsw i64 %58, 1
  %60 = mul nsw i64 2, %59
  store i64 %60, ptr %12, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = load i64, ptr %12, align 8
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds double, ptr %61, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = load ptr, ptr %7, align 8
  %67 = load i64, ptr %8, align 8
  %68 = getelementptr inbounds double, ptr %66, i64 %67
  store double %65, ptr %68, align 8
  %69 = load i64, ptr %12, align 8
  %70 = sub nsw i64 %69, 1
  store i64 %70, ptr %8, align 8
  br label %71

71:                                               ; preds = %57, %51, %47
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %72 = load ptr, ptr %7, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load i64, ptr %11, align 8
  %75 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %72, i64 noundef %73, i64 noundef %74, double noundef %75, ptr noundef nonnull align 8 dereferenceable(8) %13)
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
  br label %11

11:                                               ; preds = %37, %4
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %11
  %15 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %17 = phi ptr [ %.promoted, %.lr.ph ], [ %18, %16 ]
  %18 = getelementptr inbounds nuw double, ptr %17, i32 1
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %18, ptr noundef %15)
  br i1 %19, label %16, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %16
  %.lcssa = phi ptr [ %18, %16 ]
  store ptr %.lcssa, ptr %6, align 8
  br label %20

20:                                               ; preds = %._crit_edge, %11
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %23, ptr noundef %24)
  br i1 %25, label %.lr.ph2, label %31

.lr.ph2:                                          ; preds = %20
  %26 = load ptr, ptr %8, align 8
  %.promoted4 = load ptr, ptr %7, align 8
  br label %27

27:                                               ; preds = %.lr.ph2, %27
  %28 = phi ptr [ %.promoted4, %.lr.ph2 ], [ %29, %27 ]
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %26, ptr noundef %29)
  br i1 %30, label %27, label %._crit_edge3, !llvm.loop !60

._crit_edge3:                                     ; preds = %27
  %.lcssa5 = phi ptr [ %29, %27 ]
  store ptr %.lcssa5, ptr %7, align 8
  br label %31

31:                                               ; preds = %._crit_edge3, %20
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %6, align 8
  ret ptr %36

37:                                               ; preds = %31
  %38 = load ptr, ptr %6, align 8
  %39 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds nuw double, ptr %40, i32 1
  store ptr %41, ptr %6, align 8
  br label %11, !llvm.loop !61
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
  br label %94

31:                                               ; preds = %3
  %32 = load ptr, ptr %19, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 1
  store ptr %33, ptr %21, align 8
  %34 = load ptr, ptr %21, align 8
  %35 = load ptr, ptr %20, align 8
  %36 = icmp ne ptr %34, %35
  br i1 %36, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %31
  %37 = load ptr, ptr %19, align 8
  %38 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %24, i32 0, i32 0
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %23, i32 0, i32 0
  %40 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %23, i32 0, i32 0
  %41 = load ptr, ptr %19, align 8
  %42 = load ptr, ptr %19, align 8
  %43 = load ptr, ptr %20, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load ptr, ptr %39, align 8
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
  br label %44

44:                                               ; preds = %.lr.ph, %91
  %45 = phi ptr [ %.promoted29, %.lr.ph ], [ %76, %91 ]
  %46 = phi ptr [ %.promoted27, %.lr.ph ], [ %77, %91 ]
  %47 = phi ptr [ %.promoted25, %.lr.ph ], [ %78, %91 ]
  %48 = phi ptr [ %.promoted23, %.lr.ph ], [ %79, %91 ]
  %49 = phi ptr [ %.promoted21, %.lr.ph ], [ %80, %91 ]
  %50 = phi ptr [ %.promoted19, %.lr.ph ], [ %81, %91 ]
  %51 = phi ptr [ %.promoted17, %.lr.ph ], [ %82, %91 ]
  %52 = phi ptr [ %.promoted15, %.lr.ph ], [ %83, %91 ]
  %53 = phi ptr [ %.promoted13, %.lr.ph ], [ %84, %91 ]
  %54 = phi ptr [ %.promoted11, %.lr.ph ], [ %85, %91 ]
  %55 = phi ptr [ %.promoted9, %.lr.ph ], [ %86, %91 ]
  %56 = phi ptr [ %.promoted7, %.lr.ph ], [ %87, %91 ]
  %57 = phi ptr [ %.promoted5, %.lr.ph ], [ %88, %91 ]
  %58 = phi double [ %.promoted3, %.lr.ph ], [ %89, %91 ]
  %59 = phi ptr [ %.promoted1, %.lr.ph ], [ %90, %91 ]
  %60 = phi ptr [ %.promoted, %.lr.ph ], [ %92, %91 ]
  %61 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %60, ptr noundef %37)
  br i1 %61, label %62, label %69

62:                                               ; preds = %44
  %63 = load double, ptr %60, align 8
  %64 = getelementptr inbounds double, ptr %60, i64 1
  %65 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %41)
  %66 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %60)
  store ptr %64, ptr %14, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %65, ptr noundef %66, ptr noundef %67)
  store double %63, ptr %42, align 8
  br label %75

69:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %18, i64 8, i1 false)
  %70 = load ptr, ptr %38, align 8
  %71 = ptrtoint ptr %70 to i64
  %72 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %71)
  %73 = inttoptr i64 %72 to ptr
  %74 = ptrtoint ptr %73 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %60, i64 %74)
  br label %75

75:                                               ; preds = %69, %62
  %76 = phi ptr [ %45, %69 ], [ %68, %62 ]
  %77 = phi ptr [ %46, %69 ], [ %14, %62 ]
  %78 = phi ptr [ %47, %69 ], [ %67, %62 ]
  %79 = phi ptr [ %48, %69 ], [ %66, %62 ]
  %80 = phi ptr [ %49, %69 ], [ %65, %62 ]
  %81 = phi ptr [ %50, %69 ], [ %67, %62 ]
  %82 = phi ptr [ %51, %69 ], [ %66, %62 ]
  %83 = phi ptr [ %52, %69 ], [ %65, %62 ]
  %84 = phi ptr [ %53, %69 ], [ %66, %62 ]
  %85 = phi ptr [ %54, %69 ], [ %65, %62 ]
  %86 = phi ptr [ %55, %69 ], [ %64, %62 ]
  %87 = phi ptr [ %56, %69 ], [ %60, %62 ]
  %88 = phi ptr [ %57, %69 ], [ %41, %62 ]
  %89 = phi double [ %58, %69 ], [ %63, %62 ]
  %90 = phi ptr [ %73, %69 ], [ %59, %62 ]
  br label %91

91:                                               ; preds = %75
  %92 = getelementptr inbounds nuw double, ptr %60, i32 1
  %93 = icmp ne ptr %92, %43
  br i1 %93, label %44, label %..loopexit_crit_edge, !llvm.loop !62

..loopexit_crit_edge:                             ; preds = %91
  %.lcssa30 = phi ptr [ %76, %91 ]
  %.lcssa28 = phi ptr [ %77, %91 ]
  %.lcssa26 = phi ptr [ %78, %91 ]
  %.lcssa24 = phi ptr [ %79, %91 ]
  %.lcssa22 = phi ptr [ %80, %91 ]
  %.lcssa20 = phi ptr [ %81, %91 ]
  %.lcssa18 = phi ptr [ %82, %91 ]
  %.lcssa16 = phi ptr [ %83, %91 ]
  %.lcssa14 = phi ptr [ %84, %91 ]
  %.lcssa12 = phi ptr [ %85, %91 ]
  %.lcssa10 = phi ptr [ %86, %91 ]
  %.lcssa8 = phi ptr [ %87, %91 ]
  %.lcssa6 = phi ptr [ %88, %91 ]
  %.lcssa4 = phi double [ %89, %91 ]
  %.lcssa2 = phi ptr [ %90, %91 ]
  %.lcssa = phi ptr [ %92, %91 ]
  store ptr %.lcssa, ptr %21, align 8
  store ptr %.lcssa2, ptr %39, align 8
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
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %31
  br label %94

94:                                               ; preds = %.loopexit, %30
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
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = icmp ne ptr %13, %14
  br i1 %15, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %3
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %8, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %8, i32 0, i32 0
  %19 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %.lr.ph, %27
  %21 = phi ptr [ %.promoted, %.lr.ph ], [ %28, %27 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %22 = load ptr, ptr %16, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %23)
  %25 = inttoptr i64 %24 to ptr
  %26 = ptrtoint ptr %25 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %21, i64 %26)
  br label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds nuw double, ptr %21, i32 1
  %29 = icmp ne ptr %28, %19
  br i1 %29, label %20, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %27
  %.lcssa2 = phi ptr [ %25, %27 ]
  %.lcssa = phi ptr [ %28, %27 ]
  store ptr %.lcssa, ptr %7, align 8
  store ptr %.lcssa2, ptr %17, align 8
  br label %30

30:                                               ; preds = %._crit_edge, %3
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
  %14 = load ptr, ptr %6, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %14)
  br i1 %15, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %2
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %17 = phi ptr [ %.promoted1, %.lr.ph ], [ %18, %16 ]
  %18 = phi ptr [ %.promoted, %.lr.ph ], [ %20, %16 ]
  %19 = load double, ptr %18, align 8
  store double %19, ptr %17, align 8
  %20 = getelementptr inbounds double, ptr %18, i32 -1
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %20)
  br i1 %21, label %16, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %16
  %.lcssa2 = phi ptr [ %18, %16 ]
  %.lcssa = phi ptr [ %20, %16 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %23 = load double, ptr %5, align 8
  %24 = load ptr, ptr %4, align 8
  store double %23, ptr %24, align 8
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
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %11, i32 0, i32 0
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %12, i32 0, i32 0
  %24 = load ptr, ptr %6, align 8
  %25 = ptrtoint ptr %24 to i64
  %.promoted = load i64, ptr %8, align 8
  %.promoted2 = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %26

26:                                               ; preds = %.lr.ph, %37
  %27 = phi ptr [ %.promoted5, %.lr.ph ], [ %40, %37 ]
  %28 = phi ptr [ %.promoted2, %.lr.ph ], [ %40, %37 ]
  %29 = phi i64 [ %.promoted, %.lr.ph ], [ %38, %37 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %.lcssa6 = phi ptr [ %27, %26 ]
  %.lcssa3 = phi ptr [ %28, %26 ]
  %.lcssa = phi i64 [ %29, %26 ]
  store i64 %.lcssa, ptr %8, align 8
  store ptr %.lcssa3, ptr %7, align 8
  store ptr %.lcssa6, ptr %10, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %32, ptr noundef %33, ptr noundef %34, i8 %36)
  br label %46

37:                                               ; preds = %26
  %38 = add nsw i64 %29, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %39 = load i8, ptr %22, align 1
  %40 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %21, ptr noundef %28, i8 %39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %41 = load i8, ptr %23, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %40, ptr noundef %28, i64 noundef %38, i8 %41)
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %42, %25
  %44 = sdiv exact i64 %43, 8
  %45 = icmp sgt i64 %44, 16
  br i1 %45, label %26, label %..loopexit_crit_edge, !llvm.loop !65

..loopexit_crit_edge:                             ; preds = %37
  %.lcssa7 = phi ptr [ %40, %37 ]
  %.lcssa4 = phi ptr [ %40, %37 ]
  %.lcssa1 = phi i64 [ %38, %37 ]
  store i64 %.lcssa1, ptr %8, align 8
  store ptr %.lcssa4, ptr %7, align 8
  store ptr %.lcssa7, ptr %10, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %46

46:                                               ; preds = %.loopexit, %31
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
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %4
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %9, align 8
  br label %21

21:                                               ; preds = %.lr.ph, %26
  %22 = phi ptr [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %17)
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %22, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds nuw double, ptr %22, i32 1
  %28 = icmp ult ptr %27, %20
  br i1 %28, label %21, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %26
  %.lcssa = phi ptr [ %27, %26 ]
  store ptr %.lcssa, ptr %9, align 8
  br label %29

29:                                               ; preds = %._crit_edge, %4
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
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !15
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %16 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %18

18:                                               ; preds = %.lr.ph, %18
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %20, %18 ]
  %20 = getelementptr inbounds double, ptr %19, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %14, ptr noundef %20, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %17
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 1
  br i1 %24, label %18, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  store ptr %.lcssa, ptr %5, align 8
  br label %25

25:                                               ; preds = %._crit_edge, %3
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
  %32 = load ptr, ptr %6, align 8, !nonnull !15
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %10, i32 0, i32 0
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %41, %19
  %35 = phi i64 [ %42, %41 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %32, i64 1, i1 false)
  %38 = load i8, ptr %33, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %38)
  %39 = icmp eq i64 %35, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %43

41:                                               ; preds = %34
  %42 = add nsw i64 %35, -1
  br label %34, !llvm.loop !68

43:                                               ; preds = %40, %18
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
  %17 = load i64, ptr %12, align 8
  %18 = load i64, ptr %9, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %5
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load i64, ptr %9, align 8
  %27 = sub nsw i64 %26, 1
  %28 = sdiv i64 %27, 2
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %29

29:                                               ; preds = %.lr.ph, %40
  %30 = phi i64 [ %.promoted1, %.lr.ph ], [ %41, %40 ]
  %31 = phi i64 [ %.promoted, %.lr.ph ], [ %41, %40 ]
  %32 = add nsw i64 %31, 1
  %33 = mul nsw i64 2, %32
  %34 = getelementptr inbounds double, ptr %22, i64 %33
  %35 = sub nsw i64 %33, 1
  %36 = getelementptr inbounds double, ptr %23, i64 %35
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %34, ptr noundef %36)
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = add nsw i64 %33, -1
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ]
  %42 = getelementptr inbounds double, ptr %24, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = getelementptr inbounds double, ptr %25, i64 %30
  store double %43, ptr %44, align 8
  %45 = icmp slt i64 %41, %28
  br i1 %45, label %29, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %40
  %.lcssa2 = phi i64 [ %41, %40 ]
  %.lcssa = phi i64 [ %41, %40 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  br label %46

46:                                               ; preds = %._crit_edge, %5
  %47 = load i64, ptr %9, align 8
  %48 = and i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i64, ptr %12, align 8
  %52 = load i64, ptr %9, align 8
  %53 = sub nsw i64 %52, 2
  %54 = sdiv i64 %53, 2
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i64, ptr %12, align 8
  %58 = add nsw i64 %57, 1
  %59 = mul nsw i64 2, %58
  store i64 %59, ptr %12, align 8
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %12, align 8
  %62 = sub nsw i64 %61, 1
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = load i64, ptr %8, align 8
  %67 = getelementptr inbounds double, ptr %65, i64 %66
  store double %64, ptr %67, align 8
  %68 = load i64, ptr %12, align 8
  %69 = sub nsw i64 %68, 1
  store i64 %69, ptr %8, align 8
  br label %70

70:                                               ; preds = %56, %50, %46
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load i64, ptr %11, align 8
  %74 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %71, i64 noundef %72, i64 noundef %73, double noundef %74, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %10

10:                                               ; preds = %36, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %10
  %14 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds nuw double, ptr %16, i32 1
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %18, label %15, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %15
  %.lcssa = phi ptr [ %17, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  br label %19

19:                                               ; preds = %._crit_edge, %10
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %.lr.ph2, label %30

.lr.ph2:                                          ; preds = %19
  %25 = load ptr, ptr %8, align 8
  %.promoted4 = load ptr, ptr %7, align 8
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = phi ptr [ %.promoted4, %.lr.ph2 ], [ %28, %26 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %25, ptr noundef %28)
  br i1 %29, label %26, label %._crit_edge3, !llvm.loop !72

._crit_edge3:                                     ; preds = %26
  %.lcssa5 = phi ptr [ %28, %26 ]
  store ptr %.lcssa5, ptr %7, align 8
  br label %30

30:                                               ; preds = %._crit_edge3, %19
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = icmp ult ptr %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8
  ret ptr %35

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %37, ptr noundef %38)
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds nuw double, ptr %39, i32 1
  store ptr %40, ptr %6, align 8
  br label %10, !llvm.loop !73
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
  br label %90

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  %36 = load ptr, ptr %19, align 8
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %24, i32 0, i32 0
  %38 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %23, i32 0, i32 0
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %23, i32 0, i32 0
  %40 = load ptr, ptr %19, align 8
  %41 = load ptr, ptr %19, align 8
  %42 = load ptr, ptr %20, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load i8, ptr %38, align 1
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
  br label %43

43:                                               ; preds = %.lr.ph, %87
  %44 = phi ptr [ %.promoted29, %.lr.ph ], [ %72, %87 ]
  %45 = phi ptr [ %.promoted27, %.lr.ph ], [ %73, %87 ]
  %46 = phi ptr [ %.promoted25, %.lr.ph ], [ %74, %87 ]
  %47 = phi ptr [ %.promoted23, %.lr.ph ], [ %75, %87 ]
  %48 = phi ptr [ %.promoted21, %.lr.ph ], [ %76, %87 ]
  %49 = phi ptr [ %.promoted19, %.lr.ph ], [ %77, %87 ]
  %50 = phi ptr [ %.promoted17, %.lr.ph ], [ %78, %87 ]
  %51 = phi ptr [ %.promoted15, %.lr.ph ], [ %79, %87 ]
  %52 = phi ptr [ %.promoted13, %.lr.ph ], [ %80, %87 ]
  %53 = phi ptr [ %.promoted11, %.lr.ph ], [ %81, %87 ]
  %54 = phi ptr [ %.promoted9, %.lr.ph ], [ %82, %87 ]
  %55 = phi ptr [ %.promoted7, %.lr.ph ], [ %83, %87 ]
  %56 = phi ptr [ %.promoted5, %.lr.ph ], [ %84, %87 ]
  %57 = phi double [ %.promoted3, %.lr.ph ], [ %85, %87 ]
  %58 = phi i8 [ %.promoted1, %.lr.ph ], [ %86, %87 ]
  %59 = phi ptr [ %.promoted, %.lr.ph ], [ %88, %87 ]
  %60 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %59, ptr noundef %36)
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load double, ptr %59, align 8
  %63 = getelementptr inbounds double, ptr %59, i64 1
  %64 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %40)
  %65 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %59)
  store ptr %63, ptr %14, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %64, ptr noundef %65, ptr noundef %66)
  store double %62, ptr %41, align 8
  br label %71

68:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %69 = load i8, ptr %37, align 1
  %70 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %69)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %59, i8 %70)
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi ptr [ %44, %68 ], [ %67, %61 ]
  %73 = phi ptr [ %45, %68 ], [ %14, %61 ]
  %74 = phi ptr [ %46, %68 ], [ %66, %61 ]
  %75 = phi ptr [ %47, %68 ], [ %65, %61 ]
  %76 = phi ptr [ %48, %68 ], [ %64, %61 ]
  %77 = phi ptr [ %49, %68 ], [ %66, %61 ]
  %78 = phi ptr [ %50, %68 ], [ %65, %61 ]
  %79 = phi ptr [ %51, %68 ], [ %64, %61 ]
  %80 = phi ptr [ %52, %68 ], [ %65, %61 ]
  %81 = phi ptr [ %53, %68 ], [ %64, %61 ]
  %82 = phi ptr [ %54, %68 ], [ %63, %61 ]
  %83 = phi ptr [ %55, %68 ], [ %59, %61 ]
  %84 = phi ptr [ %56, %68 ], [ %40, %61 ]
  %85 = phi double [ %57, %68 ], [ %62, %61 ]
  %86 = phi i8 [ %70, %68 ], [ %58, %61 ]
  br label %87

87:                                               ; preds = %71
  %88 = getelementptr inbounds nuw double, ptr %59, i32 1
  %89 = icmp ne ptr %88, %42
  br i1 %89, label %43, label %..loopexit_crit_edge, !llvm.loop !74

..loopexit_crit_edge:                             ; preds = %87
  %.lcssa30 = phi ptr [ %72, %87 ]
  %.lcssa28 = phi ptr [ %73, %87 ]
  %.lcssa26 = phi ptr [ %74, %87 ]
  %.lcssa24 = phi ptr [ %75, %87 ]
  %.lcssa22 = phi ptr [ %76, %87 ]
  %.lcssa20 = phi ptr [ %77, %87 ]
  %.lcssa18 = phi ptr [ %78, %87 ]
  %.lcssa16 = phi ptr [ %79, %87 ]
  %.lcssa14 = phi ptr [ %80, %87 ]
  %.lcssa12 = phi ptr [ %81, %87 ]
  %.lcssa10 = phi ptr [ %82, %87 ]
  %.lcssa8 = phi ptr [ %83, %87 ]
  %.lcssa6 = phi ptr [ %84, %87 ]
  %.lcssa4 = phi double [ %85, %87 ]
  %.lcssa2 = phi i8 [ %86, %87 ]
  %.lcssa = phi ptr [ %88, %87 ]
  store ptr %.lcssa, ptr %21, align 8
  store i8 %.lcssa2, ptr %38, align 1
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
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %90

90:                                               ; preds = %.loopexit, %29
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
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = icmp ne ptr %12, %13
  br i1 %14, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %3
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %8, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %8, i32 0, i32 0
  %18 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %.lr.ph, %23
  %20 = phi ptr [ %.promoted, %.lr.ph ], [ %24, %23 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %15, align 1
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %21)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %20, i8 %22)
  br label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw double, ptr %20, i32 1
  %25 = icmp ne ptr %24, %18
  br i1 %25, label %19, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %23
  %.lcssa2 = phi i8 [ %22, %23 ]
  %.lcssa = phi ptr [ %24, %23 ]
  store ptr %.lcssa, ptr %7, align 8
  store i8 %.lcssa2, ptr %16, align 1
  br label %26

26:                                               ; preds = %._crit_edge, %3
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
  %13 = load ptr, ptr %6, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13)
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %17, %15 ]
  %17 = phi ptr [ %.promoted, %.lr.ph ], [ %19, %15 ]
  %18 = load double, ptr %17, align 8
  store double %18, ptr %16, align 8
  %19 = getelementptr inbounds double, ptr %17, i32 -1
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %19)
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %15
  %.lcssa2 = phi ptr [ %17, %15 ]
  %.lcssa = phi ptr [ %19, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = load double, ptr %5, align 8
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
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
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %11, i32 0, i32 0
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %12, i32 0, i32 0
  %24 = load ptr, ptr %6, align 8
  %25 = ptrtoint ptr %24 to i64
  %.promoted = load i64, ptr %8, align 8
  %.promoted2 = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %26

26:                                               ; preds = %.lr.ph, %37
  %27 = phi ptr [ %.promoted5, %.lr.ph ], [ %40, %37 ]
  %28 = phi ptr [ %.promoted2, %.lr.ph ], [ %40, %37 ]
  %29 = phi i64 [ %.promoted, %.lr.ph ], [ %38, %37 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %.lcssa6 = phi ptr [ %27, %26 ]
  %.lcssa3 = phi ptr [ %28, %26 ]
  %.lcssa = phi i64 [ %29, %26 ]
  store i64 %.lcssa, ptr %8, align 8
  store ptr %.lcssa3, ptr %7, align 8
  store ptr %.lcssa6, ptr %10, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %32, ptr noundef %33, ptr noundef %34, i8 %36)
  br label %46

37:                                               ; preds = %26
  %38 = add nsw i64 %29, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %39 = load i8, ptr %22, align 1
  %40 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %21, ptr noundef %28, i8 %39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %41 = load i8, ptr %23, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %40, ptr noundef %28, i64 noundef %38, i8 %41)
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %42, %25
  %44 = sdiv exact i64 %43, 8
  %45 = icmp sgt i64 %44, 16
  br i1 %45, label %26, label %..loopexit_crit_edge, !llvm.loop !77

..loopexit_crit_edge:                             ; preds = %37
  %.lcssa7 = phi ptr [ %40, %37 ]
  %.lcssa4 = phi ptr [ %40, %37 ]
  %.lcssa1 = phi i64 [ %38, %37 ]
  store i64 %.lcssa1, ptr %8, align 8
  store ptr %.lcssa4, ptr %7, align 8
  store ptr %.lcssa7, ptr %10, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %46

46:                                               ; preds = %.loopexit, %31
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
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %4
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %9, align 8
  br label %21

21:                                               ; preds = %.lr.ph, %26
  %22 = phi ptr [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %17)
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %22, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds nuw double, ptr %22, i32 1
  %28 = icmp ult ptr %27, %20
  br i1 %28, label %21, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %26
  %.lcssa = phi ptr [ %27, %26 ]
  store ptr %.lcssa, ptr %9, align 8
  br label %29

29:                                               ; preds = %._crit_edge, %4
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
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !15
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %16 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %18

18:                                               ; preds = %.lr.ph, %18
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %20, %18 ]
  %20 = getelementptr inbounds double, ptr %19, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %14, ptr noundef %20, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %17
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 1
  br i1 %24, label %18, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  store ptr %.lcssa, ptr %5, align 8
  br label %25

25:                                               ; preds = %._crit_edge, %3
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
  %32 = load ptr, ptr %6, align 8, !nonnull !15
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %10, i32 0, i32 0
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %41, %19
  %35 = phi i64 [ %42, %41 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %32, i64 1, i1 false)
  %38 = load i8, ptr %33, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %38)
  %39 = icmp eq i64 %35, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %43

41:                                               ; preds = %34
  %42 = add nsw i64 %35, -1
  br label %34, !llvm.loop !80

43:                                               ; preds = %40, %18
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
  %17 = load i64, ptr %12, align 8
  %18 = load i64, ptr %9, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %5
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load i64, ptr %9, align 8
  %27 = sub nsw i64 %26, 1
  %28 = sdiv i64 %27, 2
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %29

29:                                               ; preds = %.lr.ph, %40
  %30 = phi i64 [ %.promoted1, %.lr.ph ], [ %41, %40 ]
  %31 = phi i64 [ %.promoted, %.lr.ph ], [ %41, %40 ]
  %32 = add nsw i64 %31, 1
  %33 = mul nsw i64 2, %32
  %34 = getelementptr inbounds double, ptr %22, i64 %33
  %35 = sub nsw i64 %33, 1
  %36 = getelementptr inbounds double, ptr %23, i64 %35
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %34, ptr noundef %36)
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = add nsw i64 %33, -1
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ]
  %42 = getelementptr inbounds double, ptr %24, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = getelementptr inbounds double, ptr %25, i64 %30
  store double %43, ptr %44, align 8
  %45 = icmp slt i64 %41, %28
  br i1 %45, label %29, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %40
  %.lcssa2 = phi i64 [ %41, %40 ]
  %.lcssa = phi i64 [ %41, %40 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  br label %46

46:                                               ; preds = %._crit_edge, %5
  %47 = load i64, ptr %9, align 8
  %48 = and i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i64, ptr %12, align 8
  %52 = load i64, ptr %9, align 8
  %53 = sub nsw i64 %52, 2
  %54 = sdiv i64 %53, 2
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i64, ptr %12, align 8
  %58 = add nsw i64 %57, 1
  %59 = mul nsw i64 2, %58
  store i64 %59, ptr %12, align 8
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %12, align 8
  %62 = sub nsw i64 %61, 1
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = load i64, ptr %8, align 8
  %67 = getelementptr inbounds double, ptr %65, i64 %66
  store double %64, ptr %67, align 8
  %68 = load i64, ptr %12, align 8
  %69 = sub nsw i64 %68, 1
  store i64 %69, ptr %8, align 8
  br label %70

70:                                               ; preds = %56, %50, %46
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load i64, ptr %11, align 8
  %74 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %71, i64 noundef %72, i64 noundef %73, double noundef %74, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %10

10:                                               ; preds = %36, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %10
  %14 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds nuw double, ptr %16, i32 1
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %18, label %15, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %15
  %.lcssa = phi ptr [ %17, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  br label %19

19:                                               ; preds = %._crit_edge, %10
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %.lr.ph2, label %30

.lr.ph2:                                          ; preds = %19
  %25 = load ptr, ptr %8, align 8
  %.promoted4 = load ptr, ptr %7, align 8
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = phi ptr [ %.promoted4, %.lr.ph2 ], [ %28, %26 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %25, ptr noundef %28)
  br i1 %29, label %26, label %._crit_edge3, !llvm.loop !84

._crit_edge3:                                     ; preds = %26
  %.lcssa5 = phi ptr [ %28, %26 ]
  store ptr %.lcssa5, ptr %7, align 8
  br label %30

30:                                               ; preds = %._crit_edge3, %19
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = icmp ult ptr %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8
  ret ptr %35

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %37, ptr noundef %38)
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds nuw double, ptr %39, i32 1
  store ptr %40, ptr %6, align 8
  br label %10, !llvm.loop !85
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
  br label %90

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  %36 = load ptr, ptr %19, align 8
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %24, i32 0, i32 0
  %38 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %23, i32 0, i32 0
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %23, i32 0, i32 0
  %40 = load ptr, ptr %19, align 8
  %41 = load ptr, ptr %19, align 8
  %42 = load ptr, ptr %20, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load i8, ptr %38, align 1
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
  br label %43

43:                                               ; preds = %.lr.ph, %87
  %44 = phi ptr [ %.promoted29, %.lr.ph ], [ %72, %87 ]
  %45 = phi ptr [ %.promoted27, %.lr.ph ], [ %73, %87 ]
  %46 = phi ptr [ %.promoted25, %.lr.ph ], [ %74, %87 ]
  %47 = phi ptr [ %.promoted23, %.lr.ph ], [ %75, %87 ]
  %48 = phi ptr [ %.promoted21, %.lr.ph ], [ %76, %87 ]
  %49 = phi ptr [ %.promoted19, %.lr.ph ], [ %77, %87 ]
  %50 = phi ptr [ %.promoted17, %.lr.ph ], [ %78, %87 ]
  %51 = phi ptr [ %.promoted15, %.lr.ph ], [ %79, %87 ]
  %52 = phi ptr [ %.promoted13, %.lr.ph ], [ %80, %87 ]
  %53 = phi ptr [ %.promoted11, %.lr.ph ], [ %81, %87 ]
  %54 = phi ptr [ %.promoted9, %.lr.ph ], [ %82, %87 ]
  %55 = phi ptr [ %.promoted7, %.lr.ph ], [ %83, %87 ]
  %56 = phi ptr [ %.promoted5, %.lr.ph ], [ %84, %87 ]
  %57 = phi double [ %.promoted3, %.lr.ph ], [ %85, %87 ]
  %58 = phi i8 [ %.promoted1, %.lr.ph ], [ %86, %87 ]
  %59 = phi ptr [ %.promoted, %.lr.ph ], [ %88, %87 ]
  %60 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %59, ptr noundef %36)
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load double, ptr %59, align 8
  %63 = getelementptr inbounds double, ptr %59, i64 1
  %64 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %40)
  %65 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %59)
  store ptr %63, ptr %14, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %64, ptr noundef %65, ptr noundef %66)
  store double %62, ptr %41, align 8
  br label %71

68:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %69 = load i8, ptr %37, align 1
  %70 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %69)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %59, i8 %70)
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi ptr [ %44, %68 ], [ %67, %61 ]
  %73 = phi ptr [ %45, %68 ], [ %14, %61 ]
  %74 = phi ptr [ %46, %68 ], [ %66, %61 ]
  %75 = phi ptr [ %47, %68 ], [ %65, %61 ]
  %76 = phi ptr [ %48, %68 ], [ %64, %61 ]
  %77 = phi ptr [ %49, %68 ], [ %66, %61 ]
  %78 = phi ptr [ %50, %68 ], [ %65, %61 ]
  %79 = phi ptr [ %51, %68 ], [ %64, %61 ]
  %80 = phi ptr [ %52, %68 ], [ %65, %61 ]
  %81 = phi ptr [ %53, %68 ], [ %64, %61 ]
  %82 = phi ptr [ %54, %68 ], [ %63, %61 ]
  %83 = phi ptr [ %55, %68 ], [ %59, %61 ]
  %84 = phi ptr [ %56, %68 ], [ %40, %61 ]
  %85 = phi double [ %57, %68 ], [ %62, %61 ]
  %86 = phi i8 [ %70, %68 ], [ %58, %61 ]
  br label %87

87:                                               ; preds = %71
  %88 = getelementptr inbounds nuw double, ptr %59, i32 1
  %89 = icmp ne ptr %88, %42
  br i1 %89, label %43, label %..loopexit_crit_edge, !llvm.loop !86

..loopexit_crit_edge:                             ; preds = %87
  %.lcssa30 = phi ptr [ %72, %87 ]
  %.lcssa28 = phi ptr [ %73, %87 ]
  %.lcssa26 = phi ptr [ %74, %87 ]
  %.lcssa24 = phi ptr [ %75, %87 ]
  %.lcssa22 = phi ptr [ %76, %87 ]
  %.lcssa20 = phi ptr [ %77, %87 ]
  %.lcssa18 = phi ptr [ %78, %87 ]
  %.lcssa16 = phi ptr [ %79, %87 ]
  %.lcssa14 = phi ptr [ %80, %87 ]
  %.lcssa12 = phi ptr [ %81, %87 ]
  %.lcssa10 = phi ptr [ %82, %87 ]
  %.lcssa8 = phi ptr [ %83, %87 ]
  %.lcssa6 = phi ptr [ %84, %87 ]
  %.lcssa4 = phi double [ %85, %87 ]
  %.lcssa2 = phi i8 [ %86, %87 ]
  %.lcssa = phi ptr [ %88, %87 ]
  store ptr %.lcssa, ptr %21, align 8
  store i8 %.lcssa2, ptr %38, align 1
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
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %90

90:                                               ; preds = %.loopexit, %29
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
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = icmp ne ptr %12, %13
  br i1 %14, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %3
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %8, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %8, i32 0, i32 0
  %18 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %.lr.ph, %23
  %20 = phi ptr [ %.promoted, %.lr.ph ], [ %24, %23 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %15, align 1
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %21)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %20, i8 %22)
  br label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw double, ptr %20, i32 1
  %25 = icmp ne ptr %24, %18
  br i1 %25, label %19, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %23
  %.lcssa2 = phi i8 [ %22, %23 ]
  %.lcssa = phi ptr [ %24, %23 ]
  store ptr %.lcssa, ptr %7, align 8
  store i8 %.lcssa2, ptr %16, align 1
  br label %26

26:                                               ; preds = %._crit_edge, %3
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
  %13 = load ptr, ptr %6, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13)
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %17, %15 ]
  %17 = phi ptr [ %.promoted, %.lr.ph ], [ %19, %15 ]
  %18 = load double, ptr %17, align 8
  store double %18, ptr %16, align 8
  %19 = getelementptr inbounds double, ptr %17, i32 -1
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %19)
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %15
  %.lcssa2 = phi ptr [ %17, %15 ]
  %.lcssa = phi ptr [ %19, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = load double, ptr %5, align 8
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
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
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %11, i32 0, i32 0
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %12, i32 0, i32 0
  %24 = load ptr, ptr %6, align 8
  %25 = ptrtoint ptr %24 to i64
  %.promoted = load i64, ptr %8, align 8
  %.promoted2 = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %26

26:                                               ; preds = %.lr.ph, %37
  %27 = phi ptr [ %.promoted5, %.lr.ph ], [ %40, %37 ]
  %28 = phi ptr [ %.promoted2, %.lr.ph ], [ %40, %37 ]
  %29 = phi i64 [ %.promoted, %.lr.ph ], [ %38, %37 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %.lcssa6 = phi ptr [ %27, %26 ]
  %.lcssa3 = phi ptr [ %28, %26 ]
  %.lcssa = phi i64 [ %29, %26 ]
  store i64 %.lcssa, ptr %8, align 8
  store ptr %.lcssa3, ptr %7, align 8
  store ptr %.lcssa6, ptr %10, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %32, ptr noundef %33, ptr noundef %34, i8 %36)
  br label %46

37:                                               ; preds = %26
  %38 = add nsw i64 %29, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %39 = load i8, ptr %22, align 1
  %40 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %21, ptr noundef %28, i8 %39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %41 = load i8, ptr %23, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %40, ptr noundef %28, i64 noundef %38, i8 %41)
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %42, %25
  %44 = sdiv exact i64 %43, 8
  %45 = icmp sgt i64 %44, 16
  br i1 %45, label %26, label %..loopexit_crit_edge, !llvm.loop !89

..loopexit_crit_edge:                             ; preds = %37
  %.lcssa7 = phi ptr [ %40, %37 ]
  %.lcssa4 = phi ptr [ %40, %37 ]
  %.lcssa1 = phi i64 [ %38, %37 ]
  store i64 %.lcssa1, ptr %8, align 8
  store ptr %.lcssa4, ptr %7, align 8
  store ptr %.lcssa7, ptr %10, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %46

46:                                               ; preds = %.loopexit, %31
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
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %4
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %9, align 8
  br label %21

21:                                               ; preds = %.lr.ph, %26
  %22 = phi ptr [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %17)
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %22, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds nuw double, ptr %22, i32 1
  %28 = icmp ult ptr %27, %20
  br i1 %28, label %21, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %26
  %.lcssa = phi ptr [ %27, %26 ]
  store ptr %.lcssa, ptr %9, align 8
  br label %29

29:                                               ; preds = %._crit_edge, %4
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
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !15
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %16 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %18

18:                                               ; preds = %.lr.ph, %18
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %20, %18 ]
  %20 = getelementptr inbounds double, ptr %19, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %14, ptr noundef %20, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %17
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 1
  br i1 %24, label %18, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  store ptr %.lcssa, ptr %5, align 8
  br label %25

25:                                               ; preds = %._crit_edge, %3
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
  %32 = load ptr, ptr %6, align 8, !nonnull !15
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %10, i32 0, i32 0
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %41, %19
  %35 = phi i64 [ %42, %41 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %32, i64 1, i1 false)
  %38 = load i8, ptr %33, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %38)
  %39 = icmp eq i64 %35, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %43

41:                                               ; preds = %34
  %42 = add nsw i64 %35, -1
  br label %34, !llvm.loop !92

43:                                               ; preds = %40, %18
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
  %17 = load i64, ptr %12, align 8
  %18 = load i64, ptr %9, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %5
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load i64, ptr %9, align 8
  %27 = sub nsw i64 %26, 1
  %28 = sdiv i64 %27, 2
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %29

29:                                               ; preds = %.lr.ph, %40
  %30 = phi i64 [ %.promoted1, %.lr.ph ], [ %41, %40 ]
  %31 = phi i64 [ %.promoted, %.lr.ph ], [ %41, %40 ]
  %32 = add nsw i64 %31, 1
  %33 = mul nsw i64 2, %32
  %34 = getelementptr inbounds double, ptr %22, i64 %33
  %35 = sub nsw i64 %33, 1
  %36 = getelementptr inbounds double, ptr %23, i64 %35
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %34, ptr noundef %36)
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = add nsw i64 %33, -1
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ]
  %42 = getelementptr inbounds double, ptr %24, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = getelementptr inbounds double, ptr %25, i64 %30
  store double %43, ptr %44, align 8
  %45 = icmp slt i64 %41, %28
  br i1 %45, label %29, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %40
  %.lcssa2 = phi i64 [ %41, %40 ]
  %.lcssa = phi i64 [ %41, %40 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  br label %46

46:                                               ; preds = %._crit_edge, %5
  %47 = load i64, ptr %9, align 8
  %48 = and i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i64, ptr %12, align 8
  %52 = load i64, ptr %9, align 8
  %53 = sub nsw i64 %52, 2
  %54 = sdiv i64 %53, 2
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i64, ptr %12, align 8
  %58 = add nsw i64 %57, 1
  %59 = mul nsw i64 2, %58
  store i64 %59, ptr %12, align 8
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %12, align 8
  %62 = sub nsw i64 %61, 1
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = load i64, ptr %8, align 8
  %67 = getelementptr inbounds double, ptr %65, i64 %66
  store double %64, ptr %67, align 8
  %68 = load i64, ptr %12, align 8
  %69 = sub nsw i64 %68, 1
  store i64 %69, ptr %8, align 8
  br label %70

70:                                               ; preds = %56, %50, %46
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load i64, ptr %11, align 8
  %74 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %71, i64 noundef %72, i64 noundef %73, double noundef %74, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %10

10:                                               ; preds = %36, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %10
  %14 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds nuw double, ptr %16, i32 1
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %18, label %15, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %15
  %.lcssa = phi ptr [ %17, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  br label %19

19:                                               ; preds = %._crit_edge, %10
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %.lr.ph2, label %30

.lr.ph2:                                          ; preds = %19
  %25 = load ptr, ptr %8, align 8
  %.promoted4 = load ptr, ptr %7, align 8
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = phi ptr [ %.promoted4, %.lr.ph2 ], [ %28, %26 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %25, ptr noundef %28)
  br i1 %29, label %26, label %._crit_edge3, !llvm.loop !96

._crit_edge3:                                     ; preds = %26
  %.lcssa5 = phi ptr [ %28, %26 ]
  store ptr %.lcssa5, ptr %7, align 8
  br label %30

30:                                               ; preds = %._crit_edge3, %19
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = icmp ult ptr %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8
  ret ptr %35

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %37, ptr noundef %38)
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds nuw double, ptr %39, i32 1
  store ptr %40, ptr %6, align 8
  br label %10, !llvm.loop !97
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
  br label %90

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  %36 = load ptr, ptr %19, align 8
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %24, i32 0, i32 0
  %38 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %23, i32 0, i32 0
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %23, i32 0, i32 0
  %40 = load ptr, ptr %19, align 8
  %41 = load ptr, ptr %19, align 8
  %42 = load ptr, ptr %20, align 8
  %.promoted = load ptr, ptr %21, align 8
  %.promoted1 = load i8, ptr %38, align 1
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
  br label %43

43:                                               ; preds = %.lr.ph, %87
  %44 = phi ptr [ %.promoted29, %.lr.ph ], [ %72, %87 ]
  %45 = phi ptr [ %.promoted27, %.lr.ph ], [ %73, %87 ]
  %46 = phi ptr [ %.promoted25, %.lr.ph ], [ %74, %87 ]
  %47 = phi ptr [ %.promoted23, %.lr.ph ], [ %75, %87 ]
  %48 = phi ptr [ %.promoted21, %.lr.ph ], [ %76, %87 ]
  %49 = phi ptr [ %.promoted19, %.lr.ph ], [ %77, %87 ]
  %50 = phi ptr [ %.promoted17, %.lr.ph ], [ %78, %87 ]
  %51 = phi ptr [ %.promoted15, %.lr.ph ], [ %79, %87 ]
  %52 = phi ptr [ %.promoted13, %.lr.ph ], [ %80, %87 ]
  %53 = phi ptr [ %.promoted11, %.lr.ph ], [ %81, %87 ]
  %54 = phi ptr [ %.promoted9, %.lr.ph ], [ %82, %87 ]
  %55 = phi ptr [ %.promoted7, %.lr.ph ], [ %83, %87 ]
  %56 = phi ptr [ %.promoted5, %.lr.ph ], [ %84, %87 ]
  %57 = phi double [ %.promoted3, %.lr.ph ], [ %85, %87 ]
  %58 = phi i8 [ %.promoted1, %.lr.ph ], [ %86, %87 ]
  %59 = phi ptr [ %.promoted, %.lr.ph ], [ %88, %87 ]
  %60 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %59, ptr noundef %36)
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load double, ptr %59, align 8
  %63 = getelementptr inbounds double, ptr %59, i64 1
  %64 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %40)
  %65 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %59)
  store ptr %63, ptr %14, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %64, ptr noundef %65, ptr noundef %66)
  store double %62, ptr %41, align 8
  br label %71

68:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %69 = load i8, ptr %37, align 1
  %70 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %69)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %59, i8 %70)
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi ptr [ %44, %68 ], [ %67, %61 ]
  %73 = phi ptr [ %45, %68 ], [ %14, %61 ]
  %74 = phi ptr [ %46, %68 ], [ %66, %61 ]
  %75 = phi ptr [ %47, %68 ], [ %65, %61 ]
  %76 = phi ptr [ %48, %68 ], [ %64, %61 ]
  %77 = phi ptr [ %49, %68 ], [ %66, %61 ]
  %78 = phi ptr [ %50, %68 ], [ %65, %61 ]
  %79 = phi ptr [ %51, %68 ], [ %64, %61 ]
  %80 = phi ptr [ %52, %68 ], [ %65, %61 ]
  %81 = phi ptr [ %53, %68 ], [ %64, %61 ]
  %82 = phi ptr [ %54, %68 ], [ %63, %61 ]
  %83 = phi ptr [ %55, %68 ], [ %59, %61 ]
  %84 = phi ptr [ %56, %68 ], [ %40, %61 ]
  %85 = phi double [ %57, %68 ], [ %62, %61 ]
  %86 = phi i8 [ %70, %68 ], [ %58, %61 ]
  br label %87

87:                                               ; preds = %71
  %88 = getelementptr inbounds nuw double, ptr %59, i32 1
  %89 = icmp ne ptr %88, %42
  br i1 %89, label %43, label %..loopexit_crit_edge, !llvm.loop !98

..loopexit_crit_edge:                             ; preds = %87
  %.lcssa30 = phi ptr [ %72, %87 ]
  %.lcssa28 = phi ptr [ %73, %87 ]
  %.lcssa26 = phi ptr [ %74, %87 ]
  %.lcssa24 = phi ptr [ %75, %87 ]
  %.lcssa22 = phi ptr [ %76, %87 ]
  %.lcssa20 = phi ptr [ %77, %87 ]
  %.lcssa18 = phi ptr [ %78, %87 ]
  %.lcssa16 = phi ptr [ %79, %87 ]
  %.lcssa14 = phi ptr [ %80, %87 ]
  %.lcssa12 = phi ptr [ %81, %87 ]
  %.lcssa10 = phi ptr [ %82, %87 ]
  %.lcssa8 = phi ptr [ %83, %87 ]
  %.lcssa6 = phi ptr [ %84, %87 ]
  %.lcssa4 = phi double [ %85, %87 ]
  %.lcssa2 = phi i8 [ %86, %87 ]
  %.lcssa = phi ptr [ %88, %87 ]
  store ptr %.lcssa, ptr %21, align 8
  store i8 %.lcssa2, ptr %38, align 1
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
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %90

90:                                               ; preds = %.loopexit, %29
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
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = icmp ne ptr %12, %13
  br i1 %14, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %3
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %8, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %8, i32 0, i32 0
  %18 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %.lr.ph, %23
  %20 = phi ptr [ %.promoted, %.lr.ph ], [ %24, %23 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %15, align 1
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %21)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %20, i8 %22)
  br label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw double, ptr %20, i32 1
  %25 = icmp ne ptr %24, %18
  br i1 %25, label %19, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %23
  %.lcssa2 = phi i8 [ %22, %23 ]
  %.lcssa = phi ptr [ %24, %23 ]
  store ptr %.lcssa, ptr %7, align 8
  store i8 %.lcssa2, ptr %16, align 1
  br label %26

26:                                               ; preds = %._crit_edge, %3
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
  %13 = load ptr, ptr %6, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13)
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %17, %15 ]
  %17 = phi ptr [ %.promoted, %.lr.ph ], [ %19, %15 ]
  %18 = load double, ptr %17, align 8
  store double %18, ptr %16, align 8
  %19 = getelementptr inbounds double, ptr %17, i32 -1
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %19)
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %15
  %.lcssa2 = phi ptr [ %17, %15 ]
  %.lcssa = phi ptr [ %19, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = load double, ptr %5, align 8
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
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
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %11, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %12, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  %26 = load ptr, ptr %6, align 8
  %27 = ptrtoint ptr %26 to i64
  %.promoted = load i64, ptr %8, align 8
  %.promoted2 = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %28

28:                                               ; preds = %.lr.ph, %39
  %29 = phi ptr [ %.promoted5, %.lr.ph ], [ %41, %39 ]
  %30 = phi ptr [ %.promoted2, %.lr.ph ], [ %41, %39 ]
  %31 = phi i64 [ %.promoted, %.lr.ph ], [ %40, %39 ]
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %.lcssa6 = phi ptr [ %29, %28 ]
  %.lcssa3 = phi ptr [ %30, %28 ]
  %.lcssa = phi i64 [ %31, %28 ]
  store i64 %.lcssa, ptr %8, align 8
  store ptr %.lcssa3, ptr %7, align 8
  store ptr %.lcssa6, ptr %10, align 8
  %34 = load ptr, ptr %6, align 8
  %35 = load ptr, ptr %7, align 8
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %38 = load i8, ptr %37, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %34, ptr noundef %35, ptr noundef %36, i8 %38)
  br label %46

39:                                               ; preds = %28
  %40 = add nsw i64 %31, -1
  %41 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %21, ptr noundef %30, i8 %23)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %41, ptr noundef %30, i64 noundef %40, i8 %25)
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %27
  %44 = sdiv exact i64 %43, 8
  %45 = icmp sgt i64 %44, 16
  br i1 %45, label %28, label %..loopexit_crit_edge, !llvm.loop !101

..loopexit_crit_edge:                             ; preds = %39
  %.lcssa7 = phi ptr [ %41, %39 ]
  %.lcssa4 = phi ptr [ %41, %39 ]
  %.lcssa1 = phi i64 [ %40, %39 ]
  store i64 %.lcssa1, ptr %8, align 8
  store ptr %.lcssa4, ptr %7, align 8
  store ptr %.lcssa7, ptr %10, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %46

46:                                               ; preds = %.loopexit, %33
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
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %4
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %9, align 8
  br label %21

21:                                               ; preds = %.lr.ph, %26
  %22 = phi ptr [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %23 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %17)
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %22, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds nuw double, ptr %22, i32 1
  %28 = icmp ult ptr %27, %20
  br i1 %28, label %21, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %26
  %.lcssa = phi ptr [ %27, %26 ]
  store ptr %.lcssa, ptr %9, align 8
  br label %29

29:                                               ; preds = %._crit_edge, %4
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
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !15
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %16 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %18

18:                                               ; preds = %.lr.ph, %18
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %20, %18 ]
  %20 = getelementptr inbounds double, ptr %19, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %14, ptr noundef %20, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %17
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 1
  br i1 %24, label %18, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  store ptr %.lcssa, ptr %5, align 8
  br label %25

25:                                               ; preds = %._crit_edge, %3
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
  %32 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %10, i32 0, i32 0
  %33 = load i8, ptr %32, align 1
  %.promoted = load i64, ptr %8, align 8
  br label %34

34:                                               ; preds = %40, %19
  %35 = phi i64 [ %41, %40 ], [ %.promoted, %19 ]
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  %37 = load double, ptr %36, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %30, i64 noundef %35, i64 noundef %31, double noundef %37, i8 %33)
  %38 = icmp eq i64 %35, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  %.lcssa2 = phi double [ %37, %34 ]
  %.lcssa = phi i64 [ %35, %34 ]
  store i64 %.lcssa, ptr %8, align 8
  store double %.lcssa2, ptr %9, align 8
  br label %42

40:                                               ; preds = %34
  %41 = add nsw i64 %35, -1
  br label %34, !llvm.loop !104

42:                                               ; preds = %39, %18
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
  %18 = load i64, ptr %12, align 8
  %19 = load i64, ptr %9, align 8
  %20 = sub nsw i64 %19, 1
  %21 = sdiv i64 %20, 2
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %5
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load i64, ptr %9, align 8
  %28 = sub nsw i64 %27, 1
  %29 = sdiv i64 %28, 2
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %30

30:                                               ; preds = %.lr.ph, %41
  %31 = phi i64 [ %.promoted1, %.lr.ph ], [ %42, %41 ]
  %32 = phi i64 [ %.promoted, %.lr.ph ], [ %42, %41 ]
  %33 = add nsw i64 %32, 1
  %34 = mul nsw i64 2, %33
  %35 = getelementptr inbounds double, ptr %23, i64 %34
  %36 = sub nsw i64 %34, 1
  %37 = getelementptr inbounds double, ptr %24, i64 %36
  %38 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %35, ptr noundef %37)
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = add nsw i64 %34, -1
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i64 [ %40, %39 ], [ %34, %30 ]
  %43 = getelementptr inbounds double, ptr %25, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds double, ptr %26, i64 %31
  store double %44, ptr %45, align 8
  %46 = icmp slt i64 %42, %29
  br i1 %46, label %30, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %41
  %.lcssa2 = phi i64 [ %42, %41 ]
  %.lcssa = phi i64 [ %42, %41 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  br label %47

47:                                               ; preds = %._crit_edge, %5
  %48 = load i64, ptr %9, align 8
  %49 = and i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load i64, ptr %12, align 8
  %53 = load i64, ptr %9, align 8
  %54 = sub nsw i64 %53, 2
  %55 = sdiv i64 %54, 2
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i64, ptr %12, align 8
  %59 = add nsw i64 %58, 1
  %60 = mul nsw i64 2, %59
  store i64 %60, ptr %12, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = load i64, ptr %12, align 8
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds double, ptr %61, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = load ptr, ptr %7, align 8
  %67 = load i64, ptr %8, align 8
  %68 = getelementptr inbounds double, ptr %66, i64 %67
  store double %65, ptr %68, align 8
  %69 = load i64, ptr %12, align 8
  %70 = sub nsw i64 %69, 1
  store i64 %70, ptr %8, align 8
  br label %71

71:                                               ; preds = %57, %51, %47
  %72 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %14, i32 0, i32 0
  %73 = load i8, ptr %72, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 %73)
  %74 = load ptr, ptr %7, align 8
  %75 = load i64, ptr %8, align 8
  %76 = load i64, ptr %11, align 8
  %77 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %74, i64 noundef %75, i64 noundef %76, double noundef %77, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %10

10:                                               ; preds = %36, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %10
  %14 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %17 = getelementptr inbounds nuw double, ptr %16, i32 1
  %18 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %18, label %15, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %15
  %.lcssa = phi ptr [ %17, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  br label %19

19:                                               ; preds = %._crit_edge, %10
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %.lr.ph2, label %30

.lr.ph2:                                          ; preds = %19
  %25 = load ptr, ptr %8, align 8
  %.promoted4 = load ptr, ptr %7, align 8
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = phi ptr [ %.promoted4, %.lr.ph2 ], [ %28, %26 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %25, ptr noundef %28)
  br i1 %29, label %26, label %._crit_edge3, !llvm.loop !108

._crit_edge3:                                     ; preds = %26
  %.lcssa5 = phi ptr [ %28, %26 ]
  store ptr %.lcssa5, ptr %7, align 8
  br label %30

30:                                               ; preds = %._crit_edge3, %19
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = icmp ult ptr %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8
  ret ptr %35

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %37, ptr noundef %38)
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds nuw double, ptr %39, i32 1
  store ptr %40, ptr %6, align 8
  br label %10, !llvm.loop !109
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
  br label %88

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  %36 = load ptr, ptr %19, align 8
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %24, i32 0, i32 0
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %23, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  %41 = load ptr, ptr %19, align 8
  %42 = load ptr, ptr %19, align 8
  %43 = load ptr, ptr %20, align 8
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
  br label %44

44:                                               ; preds = %.lr.ph, %85
  %45 = phi ptr [ %.promoted27, %.lr.ph ], [ %71, %85 ]
  %46 = phi ptr [ %.promoted25, %.lr.ph ], [ %72, %85 ]
  %47 = phi ptr [ %.promoted23, %.lr.ph ], [ %73, %85 ]
  %48 = phi ptr [ %.promoted21, %.lr.ph ], [ %74, %85 ]
  %49 = phi ptr [ %.promoted19, %.lr.ph ], [ %75, %85 ]
  %50 = phi ptr [ %.promoted17, %.lr.ph ], [ %76, %85 ]
  %51 = phi ptr [ %.promoted15, %.lr.ph ], [ %77, %85 ]
  %52 = phi ptr [ %.promoted13, %.lr.ph ], [ %78, %85 ]
  %53 = phi ptr [ %.promoted11, %.lr.ph ], [ %79, %85 ]
  %54 = phi ptr [ %.promoted9, %.lr.ph ], [ %80, %85 ]
  %55 = phi ptr [ %.promoted7, %.lr.ph ], [ %81, %85 ]
  %56 = phi ptr [ %.promoted5, %.lr.ph ], [ %82, %85 ]
  %57 = phi ptr [ %.promoted3, %.lr.ph ], [ %83, %85 ]
  %58 = phi double [ %.promoted1, %.lr.ph ], [ %84, %85 ]
  %59 = phi ptr [ %.promoted, %.lr.ph ], [ %86, %85 ]
  %60 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %59, ptr noundef %36)
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load double, ptr %59, align 8
  %63 = getelementptr inbounds double, ptr %59, i64 1
  %64 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %41)
  %65 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %59)
  store ptr %63, ptr %14, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %64, ptr noundef %65, ptr noundef %66)
  store double %62, ptr %42, align 8
  br label %70

68:                                               ; preds = %44
  %69 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %38)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %59, i8 %40)
  br label %70

70:                                               ; preds = %68, %61
  %71 = phi ptr [ %45, %68 ], [ %67, %61 ]
  %72 = phi ptr [ %46, %68 ], [ %14, %61 ]
  %73 = phi ptr [ %47, %68 ], [ %66, %61 ]
  %74 = phi ptr [ %48, %68 ], [ %65, %61 ]
  %75 = phi ptr [ %49, %68 ], [ %64, %61 ]
  %76 = phi ptr [ %50, %68 ], [ %66, %61 ]
  %77 = phi ptr [ %51, %68 ], [ %65, %61 ]
  %78 = phi ptr [ %52, %68 ], [ %64, %61 ]
  %79 = phi ptr [ %53, %68 ], [ %65, %61 ]
  %80 = phi ptr [ %54, %68 ], [ %64, %61 ]
  %81 = phi ptr [ %55, %68 ], [ %63, %61 ]
  %82 = phi ptr [ %56, %68 ], [ %59, %61 ]
  %83 = phi ptr [ %57, %68 ], [ %41, %61 ]
  %84 = phi double [ %58, %68 ], [ %62, %61 ]
  br label %85

85:                                               ; preds = %70
  %86 = getelementptr inbounds nuw double, ptr %59, i32 1
  %87 = icmp ne ptr %86, %43
  br i1 %87, label %44, label %..loopexit_crit_edge, !llvm.loop !110

..loopexit_crit_edge:                             ; preds = %85
  %.lcssa28 = phi ptr [ %71, %85 ]
  %.lcssa26 = phi ptr [ %72, %85 ]
  %.lcssa24 = phi ptr [ %73, %85 ]
  %.lcssa22 = phi ptr [ %74, %85 ]
  %.lcssa20 = phi ptr [ %75, %85 ]
  %.lcssa18 = phi ptr [ %76, %85 ]
  %.lcssa16 = phi ptr [ %77, %85 ]
  %.lcssa14 = phi ptr [ %78, %85 ]
  %.lcssa12 = phi ptr [ %79, %85 ]
  %.lcssa10 = phi ptr [ %80, %85 ]
  %.lcssa8 = phi ptr [ %81, %85 ]
  %.lcssa6 = phi ptr [ %82, %85 ]
  %.lcssa4 = phi ptr [ %83, %85 ]
  %.lcssa2 = phi double [ %84, %85 ]
  %.lcssa = phi ptr [ %86, %85 ]
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
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %88

88:                                               ; preds = %.loopexit, %29
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
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = icmp ne ptr %12, %13
  br i1 %14, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %3
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %8, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %.lr.ph, %23
  %21 = phi ptr [ %.promoted, %.lr.ph ], [ %24, %23 ]
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %16)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %21, i8 %18)
  br label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw double, ptr %21, i32 1
  %25 = icmp ne ptr %24, %19
  br i1 %25, label %20, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %23
  %.lcssa = phi ptr [ %24, %23 ]
  store ptr %.lcssa, ptr %7, align 8
  br label %26

26:                                               ; preds = %._crit_edge, %3
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
  %13 = load ptr, ptr %6, align 8
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13)
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  %.promoted = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %17, %15 ]
  %17 = phi ptr [ %.promoted, %.lr.ph ], [ %19, %15 ]
  %18 = load double, ptr %17, align 8
  store double %18, ptr %16, align 8
  %19 = getelementptr inbounds double, ptr %17, i32 -1
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %19)
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %15
  %.lcssa2 = phi ptr [ %17, %15 ]
  %.lcssa = phi ptr [ %19, %15 ]
  store ptr %.lcssa, ptr %6, align 8
  store ptr %.lcssa2, ptr %4, align 8
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = load double, ptr %5, align 8
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
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
