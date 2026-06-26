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
  %21 = load i32, ptr @current_test, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %5
  br label %23

23:                                               ; preds = %.lr.ph, %35
  %24 = phi i32 [ 0, %.lr.ph ], [ %37, %35 ]
  %25 = phi i32 [ 12, %.lr.ph ], [ %36, %35 ]
  %26 = load ptr, ptr @results, align 8
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.one_result, ptr %26, i64 %27
  %29 = getelementptr inbounds nuw %struct.one_result, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = call i64 @strlen(ptr noundef %30) #15
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %16, align 4
  %33 = icmp sgt i32 %32, %25
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 %32, ptr %15, align 4
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi i32 [ %32, %34 ], [ %25, %23 ]
  %37 = add nsw i32 %24, 1
  store i32 %37, ptr %11, align 4
  %38 = load i32, ptr @current_test, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %23, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %35
  %split = phi i32 [ %36, %35 ]
  br label %40

40:                                               ; preds = %._crit_edge, %5
  %.lcssa4 = phi i32 [ %split, %._crit_edge ], [ 12, %5 ]
  %41 = sub nsw i32 %.lcssa4, 12
  %42 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %41, ptr noundef @.str.2)
  %43 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %.lcssa4, ptr noundef @.str.2)
  store i32 0, ptr %11, align 4
  %44 = load i32, ptr @current_test, align 4
  %45 = icmp slt i32 0, %44
  br i1 %45, label %.lr.ph6, label %69

.lr.ph6:                                          ; preds = %40
  br label %46

46:                                               ; preds = %.lr.ph6, %46
  %47 = phi i32 [ 0, %.lr.ph6 ], [ %66, %46 ]
  %48 = sext i32 %.lcssa4 to i64
  %49 = load ptr, ptr @results, align 8
  %50 = sext i32 %47 to i64
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
  %65 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %47, i32 noundef %56, ptr noundef @.str.5, ptr noundef %60, double noundef %61, double noundef %62, double noundef %64)
  %66 = add nsw i32 %47, 1
  store i32 %66, ptr %11, align 4
  %67 = load i32, ptr @current_test, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %46, label %._crit_edge7, !llvm.loop !9

._crit_edge7:                                     ; preds = %46
  %split8 = phi i32 [ %67, %46 ]
  br label %69

69:                                               ; preds = %._crit_edge7, %40
  %.lcssa3 = phi i32 [ %split8, %._crit_edge7 ], [ %44, %40 ]
  store i32 0, ptr %11, align 4
  %70 = icmp slt i32 0, %.lcssa3
  br i1 %70, label %.lr.ph10, label %81

.lr.ph10:                                         ; preds = %69
  br label %71

71:                                               ; preds = %.lr.ph10, %71
  %72 = phi i32 [ 0, %.lr.ph10 ], [ %79, %71 ]
  %73 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %78, %71 ]
  %74 = load ptr, ptr @results, align 8
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds %struct.one_result, ptr %74, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = fadd double %73, %77
  store double %78, ptr %13, align 8
  %79 = add nsw i32 %72, 1
  store i32 %79, ptr %11, align 4
  %80 = icmp slt i32 %79, %.lcssa3
  br i1 %80, label %71, label %._crit_edge11, !llvm.loop !10

._crit_edge11:                                    ; preds = %71
  %split12 = phi double [ %78, %71 ]
  br label %81

81:                                               ; preds = %._crit_edge11, %69
  %.lcssa2 = phi double [ %split12, %._crit_edge11 ], [ 0.000000e+00, %69 ]
  %82 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %.lcssa2)
  %83 = load i32, ptr @current_test, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = icmp ne i32 %4, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %85
  store i32 1, ptr %11, align 4
  %88 = icmp slt i32 1, %83
  br i1 %88, label %.lr.ph14, label %102

.lr.ph14:                                         ; preds = %87
  br label %89

89:                                               ; preds = %.lr.ph14, %89
  %90 = phi i32 [ 1, %.lr.ph14 ], [ %100, %89 ]
  %91 = phi double [ 0.000000e+00, %.lr.ph14 ], [ %99, %89 ]
  %92 = load ptr, ptr @results, align 8
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds %struct.one_result, ptr %92, i64 %93
  %95 = load double, ptr %94, align 8
  %96 = load double, ptr %92, align 8
  %97 = fdiv double %95, %96
  %98 = call double @log(double noundef %97) #15
  %99 = fadd double %91, %98
  store double %99, ptr %14, align 8
  %100 = add nsw i32 %90, 1
  store i32 %100, ptr %11, align 4
  %.pre = load i32, ptr @current_test, align 4
  %101 = icmp slt i32 %100, %.pre
  br i1 %101, label %89, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %89
  %split16 = phi double [ %99, %89 ]
  %split17 = phi i32 [ %.pre, %89 ]
  br label %102

102:                                              ; preds = %._crit_edge15, %87
  %.lcssa1 = phi double [ %split16, %._crit_edge15 ], [ 0.000000e+00, %87 ]
  %.lcssa = phi i32 [ %split17, %._crit_edge15 ], [ %83, %87 ]
  %103 = sub nsw i32 %.lcssa, 1
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %.lcssa1, %104
  %106 = call double @exp(double noundef %105) #15
  %107 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %106)
  br label %108

108:                                              ; preds = %102, %85, %81
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
  %9 = load i32, ptr @current_test, align 4
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %23
  %12 = phi i32 [ 0, %.lr.ph ], [ %25, %23 ]
  %13 = phi i32 [ 12, %.lr.ph ], [ %24, %23 ]
  %14 = load ptr, ptr @results, align 8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.one_result, ptr %14, i64 %15
  %17 = getelementptr inbounds nuw %struct.one_result, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef %18) #15
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %8, align 4
  %21 = icmp sgt i32 %20, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 %20, ptr %7, align 4
  br label %23

23:                                               ; preds = %22, %11
  %24 = phi i32 [ %20, %22 ], [ %13, %11 ]
  %25 = add nsw i32 %12, 1
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr @current_test, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %11, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %23
  %split = phi i32 [ %24, %23 ]
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi i32 [ %split, %._crit_edge ], [ 12, %2 ]
  %29 = sub nsw i32 %.lcssa2, 12
  %30 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %29, ptr noundef @.str.2)
  %31 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %.lcssa2, ptr noundef @.str.2)
  store i32 0, ptr %5, align 4
  %32 = load i32, ptr @current_test, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %.lr.ph4, label %54

.lr.ph4:                                          ; preds = %28
  br label %34

34:                                               ; preds = %.lr.ph4, %34
  %35 = phi i32 [ 0, %.lr.ph4 ], [ %51, %34 ]
  %36 = sext i32 %.lcssa2 to i64
  %37 = load ptr, ptr @results, align 8
  %38 = sext i32 %35 to i64
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
  %50 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %35, i32 noundef %44, ptr noundef @.str.5, ptr noundef %48, double noundef %49)
  %51 = add nsw i32 %35, 1
  store i32 %51, ptr %5, align 4
  %52 = load i32, ptr @current_test, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %34, label %._crit_edge5, !llvm.loop !13

._crit_edge5:                                     ; preds = %34
  %split6 = phi i32 [ %52, %34 ]
  br label %54

54:                                               ; preds = %._crit_edge5, %28
  %.lcssa1 = phi i32 [ %split6, %._crit_edge5 ], [ %32, %28 ]
  store i32 0, ptr %5, align 4
  %55 = icmp slt i32 0, %.lcssa1
  br i1 %55, label %.lr.ph8, label %66

.lr.ph8:                                          ; preds = %54
  br label %56

56:                                               ; preds = %.lr.ph8, %56
  %57 = phi i32 [ 0, %.lr.ph8 ], [ %64, %56 ]
  %58 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %63, %56 ]
  %59 = load ptr, ptr @results, align 8
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds %struct.one_result, ptr %59, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = fadd double %58, %62
  store double %63, ptr %6, align 8
  %64 = add nsw i32 %57, 1
  store i32 %64, ptr %5, align 4
  %65 = icmp slt i32 %64, %.lcssa1
  br i1 %65, label %56, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %56
  %split10 = phi double [ %63, %56 ]
  br label %66

66:                                               ; preds = %._crit_edge9, %54
  %.lcssa = phi double [ %split10, %._crit_edge9 ], [ 0.000000e+00, %54 ]
  %67 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %.lcssa)
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
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load double, ptr %0, align 8
  store double %17, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %18

18:                                               ; preds = %40, %16
  %19 = phi ptr [ %44, %40 ], [ %0, %16 ]
  %20 = phi ptr [ %.lcssa, %40 ], [ %1, %16 ]
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %23, %21 ], [ %20, %18 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %9, align 8
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %17, double noundef %24)
  br i1 %25, label %21, label %26, !llvm.loop !15

26:                                               ; preds = %21
  %.lcssa = phi ptr [ %23, %21 ]
  %27 = icmp ult ptr %19, %.lcssa
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  %.lcssa.lcssa = phi ptr [ %.lcssa, %26 ]
  br label %45

29:                                               ; preds = %26
  %30 = load double, ptr %19, align 8
  %31 = call noundef zeroext i1 %2(double noundef %30, double noundef %17)
  br i1 %31, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %29
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi ptr [ %19, %.lr.ph ], [ %34, %32 ]
  %34 = getelementptr inbounds nuw double, ptr %33, i32 1
  store ptr %34, ptr %8, align 8
  %35 = load double, ptr %34, align 8
  %36 = call noundef zeroext i1 %2(double noundef %35, double noundef %17)
  br i1 %36, label %32, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %32
  %split = phi ptr [ %34, %32 ]
  br label %37

37:                                               ; preds = %._crit_edge, %29
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %19, %29 ]
  %38 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %37 ]
  br label %45

40:                                               ; preds = %37
  %41 = load double, ptr %.lcssa, align 8
  store double %41, ptr %10, align 8
  %42 = load double, ptr %.lcssa3, align 8
  store double %42, ptr %.lcssa, align 8
  %43 = load double, ptr %10, align 8
  %44 = load ptr, ptr %8, align 8
  store double %43, ptr %44, align 8
  br label %18, !llvm.loop !17

45:                                               ; preds = %39, %28
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %39 ], [ %.lcssa.lcssa, %28 ]
  %46 = getelementptr inbounds double, ptr %.lcssa2, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %46, ptr noundef %2)
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = load ptr, ptr %5, align 8
  %50 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %48, ptr noundef %49, ptr noundef %50)
  br label %51

51:                                               ; preds = %45, %3
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
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load double, ptr %0, align 8
  store double %17, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %18

18:                                               ; preds = %40, %16
  %19 = phi ptr [ %44, %40 ], [ %0, %16 ]
  %20 = phi ptr [ %.lcssa, %40 ], [ %1, %16 ]
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %23, %21 ], [ %20, %18 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %9, align 8
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %17, double noundef %24)
  br i1 %25, label %21, label %26, !llvm.loop !18

26:                                               ; preds = %21
  %.lcssa = phi ptr [ %23, %21 ]
  %27 = icmp ult ptr %19, %.lcssa
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  %.lcssa.lcssa = phi ptr [ %.lcssa, %26 ]
  br label %45

29:                                               ; preds = %26
  %30 = load double, ptr %19, align 8
  %31 = call noundef zeroext i1 %2(double noundef %30, double noundef %17)
  br i1 %31, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %29
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi ptr [ %19, %.lr.ph ], [ %34, %32 ]
  %34 = getelementptr inbounds nuw double, ptr %33, i32 1
  store ptr %34, ptr %8, align 8
  %35 = load double, ptr %34, align 8
  %36 = call noundef zeroext i1 %2(double noundef %35, double noundef %17)
  br i1 %36, label %32, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %32
  %split = phi ptr [ %34, %32 ]
  br label %37

37:                                               ; preds = %._crit_edge, %29
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %19, %29 ]
  %38 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %37 ]
  br label %45

40:                                               ; preds = %37
  %41 = load double, ptr %.lcssa, align 8
  store double %41, ptr %10, align 8
  %42 = load double, ptr %.lcssa3, align 8
  store double %42, ptr %.lcssa, align 8
  %43 = load double, ptr %10, align 8
  %44 = load ptr, ptr %8, align 8
  store double %43, ptr %44, align 8
  br label %18, !llvm.loop !20

45:                                               ; preds = %39, %28
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %39 ], [ %.lcssa.lcssa, %28 ]
  %46 = getelementptr inbounds double, ptr %.lcssa2, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %46, ptr noundef %2)
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = load ptr, ptr %5, align 8
  %50 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %48, ptr noundef %49, ptr noundef %50)
  br label %51

51:                                               ; preds = %45, %3
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
  %41 = icmp slt i32 0, %33
  br i1 %41, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %32
  br label %42

42:                                               ; preds = %.lr.ph, %42
  %43 = phi i32 [ 0, %.lr.ph ], [ %48, %42 ]
  %44 = call i32 @rand()
  %45 = sitofp i32 %44 to double
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds double, ptr %40, i64 %46
  store double %45, ptr %47, align 8
  %48 = add nsw i32 %43, 1
  store i32 %48, ptr %10, align 4
  %49 = icmp slt i32 %48, %33
  br i1 %49, label %42, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %42
  br label %50

50:                                               ; preds = %._crit_edge, %32
  %51 = call noalias noundef nonnull ptr @_Znay(i64 noundef %39) #16
  store ptr %51, ptr %11, align 8
  store i32 0, ptr %6, align 4
  %52 = icmp slt i32 0, %25
  br i1 %52, label %.lr.ph27, label %66

.lr.ph27:                                         ; preds = %50
  br label %53

53:                                               ; preds = %.lr.ph27, %53
  %54 = phi ptr [ %51, %.lr.ph27 ], [ %59, %53 ]
  %55 = phi i32 [ %33, %.lr.ph27 ], [ %60, %53 ]
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %40, i64 %56
  %58 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %57, ptr noundef %54)
  %59 = load ptr, ptr %11, align 8
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  call void @qsort(ptr noundef %59, i64 noundef %61, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %59, ptr noundef %62)
  %63 = load i32, ptr %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %6, align 4
  %65 = icmp slt i32 %64, %25
  br i1 %65, label %53, label %._crit_edge28, !llvm.loop !22

._crit_edge28:                                    ; preds = %53
  %split = phi i32 [ %60, %53 ]
  %split29 = phi ptr [ %59, %53 ]
  br label %66

66:                                               ; preds = %._crit_edge28, %50
  %.lcssa25 = phi i32 [ %split, %._crit_edge28 ], [ %33, %50 ]
  %.lcssa24 = phi ptr [ %split29, %._crit_edge28 ], [ %51, %50 ]
  store i32 0, ptr %6, align 4
  %67 = icmp slt i32 0, %25
  br i1 %67, label %.lr.ph31, label %81

.lr.ph31:                                         ; preds = %66
  br label %68

68:                                               ; preds = %.lr.ph31, %68
  %69 = phi ptr [ %.lcssa24, %.lr.ph31 ], [ %74, %68 ]
  %70 = phi i32 [ %.lcssa25, %.lr.ph31 ], [ %75, %68 ]
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %40, i64 %71
  %73 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %72, ptr noundef %69)
  %74 = load ptr, ptr %11, align 8
  %75 = load i32, ptr %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %74, i64 %76
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %74, ptr noundef %77, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %74, ptr noundef %77)
  %78 = load i32, ptr %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %6, align 4
  %80 = icmp slt i32 %79, %25
  br i1 %80, label %68, label %._crit_edge32, !llvm.loop !23

._crit_edge32:                                    ; preds = %68
  %split33 = phi i32 [ %75, %68 ]
  %split34 = phi ptr [ %74, %68 ]
  br label %81

81:                                               ; preds = %._crit_edge32, %66
  %.lcssa23 = phi i32 [ %split33, %._crit_edge32 ], [ %.lcssa25, %66 ]
  %.lcssa22 = phi ptr [ %split34, %._crit_edge32 ], [ %.lcssa24, %66 ]
  store i32 0, ptr %6, align 4
  %82 = icmp slt i32 0, %25
  br i1 %82, label %.lr.ph36, label %96

.lr.ph36:                                         ; preds = %81
  br label %83

83:                                               ; preds = %.lr.ph36, %83
  %84 = phi ptr [ %.lcssa22, %.lr.ph36 ], [ %89, %83 ]
  %85 = phi i32 [ %.lcssa23, %.lr.ph36 ], [ %90, %83 ]
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, ptr %40, i64 %86
  %88 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %87, ptr noundef %84)
  %89 = load ptr, ptr %11, align 8
  %90 = load i32, ptr %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %89, i64 %91
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %89, ptr noundef %92, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %89, ptr noundef %92)
  %93 = load i32, ptr %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %6, align 4
  %95 = icmp slt i32 %94, %25
  br i1 %95, label %83, label %._crit_edge37, !llvm.loop !24

._crit_edge37:                                    ; preds = %83
  %split38 = phi i32 [ %90, %83 ]
  %split39 = phi ptr [ %89, %83 ]
  br label %96

96:                                               ; preds = %._crit_edge37, %81
  %.lcssa21 = phi i32 [ %split38, %._crit_edge37 ], [ %.lcssa23, %81 ]
  %.lcssa20 = phi ptr [ %split39, %._crit_edge37 ], [ %.lcssa22, %81 ]
  store i32 0, ptr %6, align 4
  %97 = icmp slt i32 0, %25
  br i1 %97, label %.lr.ph41, label %111

.lr.ph41:                                         ; preds = %96
  br label %98

98:                                               ; preds = %.lr.ph41, %98
  %99 = phi ptr [ %.lcssa20, %.lr.ph41 ], [ %104, %98 ]
  %100 = phi i32 [ %.lcssa21, %.lr.ph41 ], [ %105, %98 ]
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, ptr %40, i64 %101
  %103 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %102, ptr noundef %99)
  %104 = load ptr, ptr %11, align 8
  %105 = load i32, ptr %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, ptr %104, i64 %106
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %104, ptr noundef %107)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %104, ptr noundef %107)
  %108 = load i32, ptr %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %6, align 4
  %110 = icmp slt i32 %109, %25
  br i1 %110, label %98, label %._crit_edge42, !llvm.loop !25

._crit_edge42:                                    ; preds = %98
  %split43 = phi i32 [ %105, %98 ]
  %split44 = phi ptr [ %104, %98 ]
  br label %111

111:                                              ; preds = %._crit_edge42, %96
  %.lcssa19 = phi i32 [ %split43, %._crit_edge42 ], [ %.lcssa21, %96 ]
  %.lcssa18 = phi ptr [ %split44, %._crit_edge42 ], [ %.lcssa20, %96 ]
  store i32 0, ptr %6, align 4
  %112 = icmp slt i32 0, %25
  br i1 %112, label %.lr.ph46, label %126

.lr.ph46:                                         ; preds = %111
  br label %113

113:                                              ; preds = %.lr.ph46, %113
  %114 = phi ptr [ %.lcssa18, %.lr.ph46 ], [ %119, %113 ]
  %115 = phi i32 [ %.lcssa19, %.lr.ph46 ], [ %120, %113 ]
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, ptr %40, i64 %116
  %118 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %117, ptr noundef %114)
  %119 = load ptr, ptr %11, align 8
  %120 = load i32, ptr %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, ptr %119, i64 %121
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %119, ptr noundef %122, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %119, ptr noundef %122)
  %123 = load i32, ptr %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %6, align 4
  %125 = icmp slt i32 %124, %25
  br i1 %125, label %113, label %._crit_edge47, !llvm.loop !26

._crit_edge47:                                    ; preds = %113
  %split48 = phi i32 [ %120, %113 ]
  %split49 = phi ptr [ %119, %113 ]
  br label %126

126:                                              ; preds = %._crit_edge47, %111
  %.lcssa17 = phi i32 [ %split48, %._crit_edge47 ], [ %.lcssa19, %111 ]
  %.lcssa16 = phi ptr [ %split49, %._crit_edge47 ], [ %.lcssa18, %111 ]
  store i32 0, ptr %6, align 4
  %127 = icmp slt i32 0, %25
  br i1 %127, label %.lr.ph51, label %142

.lr.ph51:                                         ; preds = %126
  br label %128

128:                                              ; preds = %.lr.ph51, %128
  %129 = phi ptr [ %.lcssa16, %.lr.ph51 ], [ %134, %128 ]
  %130 = phi i32 [ %.lcssa17, %.lr.ph51 ], [ %135, %128 ]
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, ptr %40, i64 %131
  %133 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %132, ptr noundef %129)
  %134 = load ptr, ptr %11, align 8
  %135 = load i32, ptr %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, ptr %134, i64 %136
  %138 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %134, ptr noundef %137, i8 %138)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %134, ptr noundef %137)
  %139 = load i32, ptr %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %6, align 4
  %141 = icmp slt i32 %140, %25
  br i1 %141, label %128, label %._crit_edge52, !llvm.loop !27

._crit_edge52:                                    ; preds = %128
  %split53 = phi i32 [ %135, %128 ]
  %split54 = phi ptr [ %134, %128 ]
  br label %142

142:                                              ; preds = %._crit_edge52, %126
  %.lcssa15 = phi i32 [ %split53, %._crit_edge52 ], [ %.lcssa17, %126 ]
  %.lcssa14 = phi ptr [ %split54, %._crit_edge52 ], [ %.lcssa16, %126 ]
  store i32 0, ptr %6, align 4
  %143 = icmp slt i32 0, %25
  br i1 %143, label %.lr.ph56, label %160

.lr.ph56:                                         ; preds = %142
  br label %144

144:                                              ; preds = %.lr.ph56, %144
  %145 = phi ptr [ %.lcssa14, %.lr.ph56 ], [ %150, %144 ]
  %146 = phi i32 [ %.lcssa15, %.lr.ph56 ], [ %151, %144 ]
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, ptr %145, i64 %147
  %149 = load i8, ptr %13, align 1
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %145, ptr noundef %148, i8 %149)
  %150 = load ptr, ptr %11, align 8
  %151 = load i32, ptr %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, ptr %150, i64 %152
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %150, ptr noundef %153)
  %154 = load ptr, ptr %9, align 8
  %155 = getelementptr inbounds double, ptr %154, i64 %152
  %156 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %154, ptr noundef %155, ptr noundef %150)
  %157 = load i32, ptr %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %6, align 4
  %159 = icmp slt i32 %158, %25
  br i1 %159, label %144, label %._crit_edge57, !llvm.loop !28

._crit_edge57:                                    ; preds = %144
  %split58 = phi i32 [ %151, %144 ]
  %split59 = phi ptr [ %154, %144 ]
  %split60 = phi ptr [ %150, %144 ]
  br label %160

160:                                              ; preds = %._crit_edge57, %142
  %.lcssa13 = phi i32 [ %split58, %._crit_edge57 ], [ %.lcssa15, %142 ]
  %.lcssa12 = phi ptr [ %split59, %._crit_edge57 ], [ %40, %142 ]
  %.lcssa11 = phi ptr [ %split60, %._crit_edge57 ], [ %.lcssa14, %142 ]
  store i32 0, ptr %6, align 4
  %161 = icmp slt i32 0, %25
  br i1 %161, label %.lr.ph62, label %176

.lr.ph62:                                         ; preds = %160
  br label %162

162:                                              ; preds = %.lr.ph62, %162
  %163 = phi ptr [ %.lcssa11, %.lr.ph62 ], [ %168, %162 ]
  %164 = phi i32 [ %.lcssa13, %.lr.ph62 ], [ %169, %162 ]
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, ptr %.lcssa12, i64 %165
  %167 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.lcssa12, ptr noundef %166, ptr noundef %163)
  %168 = load ptr, ptr %11, align 8
  %169 = load i32, ptr %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, ptr %168, i64 %170
  %172 = load i8, ptr %14, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %168, ptr noundef %171, i8 %172)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %168, ptr noundef %171)
  %173 = load i32, ptr %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %6, align 4
  %175 = icmp slt i32 %174, %25
  br i1 %175, label %162, label %._crit_edge63, !llvm.loop !29

._crit_edge63:                                    ; preds = %162
  %split64 = phi i32 [ %169, %162 ]
  %split65 = phi ptr [ %168, %162 ]
  br label %176

176:                                              ; preds = %._crit_edge63, %160
  %.lcssa10 = phi i32 [ %split64, %._crit_edge63 ], [ %.lcssa13, %160 ]
  %.lcssa9 = phi ptr [ %split65, %._crit_edge63 ], [ %.lcssa11, %160 ]
  store i32 0, ptr %6, align 4
  %177 = icmp slt i32 0, %25
  br i1 %177, label %.lr.ph67, label %192

.lr.ph67:                                         ; preds = %176
  br label %178

178:                                              ; preds = %.lr.ph67, %178
  %179 = phi ptr [ %.lcssa9, %.lr.ph67 ], [ %184, %178 ]
  %180 = phi i32 [ %.lcssa10, %.lr.ph67 ], [ %185, %178 ]
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, ptr %.lcssa12, i64 %181
  %183 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.lcssa12, ptr noundef %182, ptr noundef %179)
  %184 = load ptr, ptr %11, align 8
  %185 = load i32, ptr %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, ptr %184, i64 %186
  %188 = load i8, ptr %15, align 1
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %184, ptr noundef %187, i8 %188)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %184, ptr noundef %187)
  %189 = load i32, ptr %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %6, align 4
  %191 = icmp slt i32 %190, %25
  br i1 %191, label %178, label %._crit_edge68, !llvm.loop !30

._crit_edge68:                                    ; preds = %178
  %split69 = phi i32 [ %185, %178 ]
  %split70 = phi ptr [ %184, %178 ]
  br label %192

192:                                              ; preds = %._crit_edge68, %176
  %.lcssa8 = phi i32 [ %split69, %._crit_edge68 ], [ %.lcssa10, %176 ]
  %.lcssa7 = phi ptr [ %split70, %._crit_edge68 ], [ %.lcssa9, %176 ]
  store i32 0, ptr %6, align 4
  %193 = icmp slt i32 0, %25
  br i1 %193, label %.lr.ph72, label %208

.lr.ph72:                                         ; preds = %192
  br label %194

194:                                              ; preds = %.lr.ph72, %194
  %195 = phi ptr [ %.lcssa7, %.lr.ph72 ], [ %200, %194 ]
  %196 = phi i32 [ %.lcssa8, %.lr.ph72 ], [ %201, %194 ]
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds double, ptr %.lcssa12, i64 %197
  %199 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.lcssa12, ptr noundef %198, ptr noundef %195)
  %200 = load ptr, ptr %11, align 8
  %201 = load i32, ptr %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, ptr %200, i64 %202
  %204 = load i8, ptr %16, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %200, ptr noundef %203, i8 %204)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %200, ptr noundef %203)
  %205 = load i32, ptr %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %6, align 4
  %207 = icmp slt i32 %206, %25
  br i1 %207, label %194, label %._crit_edge73, !llvm.loop !31

._crit_edge73:                                    ; preds = %194
  %split74 = phi i32 [ %201, %194 ]
  %split75 = phi ptr [ %200, %194 ]
  br label %208

208:                                              ; preds = %._crit_edge73, %192
  %.lcssa6 = phi i32 [ %split74, %._crit_edge73 ], [ %.lcssa8, %192 ]
  %.lcssa5 = phi ptr [ %split75, %._crit_edge73 ], [ %.lcssa7, %192 ]
  store i32 0, ptr %6, align 4
  %209 = icmp slt i32 0, %25
  br i1 %209, label %.lr.ph77, label %224

.lr.ph77:                                         ; preds = %208
  br label %210

210:                                              ; preds = %.lr.ph77, %210
  %211 = phi ptr [ %.lcssa5, %.lr.ph77 ], [ %216, %210 ]
  %212 = phi i32 [ %.lcssa6, %.lr.ph77 ], [ %217, %210 ]
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, ptr %.lcssa12, i64 %213
  %215 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.lcssa12, ptr noundef %214, ptr noundef %211)
  %216 = load ptr, ptr %11, align 8
  %217 = load i32, ptr %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds double, ptr %216, i64 %218
  %220 = load i8, ptr %17, align 1
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %216, ptr noundef %219, i8 %220)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %216, ptr noundef %219)
  %221 = load i32, ptr %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %6, align 4
  %223 = icmp slt i32 %222, %25
  br i1 %223, label %210, label %._crit_edge78, !llvm.loop !32

._crit_edge78:                                    ; preds = %210
  %split79 = phi i32 [ %217, %210 ]
  %split80 = phi ptr [ %216, %210 ]
  br label %224

224:                                              ; preds = %._crit_edge78, %208
  %.lcssa4 = phi i32 [ %split79, %._crit_edge78 ], [ %.lcssa6, %208 ]
  %.lcssa3 = phi ptr [ %split80, %._crit_edge78 ], [ %.lcssa5, %208 ]
  store i32 0, ptr %6, align 4
  %225 = icmp slt i32 0, %25
  br i1 %225, label %.lr.ph82, label %239

.lr.ph82:                                         ; preds = %224
  br label %226

226:                                              ; preds = %.lr.ph82, %226
  %227 = phi ptr [ %.lcssa3, %.lr.ph82 ], [ %232, %226 ]
  %228 = phi i32 [ %.lcssa4, %.lr.ph82 ], [ %233, %226 ]
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, ptr %.lcssa12, i64 %229
  %231 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.lcssa12, ptr noundef %230, ptr noundef %227)
  %232 = load ptr, ptr %11, align 8
  %233 = load i32, ptr %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, ptr %232, i64 %234
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %232, ptr noundef %235)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %232, ptr noundef %235)
  %236 = load i32, ptr %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %6, align 4
  %238 = icmp slt i32 %237, %25
  br i1 %238, label %226, label %._crit_edge83, !llvm.loop !33

._crit_edge83:                                    ; preds = %226
  %split84 = phi i32 [ %233, %226 ]
  %split85 = phi ptr [ %232, %226 ]
  br label %239

239:                                              ; preds = %._crit_edge83, %224
  %.lcssa2 = phi i32 [ %split84, %._crit_edge83 ], [ %.lcssa4, %224 ]
  %.lcssa1 = phi ptr [ %split85, %._crit_edge83 ], [ %.lcssa3, %224 ]
  store i32 0, ptr %6, align 4
  %240 = icmp slt i32 0, %25
  br i1 %240, label %.lr.ph87, label %254

.lr.ph87:                                         ; preds = %239
  br label %241

241:                                              ; preds = %.lr.ph87, %241
  %242 = phi ptr [ %.lcssa1, %.lr.ph87 ], [ %247, %241 ]
  %243 = phi i32 [ %.lcssa2, %.lr.ph87 ], [ %248, %241 ]
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds double, ptr %.lcssa12, i64 %244
  %246 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.lcssa12, ptr noundef %245, ptr noundef %242)
  %247 = load ptr, ptr %11, align 8
  %248 = load i32, ptr %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double, ptr %247, i64 %249
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %247, ptr noundef %250)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %247, ptr noundef %250)
  %251 = load i32, ptr %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, ptr %6, align 4
  %253 = icmp slt i32 %252, %25
  br i1 %253, label %241, label %._crit_edge88, !llvm.loop !34

._crit_edge88:                                    ; preds = %241
  %split89 = phi ptr [ %247, %241 ]
  br label %254

254:                                              ; preds = %._crit_edge88, %239
  %.lcssa = phi ptr [ %split89, %._crit_edge88 ], [ %.lcssa1, %239 ]
  %255 = icmp eq ptr %.lcssa, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %254
  call void @_ZdaPv(ptr noundef %.lcssa) #17
  %.pre = load ptr, ptr %9, align 8
  br label %257

257:                                              ; preds = %256, %254
  %258 = phi ptr [ %.pre, %256 ], [ %.lcssa12, %254 ]
  %259 = icmp eq ptr %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  call void @_ZdaPv(ptr noundef %258) #17
  br label %261

261:                                              ; preds = %260, %257
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
  %7 = icmp ne ptr %6, %1
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  br label %12

8:                                                ; preds = %12
  %9 = phi ptr [ %17, %12 ]
  %10 = phi ptr [ %15, %12 ]
  %11 = icmp ne ptr %10, %1
  br i1 %11, label %12, label %..loopexit_crit_edge, !llvm.loop !35

12:                                               ; preds = %.lr.ph, %8
  %13 = phi ptr [ %6, %.lr.ph ], [ %10, %8 ]
  %14 = phi ptr [ %0, %.lr.ph ], [ %9, %8 ]
  %15 = getelementptr inbounds nuw double, ptr %13, i32 1
  store ptr %15, ptr %3, align 8
  %16 = load double, ptr %13, align 8
  %17 = getelementptr inbounds nuw double, ptr %14, i32 1
  store ptr %17, ptr %5, align 8
  %18 = load double, ptr %14, align 8
  %19 = fcmp olt double %16, %18
  br i1 %19, label %20, label %8

20:                                               ; preds = %12
  %21 = load i32, ptr @current_test, align 4
  %22 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %21)
  br label %23

..loopexit_crit_edge:                             ; preds = %8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  br label %23

23:                                               ; preds = %.loopexit, %20
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
  br i1 %13, label %14, label %48

14:                                               ; preds = %2
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %16

16:                                               ; preds = %38, %14
  %17 = phi ptr [ %42, %38 ], [ %0, %14 ]
  %18 = phi ptr [ %.lcssa, %38 ], [ %1, %14 ]
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %21, %19 ], [ %18, %16 ]
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %22 = load double, ptr %21, align 8
  %23 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %15, double noundef %22)
  br i1 %23, label %19, label %24, !llvm.loop !36

24:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  %25 = icmp ult ptr %17, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  %.lcssa.lcssa = phi ptr [ %.lcssa, %24 ]
  br label %43

27:                                               ; preds = %24
  %28 = load double, ptr %17, align 8
  %29 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %28, double noundef %15)
  br i1 %29, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %30
  %31 = phi ptr [ %17, %.lr.ph ], [ %32, %30 ]
  %32 = getelementptr inbounds nuw double, ptr %31, i32 1
  store ptr %32, ptr %6, align 8
  %33 = load double, ptr %32, align 8
  %34 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %33, double noundef %15)
  br i1 %34, label %30, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %30
  %split = phi ptr [ %32, %30 ]
  br label %35

35:                                               ; preds = %._crit_edge, %27
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %17, %27 ]
  %36 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %35 ]
  br label %43

38:                                               ; preds = %35
  %39 = load double, ptr %.lcssa, align 8
  store double %39, ptr %8, align 8
  %40 = load double, ptr %.lcssa3, align 8
  store double %40, ptr %.lcssa, align 8
  %41 = load double, ptr %8, align 8
  %42 = load ptr, ptr %6, align 8
  store double %41, ptr %42, align 8
  br label %16, !llvm.loop !38

43:                                               ; preds = %37, %26
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %37 ], [ %.lcssa.lcssa, %26 ]
  %44 = getelementptr inbounds double, ptr %.lcssa2, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %44, ptr noundef @_Z19less_than_function2dd)
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 1
  %47 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %46, ptr noundef %47, ptr noundef @_Z19less_than_function2dd)
  br label %48

48:                                               ; preds = %43, %2
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
  %21 = phi ptr [ %.lcssa, %39 ], [ %1, %18 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %24, %22 ], [ %21, %20 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %24, ptr %9, align 8
  %25 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %24)
  br i1 %25, label %22, label %26, !llvm.loop !39

26:                                               ; preds = %22
  %.lcssa = phi ptr [ %24, %22 ]
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %.lcssa
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  %.lcssa.lcssa = phi ptr [ %.lcssa, %26 ]
  br label %44

30:                                               ; preds = %26
  %31 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi ptr [ %27, %.lr.ph ], [ %34, %32 ]
  %34 = getelementptr inbounds nuw double, ptr %33, i32 1
  store ptr %34, ptr %8, align 8
  %35 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %35, label %32, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %32
  %split = phi ptr [ %34, %32 ]
  br label %36

36:                                               ; preds = %._crit_edge, %30
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %27, %30 ]
  %37 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %36 ]
  br label %44

39:                                               ; preds = %36
  %40 = load double, ptr %.lcssa, align 8
  store double %40, ptr %10, align 8
  %41 = load double, ptr %.lcssa3, align 8
  store double %41, ptr %.lcssa, align 8
  %42 = load double, ptr %10, align 8
  %43 = load ptr, ptr %8, align 8
  store double %42, ptr %43, align 8
  br label %20, !llvm.loop !41

44:                                               ; preds = %38, %29
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %38 ], [ %.lcssa.lcssa, %29 ]
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds double, ptr %.lcssa2, i64 1
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
  %21 = phi ptr [ %.lcssa, %39 ], [ %1, %18 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %24, %22 ], [ %21, %20 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %24, ptr %9, align 8
  %25 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %24)
  br i1 %25, label %22, label %26, !llvm.loop !42

26:                                               ; preds = %22
  %.lcssa = phi ptr [ %24, %22 ]
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %.lcssa
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  %.lcssa.lcssa = phi ptr [ %.lcssa, %26 ]
  br label %44

30:                                               ; preds = %26
  %31 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi ptr [ %27, %.lr.ph ], [ %34, %32 ]
  %34 = getelementptr inbounds nuw double, ptr %33, i32 1
  store ptr %34, ptr %8, align 8
  %35 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %35, label %32, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %32
  %split = phi ptr [ %34, %32 ]
  br label %36

36:                                               ; preds = %._crit_edge, %30
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %27, %30 ]
  %37 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %36 ]
  br label %44

39:                                               ; preds = %36
  %40 = load double, ptr %.lcssa, align 8
  store double %40, ptr %10, align 8
  %41 = load double, ptr %.lcssa3, align 8
  store double %41, ptr %.lcssa, align 8
  %42 = load double, ptr %10, align 8
  %43 = load ptr, ptr %8, align 8
  store double %42, ptr %43, align 8
  br label %20, !llvm.loop !44

44:                                               ; preds = %38, %29
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %38 ], [ %.lcssa.lcssa, %29 ]
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds double, ptr %.lcssa2, i64 1
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
  %21 = phi ptr [ %.lcssa, %39 ], [ %1, %18 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %24, %22 ], [ %21, %20 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %24, ptr %9, align 8
  %25 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %24)
  br i1 %25, label %22, label %26, !llvm.loop !45

26:                                               ; preds = %22
  %.lcssa = phi ptr [ %24, %22 ]
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %.lcssa
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  %.lcssa.lcssa = phi ptr [ %.lcssa, %26 ]
  br label %44

30:                                               ; preds = %26
  %31 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi ptr [ %27, %.lr.ph ], [ %34, %32 ]
  %34 = getelementptr inbounds nuw double, ptr %33, i32 1
  store ptr %34, ptr %8, align 8
  %35 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %35, label %32, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %32
  %split = phi ptr [ %34, %32 ]
  br label %36

36:                                               ; preds = %._crit_edge, %30
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %27, %30 ]
  %37 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %36 ]
  br label %44

39:                                               ; preds = %36
  %40 = load double, ptr %.lcssa, align 8
  store double %40, ptr %10, align 8
  %41 = load double, ptr %.lcssa3, align 8
  store double %41, ptr %.lcssa, align 8
  %42 = load double, ptr %10, align 8
  %43 = load ptr, ptr %8, align 8
  store double %42, ptr %43, align 8
  br label %20, !llvm.loop !47

44:                                               ; preds = %38, %29
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %38 ], [ %.lcssa.lcssa, %29 ]
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds double, ptr %.lcssa2, i64 1
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
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %16

16:                                               ; preds = %37, %14
  %17 = phi double [ %39, %37 ], [ %15, %14 ]
  %18 = phi ptr [ %40, %37 ], [ %0, %14 ]
  %19 = phi ptr [ %.lcssa1, %37 ], [ %1, %14 ]
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %22, %20 ], [ %19, %16 ]
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %23 = load double, ptr %22, align 8
  %24 = fcmp olt double %15, %23
  br i1 %24, label %20, label %25, !llvm.loop !48

25:                                               ; preds = %20
  %.lcssa1 = phi ptr [ %22, %20 ]
  %.lcssa = phi double [ %23, %20 ]
  %26 = icmp ult ptr %18, %.lcssa1
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa1.lcssa = phi ptr [ %.lcssa1, %25 ]
  br label %41

28:                                               ; preds = %25
  %29 = fcmp olt double %17, %15
  br i1 %29, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %28
  br label %30

30:                                               ; preds = %.lr.ph, %30
  %31 = phi ptr [ %18, %.lr.ph ], [ %32, %30 ]
  %32 = getelementptr inbounds nuw double, ptr %31, i32 1
  store ptr %32, ptr %6, align 8
  %.pre = load double, ptr %32, align 8
  %33 = fcmp olt double %.pre, %15
  br i1 %33, label %30, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %30
  %split = phi ptr [ %32, %30 ]
  br label %34

34:                                               ; preds = %._crit_edge, %28
  %.lcssa4 = phi ptr [ %split, %._crit_edge ], [ %18, %28 ]
  %35 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  %.lcssa1.lcssa2 = phi ptr [ %.lcssa1, %34 ]
  br label %41

37:                                               ; preds = %34
  store double %.lcssa, ptr %8, align 8
  %38 = load double, ptr %.lcssa4, align 8
  store double %38, ptr %.lcssa1, align 8
  %39 = load double, ptr %8, align 8
  %40 = load ptr, ptr %6, align 8
  store double %39, ptr %40, align 8
  br label %16, !llvm.loop !50

41:                                               ; preds = %36, %27
  %.lcssa13 = phi ptr [ %.lcssa1.lcssa2, %36 ], [ %.lcssa1.lcssa, %27 ]
  %42 = getelementptr inbounds double, ptr %.lcssa13, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %42)
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds double, ptr %43, i64 1
  %45 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %44, ptr noundef %45)
  br label %46

46:                                               ; preds = %41, %2
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
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = icmp sgt i64 %17, 16
  br i1 %18, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %26
  %20 = phi ptr [ %1, %.lr.ph ], [ %30, %26 ]
  %21 = phi i64 [ %2, %.lr.ph ], [ %27, %26 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %.lcssa1 = phi ptr [ %20, %19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %24 = load ptr, ptr %9, align 8
  %25 = ptrtoint ptr %24 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i64 %25)
  br label %37

26:                                               ; preds = %19
  %27 = add nsw i64 %21, -1
  store i64 %27, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %28 = load ptr, ptr %11, align 8
  %29 = ptrtoint ptr %28 to i64
  %30 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %20, i64 %29)
  store ptr %30, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %31 = load ptr, ptr %12, align 8
  %32 = ptrtoint ptr %31 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %30, ptr noundef %20, i64 noundef %27, i64 %32)
  store ptr %30, ptr %7, align 8
  %33 = ptrtoint ptr %30 to i64
  %34 = sub i64 %33, %15
  %35 = sdiv exact i64 %34, 8
  %36 = icmp sgt i64 %35, 16
  br i1 %36, label %19, label %..loopexit_crit_edge, !llvm.loop !51

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %37

37:                                               ; preds = %.loopexit, %23
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
  %11 = icmp ult ptr %1, %2
  br i1 %11, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %18
  %13 = phi ptr [ %1, %.lr.ph ], [ %20, %18 ]
  %14 = phi ptr [ %0, %.lr.ph ], [ %19, %18 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13, ptr noundef %14)
  %.pre = load ptr, ptr %9, align 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %17, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %0, %16 ], [ %14, %12 ]
  %20 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %20, ptr %9, align 8
  %21 = icmp ult ptr %20, %2
  br i1 %21, label %12, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %18
  br label %22

22:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %14 = getelementptr inbounds double, ptr %13, i32 -1
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %14, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %16, %8
  %18 = sdiv exact i64 %17, 8
  %19 = icmp sgt i64 %18, 1
  br i1 %19, label %12, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %34

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %2, i64 8, i1 false)
  %22 = load ptr, ptr %10, align 8
  %23 = ptrtoint ptr %22 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %19, i64 noundef %14, double noundef %21, i64 %23)
  %24 = icmp eq i64 %19, 0
  br i1 %24, label %25, label %.lr.ph

.lr.ph:                                           ; preds = %17
  br label %26

._crit_edge:                                      ; preds = %26
  br label %25

25:                                               ; preds = %._crit_edge, %17
  br label %34

26:                                               ; preds = %.lr.ph, %26
  %27 = phi i64 [ %19, %.lr.ph ], [ %28, %26 ]
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr %8, align 8
  %29 = getelementptr inbounds double, ptr %0, i64 %28
  %30 = load double, ptr %29, align 8
  store double %30, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %2, i64 8, i1 false)
  %31 = load ptr, ptr %10, align 8
  %32 = ptrtoint ptr %31 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %28, i64 noundef %14, double noundef %30, i64 %32)
  %33 = icmp eq i64 %28, 0
  br i1 %33, label %._crit_edge, label %26, !llvm.loop !56

34:                                               ; preds = %25, %16
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
  %17 = icmp slt i64 %1, %16
  br i1 %17, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %5
  br label %18

18:                                               ; preds = %.lr.ph, %29
  %19 = phi i64 [ %1, %.lr.ph ], [ %30, %29 ]
  %20 = phi ptr [ %0, %.lr.ph ], [ %31, %29 ]
  %21 = add nsw i64 %19, 1
  %22 = mul nsw i64 2, %21
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  %24 = sub nsw i64 %22, 1
  %25 = getelementptr inbounds double, ptr %20, i64 %24
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i64 [ %28, %27 ], [ %.pre, %18 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds double, ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  %36 = icmp slt i64 %30, %16
  br i1 %36, label %18, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %29
  %split = phi ptr [ %31, %29 ]
  %split2 = phi i64 [ %30, %29 ]
  br label %37

37:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
  %38 = and i64 %2, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = sub nsw i64 %2, 2
  %42 = sdiv i64 %41, 2
  %43 = icmp eq i64 %.lcssa, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = add nsw i64 %.lcssa, 1
  %46 = mul nsw i64 2, %45
  store i64 %46, ptr %12, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds double, ptr %.lcssa1, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds double, ptr %.lcssa1, i64 %.lcssa
  store double %49, ptr %50, align 8
  store i64 %47, ptr %8, align 8
  br label %51

51:                                               ; preds = %44, %40, %37
  %52 = phi i64 [ %47, %44 ], [ %.lcssa, %40 ], [ %.lcssa, %37 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %13)
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

14:                                               ; preds = %24, %5
  %15 = phi i64 [ %32, %24 ], [ %13, %5 ]
  %16 = phi ptr [ %25, %24 ], [ %0, %5 ]
  %17 = phi i64 [ %26, %24 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %11, align 8
  %27 = getelementptr inbounds double, ptr %25, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds double, ptr %25, i64 %29
  store double %28, ptr %30, align 8
  store i64 %26, ptr %7, align 8
  %31 = sub nsw i64 %26, 1
  %32 = sdiv i64 %31, 2
  store i64 %32, ptr %11, align 8
  br label %14, !llvm.loop !58

33:                                               ; preds = %22
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

10:                                               ; preds = %30, %4
  %11 = phi ptr [ %.pre1, %30 ], [ %2, %4 ]
  %12 = phi ptr [ %31, %30 ], [ %0, %4 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %11)
  br i1 %13, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %10
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw double, ptr %15, i32 1
  store ptr %16, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %16, ptr noundef %.pre)
  br i1 %17, label %14, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %14
  br label %18

18:                                               ; preds = %._crit_edge, %10
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr inbounds double, ptr %19, i32 -1
  store ptr %20, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.pre1, ptr noundef %20)
  br i1 %21, label %.lr.ph4, label %26

.lr.ph4:                                          ; preds = %18
  br label %22

22:                                               ; preds = %.lr.ph4, %22
  %23 = phi ptr [ %20, %.lr.ph4 ], [ %24, %22 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %24, ptr %7, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.pre1, ptr noundef %24)
  br i1 %25, label %22, label %._crit_edge5, !llvm.loop !60

._crit_edge5:                                     ; preds = %22
  %split = phi ptr [ %24, %22 ]
  br label %26

26:                                               ; preds = %._crit_edge5, %18
  %.lcssa = phi ptr [ %split, %._crit_edge5 ], [ %20, %18 ]
  %27 = load ptr, ptr %6, align 8
  %28 = icmp ult ptr %27, %.lcssa
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  %.lcssa2 = phi ptr [ %27, %26 ]
  ret ptr %.lcssa2

30:                                               ; preds = %26
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %.lcssa)
  %31 = getelementptr inbounds nuw double, ptr %27, i32 1
  store ptr %31, ptr %6, align 8
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
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %57

28:                                               ; preds = %3
  %29 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %29, ptr %21, align 8
  %30 = icmp ne ptr %29, %1
  br i1 %30, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %28
  br label %31

31:                                               ; preds = %.lr.ph, %52
  %32 = phi ptr [ %29, %.lr.ph ], [ %55, %52 ]
  %33 = phi ptr [ %0, %.lr.ph ], [ %54, %52 ]
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %32, ptr noundef %33)
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load ptr, ptr %21, align 8
  %37 = load double, ptr %36, align 8
  store double %37, ptr %22, align 8
  %38 = getelementptr inbounds double, ptr %36, i64 1
  store ptr %33, ptr %15, align 8
  store ptr %36, ptr %16, align 8
  store ptr %38, ptr %17, align 8
  %39 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %33)
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

46:                                               ; preds = %31
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
  %54 = phi ptr [ %33, %46 ], [ %45, %35 ]
  %55 = getelementptr inbounds nuw double, ptr %53, i32 1
  store ptr %55, ptr %21, align 8
  %56 = icmp ne ptr %55, %1
  br i1 %56, label %31, label %..loopexit_crit_edge, !llvm.loop !62

..loopexit_crit_edge:                             ; preds = %52
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %28
  br label %57

57:                                               ; preds = %.loopexit, %27
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
  %11 = icmp ne ptr %0, %1
  br i1 %11, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %14 = load ptr, ptr %9, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %15)
  %17 = inttoptr i64 %16 to ptr
  store ptr %17, ptr %8, align 8
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %13, i64 %16)
  %18 = getelementptr inbounds nuw double, ptr %13, i32 1
  store ptr %18, ptr %7, align 8
  %19 = icmp ne ptr %18, %1
  br i1 %19, label %12, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9)
  br i1 %10, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %9, %.lr.ph ], [ %16, %11 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %12, %11 ]
  %14 = load double, ptr %12, align 8
  store double %14, ptr %13, align 8
  store ptr %12, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %6, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %16)
  br i1 %17, label %11, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %11
  %split = phi ptr [ %12, %11 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %19 = load double, ptr %5, align 8
  store double %19, ptr %.lcssa, align 8
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
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %18

18:                                               ; preds = %.lr.ph, %24
  %19 = phi ptr [ %1, %.lr.ph ], [ %27, %24 ]
  %20 = phi i64 [ %2, %.lr.ph ], [ %25, %24 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %19, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %23 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %23)
  br label %33

24:                                               ; preds = %18
  %25 = add nsw i64 %20, -1
  store i64 %25, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %26 = load i8, ptr %11, align 1
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %19, i8 %26)
  store ptr %27, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %27, ptr noundef %19, i64 noundef %25, i8 %28)
  store ptr %27, ptr %7, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %29, %14
  %31 = sdiv exact i64 %30, 8
  %32 = icmp sgt i64 %31, 16
  br i1 %32, label %18, label %..loopexit_crit_edge, !llvm.loop !65

..loopexit_crit_edge:                             ; preds = %24
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %33

33:                                               ; preds = %.loopexit, %22
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
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %17
  %12 = phi ptr [ %1, %.lr.ph ], [ %19, %17 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %18, %17 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %0, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %19, ptr %9, align 8
  %20 = icmp ult ptr %19, %2
  br i1 %20, label %11, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %14 = getelementptr inbounds double, ptr %13, i32 -1
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %14, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %16, %8
  %18 = sdiv exact i64 %17, 8
  %19 = icmp sgt i64 %18, 1
  br i1 %19, label %12, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %32

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %22 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %19, i64 noundef %14, double noundef %21, i8 %22)
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %24, label %.lr.ph

.lr.ph:                                           ; preds = %17
  br label %25

._crit_edge:                                      ; preds = %25
  br label %24

24:                                               ; preds = %._crit_edge, %17
  br label %32

25:                                               ; preds = %.lr.ph, %25
  %26 = phi i64 [ %19, %.lr.ph ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  store i64 %27, ptr %8, align 8
  %28 = getelementptr inbounds double, ptr %0, i64 %27
  %29 = load double, ptr %28, align 8
  store double %29, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %30 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %27, i64 noundef %14, double noundef %29, i8 %30)
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %._crit_edge, label %25, !llvm.loop !68

32:                                               ; preds = %24, %16
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
  %16 = icmp slt i64 %1, %15
  br i1 %16, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %17

17:                                               ; preds = %.lr.ph, %28
  %18 = phi i64 [ %1, %.lr.ph ], [ %29, %28 ]
  %19 = phi ptr [ %0, %.lr.ph ], [ %30, %28 ]
  %20 = add nsw i64 %18, 1
  %21 = mul nsw i64 2, %20
  store i64 %21, ptr %12, align 8
  %22 = getelementptr inbounds double, ptr %19, i64 %21
  %23 = sub nsw i64 %21, 1
  %24 = getelementptr inbounds double, ptr %19, i64 %23
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  %.pre = load i64, ptr %12, align 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = add nsw i64 %.pre, -1
  store i64 %27, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %27, %26 ], [ %.pre, %17 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %29
  %32 = load double, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds double, ptr %30, i64 %33
  store double %32, ptr %34, align 8
  store i64 %29, ptr %8, align 8
  %35 = icmp slt i64 %29, %15
  br i1 %35, label %17, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  %split2 = phi i64 [ %29, %28 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = sub nsw i64 %2, 2
  %41 = sdiv i64 %40, 2
  %42 = icmp eq i64 %.lcssa, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %.lcssa, 1
  %45 = mul nsw i64 2, %44
  store i64 %45, ptr %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds double, ptr %.lcssa1, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %.lcssa1, i64 %.lcssa
  store double %48, ptr %49, align 8
  store i64 %46, ptr %8, align 8
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = phi i64 [ %46, %43 ], [ %.lcssa, %39 ], [ %.lcssa, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %51, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %24, %5
  %15 = phi i64 [ %32, %24 ], [ %13, %5 ]
  %16 = phi ptr [ %25, %24 ], [ %0, %5 ]
  %17 = phi i64 [ %26, %24 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %11, align 8
  %27 = getelementptr inbounds double, ptr %25, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds double, ptr %25, i64 %29
  store double %28, ptr %30, align 8
  store i64 %26, ptr %7, align 8
  %31 = sub nsw i64 %26, 1
  %32 = sdiv i64 %31, 2
  store i64 %32, ptr %11, align 8
  br label %14, !llvm.loop !70

33:                                               ; preds = %22
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

9:                                                ; preds = %29, %4
  %10 = phi ptr [ %.pre1, %29 ], [ %2, %4 ]
  %11 = phi ptr [ %30, %29 ], [ %0, %4 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw double, ptr %14, i32 1
  store ptr %15, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %.pre)
  br i1 %16, label %13, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %13
  br label %17

17:                                               ; preds = %._crit_edge, %9
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  store ptr %19, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %19)
  br i1 %20, label %.lr.ph4, label %25

.lr.ph4:                                          ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph4, %21
  %22 = phi ptr [ %19, %.lr.ph4 ], [ %23, %21 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %21, label %._crit_edge5, !llvm.loop !72

._crit_edge5:                                     ; preds = %21
  %split = phi ptr [ %23, %21 ]
  br label %25

25:                                               ; preds = %._crit_edge5, %17
  %.lcssa = phi ptr [ %split, %._crit_edge5 ], [ %19, %17 ]
  %26 = load ptr, ptr %6, align 8
  %27 = icmp ult ptr %26, %.lcssa
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  %.lcssa2 = phi ptr [ %26, %25 ]
  ret ptr %.lcssa2

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %.lcssa)
  %30 = getelementptr inbounds nuw double, ptr %26, i32 1
  store ptr %30, ptr %6, align 8
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %54

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  %29 = icmp ne ptr %28, %1
  br i1 %29, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %49
  %31 = phi ptr [ %28, %.lr.ph ], [ %52, %49 ]
  %32 = phi ptr [ %0, %.lr.ph ], [ %51, %49 ]
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %31, ptr noundef %32)
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %32, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
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

45:                                               ; preds = %30
  %46 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %47)
  store i8 %48, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %46, i8 %48)
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %51 = phi ptr [ %32, %45 ], [ %44, %34 ]
  %52 = getelementptr inbounds nuw double, ptr %50, i32 1
  store ptr %52, ptr %21, align 8
  %53 = icmp ne ptr %52, %1
  br i1 %53, label %30, label %..loopexit_crit_edge, !llvm.loop !74

..loopexit_crit_edge:                             ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %27
  br label %54

54:                                               ; preds = %.loopexit, %26
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
  %10 = icmp ne ptr %0, %1
  br i1 %10, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %0, %.lr.ph ], [ %15, %11 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %13 = load i8, ptr %9, align 1
  %14 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %13)
  store i8 %14, ptr %8, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %12, i8 %14)
  %15 = getelementptr inbounds nuw double, ptr %12, i32 1
  store ptr %15, ptr %7, align 8
  %16 = icmp ne ptr %15, %1
  br i1 %16, label %11, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %11
  br label %17

17:                                               ; preds = %._crit_edge, %3
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
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %8)
  br i1 %9, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %11 = phi ptr [ %8, %.lr.ph ], [ %15, %10 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %11, %10 ]
  %13 = load double, ptr %11, align 8
  store double %13, ptr %12, align 8
  store ptr %11, ptr %4, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds double, ptr %14, i32 -1
  store ptr %15, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %10, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %10
  %split = phi ptr [ %11, %10 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %18 = load double, ptr %5, align 8
  store double %18, ptr %.lcssa, align 8
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
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %18

18:                                               ; preds = %.lr.ph, %24
  %19 = phi ptr [ %1, %.lr.ph ], [ %27, %24 ]
  %20 = phi i64 [ %2, %.lr.ph ], [ %25, %24 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %19, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %23 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %23)
  br label %33

24:                                               ; preds = %18
  %25 = add nsw i64 %20, -1
  store i64 %25, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %26 = load i8, ptr %11, align 1
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %19, i8 %26)
  store ptr %27, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %27, ptr noundef %19, i64 noundef %25, i8 %28)
  store ptr %27, ptr %7, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %29, %14
  %31 = sdiv exact i64 %30, 8
  %32 = icmp sgt i64 %31, 16
  br i1 %32, label %18, label %..loopexit_crit_edge, !llvm.loop !77

..loopexit_crit_edge:                             ; preds = %24
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %33

33:                                               ; preds = %.loopexit, %22
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
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %17
  %12 = phi ptr [ %1, %.lr.ph ], [ %19, %17 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %18, %17 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %0, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %19, ptr %9, align 8
  %20 = icmp ult ptr %19, %2
  br i1 %20, label %11, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %14 = getelementptr inbounds double, ptr %13, i32 -1
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %14, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %16, %8
  %18 = sdiv exact i64 %17, 8
  %19 = icmp sgt i64 %18, 1
  br i1 %19, label %12, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %32

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %22 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %19, i64 noundef %14, double noundef %21, i8 %22)
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %24, label %.lr.ph

.lr.ph:                                           ; preds = %17
  br label %25

._crit_edge:                                      ; preds = %25
  br label %24

24:                                               ; preds = %._crit_edge, %17
  br label %32

25:                                               ; preds = %.lr.ph, %25
  %26 = phi i64 [ %19, %.lr.ph ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  store i64 %27, ptr %8, align 8
  %28 = getelementptr inbounds double, ptr %0, i64 %27
  %29 = load double, ptr %28, align 8
  store double %29, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %30 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %27, i64 noundef %14, double noundef %29, i8 %30)
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %._crit_edge, label %25, !llvm.loop !80

32:                                               ; preds = %24, %16
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
  %16 = icmp slt i64 %1, %15
  br i1 %16, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %17

17:                                               ; preds = %.lr.ph, %28
  %18 = phi i64 [ %1, %.lr.ph ], [ %29, %28 ]
  %19 = phi ptr [ %0, %.lr.ph ], [ %30, %28 ]
  %20 = add nsw i64 %18, 1
  %21 = mul nsw i64 2, %20
  store i64 %21, ptr %12, align 8
  %22 = getelementptr inbounds double, ptr %19, i64 %21
  %23 = sub nsw i64 %21, 1
  %24 = getelementptr inbounds double, ptr %19, i64 %23
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  %.pre = load i64, ptr %12, align 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = add nsw i64 %.pre, -1
  store i64 %27, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %27, %26 ], [ %.pre, %17 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %29
  %32 = load double, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds double, ptr %30, i64 %33
  store double %32, ptr %34, align 8
  store i64 %29, ptr %8, align 8
  %35 = icmp slt i64 %29, %15
  br i1 %35, label %17, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  %split2 = phi i64 [ %29, %28 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = sub nsw i64 %2, 2
  %41 = sdiv i64 %40, 2
  %42 = icmp eq i64 %.lcssa, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %.lcssa, 1
  %45 = mul nsw i64 2, %44
  store i64 %45, ptr %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds double, ptr %.lcssa1, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %.lcssa1, i64 %.lcssa
  store double %48, ptr %49, align 8
  store i64 %46, ptr %8, align 8
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = phi i64 [ %46, %43 ], [ %.lcssa, %39 ], [ %.lcssa, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %51, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %24, %5
  %15 = phi i64 [ %32, %24 ], [ %13, %5 ]
  %16 = phi ptr [ %25, %24 ], [ %0, %5 ]
  %17 = phi i64 [ %26, %24 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %11, align 8
  %27 = getelementptr inbounds double, ptr %25, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds double, ptr %25, i64 %29
  store double %28, ptr %30, align 8
  store i64 %26, ptr %7, align 8
  %31 = sub nsw i64 %26, 1
  %32 = sdiv i64 %31, 2
  store i64 %32, ptr %11, align 8
  br label %14, !llvm.loop !82

33:                                               ; preds = %22
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

9:                                                ; preds = %29, %4
  %10 = phi ptr [ %.pre1, %29 ], [ %2, %4 ]
  %11 = phi ptr [ %30, %29 ], [ %0, %4 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw double, ptr %14, i32 1
  store ptr %15, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %.pre)
  br i1 %16, label %13, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %13
  br label %17

17:                                               ; preds = %._crit_edge, %9
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  store ptr %19, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %19)
  br i1 %20, label %.lr.ph4, label %25

.lr.ph4:                                          ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph4, %21
  %22 = phi ptr [ %19, %.lr.ph4 ], [ %23, %21 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %21, label %._crit_edge5, !llvm.loop !84

._crit_edge5:                                     ; preds = %21
  %split = phi ptr [ %23, %21 ]
  br label %25

25:                                               ; preds = %._crit_edge5, %17
  %.lcssa = phi ptr [ %split, %._crit_edge5 ], [ %19, %17 ]
  %26 = load ptr, ptr %6, align 8
  %27 = icmp ult ptr %26, %.lcssa
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  %.lcssa2 = phi ptr [ %26, %25 ]
  ret ptr %.lcssa2

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %.lcssa)
  %30 = getelementptr inbounds nuw double, ptr %26, i32 1
  store ptr %30, ptr %6, align 8
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %54

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  %29 = icmp ne ptr %28, %1
  br i1 %29, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %49
  %31 = phi ptr [ %28, %.lr.ph ], [ %52, %49 ]
  %32 = phi ptr [ %0, %.lr.ph ], [ %51, %49 ]
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %31, ptr noundef %32)
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %32, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
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

45:                                               ; preds = %30
  %46 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %47)
  store i8 %48, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %46, i8 %48)
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %51 = phi ptr [ %32, %45 ], [ %44, %34 ]
  %52 = getelementptr inbounds nuw double, ptr %50, i32 1
  store ptr %52, ptr %21, align 8
  %53 = icmp ne ptr %52, %1
  br i1 %53, label %30, label %..loopexit_crit_edge, !llvm.loop !86

..loopexit_crit_edge:                             ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %27
  br label %54

54:                                               ; preds = %.loopexit, %26
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
  %10 = icmp ne ptr %0, %1
  br i1 %10, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %0, %.lr.ph ], [ %15, %11 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %13 = load i8, ptr %9, align 1
  %14 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %13)
  store i8 %14, ptr %8, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %12, i8 %14)
  %15 = getelementptr inbounds nuw double, ptr %12, i32 1
  store ptr %15, ptr %7, align 8
  %16 = icmp ne ptr %15, %1
  br i1 %16, label %11, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %11
  br label %17

17:                                               ; preds = %._crit_edge, %3
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
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %8)
  br i1 %9, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %11 = phi ptr [ %8, %.lr.ph ], [ %15, %10 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %11, %10 ]
  %13 = load double, ptr %11, align 8
  store double %13, ptr %12, align 8
  store ptr %11, ptr %4, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds double, ptr %14, i32 -1
  store ptr %15, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %10, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %10
  %split = phi ptr [ %11, %10 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %18 = load double, ptr %5, align 8
  store double %18, ptr %.lcssa, align 8
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
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %18

18:                                               ; preds = %.lr.ph, %24
  %19 = phi ptr [ %1, %.lr.ph ], [ %27, %24 ]
  %20 = phi i64 [ %2, %.lr.ph ], [ %25, %24 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %19, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %23 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %23)
  br label %33

24:                                               ; preds = %18
  %25 = add nsw i64 %20, -1
  store i64 %25, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %26 = load i8, ptr %11, align 1
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %19, i8 %26)
  store ptr %27, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %27, ptr noundef %19, i64 noundef %25, i8 %28)
  store ptr %27, ptr %7, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %29, %14
  %31 = sdiv exact i64 %30, 8
  %32 = icmp sgt i64 %31, 16
  br i1 %32, label %18, label %..loopexit_crit_edge, !llvm.loop !89

..loopexit_crit_edge:                             ; preds = %24
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %33

33:                                               ; preds = %.loopexit, %22
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
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %17
  %12 = phi ptr [ %1, %.lr.ph ], [ %19, %17 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %18, %17 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %0, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %19, ptr %9, align 8
  %20 = icmp ult ptr %19, %2
  br i1 %20, label %11, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %14 = getelementptr inbounds double, ptr %13, i32 -1
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %14, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %16, %8
  %18 = sdiv exact i64 %17, 8
  %19 = icmp sgt i64 %18, 1
  br i1 %19, label %12, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %32

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %22 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %19, i64 noundef %14, double noundef %21, i8 %22)
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %24, label %.lr.ph

.lr.ph:                                           ; preds = %17
  br label %25

._crit_edge:                                      ; preds = %25
  br label %24

24:                                               ; preds = %._crit_edge, %17
  br label %32

25:                                               ; preds = %.lr.ph, %25
  %26 = phi i64 [ %19, %.lr.ph ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  store i64 %27, ptr %8, align 8
  %28 = getelementptr inbounds double, ptr %0, i64 %27
  %29 = load double, ptr %28, align 8
  store double %29, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %30 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %27, i64 noundef %14, double noundef %29, i8 %30)
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %._crit_edge, label %25, !llvm.loop !92

32:                                               ; preds = %24, %16
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
  %16 = icmp slt i64 %1, %15
  br i1 %16, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %17

17:                                               ; preds = %.lr.ph, %28
  %18 = phi i64 [ %1, %.lr.ph ], [ %29, %28 ]
  %19 = phi ptr [ %0, %.lr.ph ], [ %30, %28 ]
  %20 = add nsw i64 %18, 1
  %21 = mul nsw i64 2, %20
  store i64 %21, ptr %12, align 8
  %22 = getelementptr inbounds double, ptr %19, i64 %21
  %23 = sub nsw i64 %21, 1
  %24 = getelementptr inbounds double, ptr %19, i64 %23
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  %.pre = load i64, ptr %12, align 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = add nsw i64 %.pre, -1
  store i64 %27, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %27, %26 ], [ %.pre, %17 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %29
  %32 = load double, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds double, ptr %30, i64 %33
  store double %32, ptr %34, align 8
  store i64 %29, ptr %8, align 8
  %35 = icmp slt i64 %29, %15
  br i1 %35, label %17, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  %split2 = phi i64 [ %29, %28 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = sub nsw i64 %2, 2
  %41 = sdiv i64 %40, 2
  %42 = icmp eq i64 %.lcssa, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %.lcssa, 1
  %45 = mul nsw i64 2, %44
  store i64 %45, ptr %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds double, ptr %.lcssa1, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %.lcssa1, i64 %.lcssa
  store double %48, ptr %49, align 8
  store i64 %46, ptr %8, align 8
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = phi i64 [ %46, %43 ], [ %.lcssa, %39 ], [ %.lcssa, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %51, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %24, %5
  %15 = phi i64 [ %32, %24 ], [ %13, %5 ]
  %16 = phi ptr [ %25, %24 ], [ %0, %5 ]
  %17 = phi i64 [ %26, %24 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %11, align 8
  %27 = getelementptr inbounds double, ptr %25, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds double, ptr %25, i64 %29
  store double %28, ptr %30, align 8
  store i64 %26, ptr %7, align 8
  %31 = sub nsw i64 %26, 1
  %32 = sdiv i64 %31, 2
  store i64 %32, ptr %11, align 8
  br label %14, !llvm.loop !94

33:                                               ; preds = %22
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

9:                                                ; preds = %29, %4
  %10 = phi ptr [ %.pre1, %29 ], [ %2, %4 ]
  %11 = phi ptr [ %30, %29 ], [ %0, %4 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw double, ptr %14, i32 1
  store ptr %15, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %.pre)
  br i1 %16, label %13, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %13
  br label %17

17:                                               ; preds = %._crit_edge, %9
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  store ptr %19, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %19)
  br i1 %20, label %.lr.ph4, label %25

.lr.ph4:                                          ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph4, %21
  %22 = phi ptr [ %19, %.lr.ph4 ], [ %23, %21 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %21, label %._crit_edge5, !llvm.loop !96

._crit_edge5:                                     ; preds = %21
  %split = phi ptr [ %23, %21 ]
  br label %25

25:                                               ; preds = %._crit_edge5, %17
  %.lcssa = phi ptr [ %split, %._crit_edge5 ], [ %19, %17 ]
  %26 = load ptr, ptr %6, align 8
  %27 = icmp ult ptr %26, %.lcssa
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  %.lcssa2 = phi ptr [ %26, %25 ]
  ret ptr %.lcssa2

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %.lcssa)
  %30 = getelementptr inbounds nuw double, ptr %26, i32 1
  store ptr %30, ptr %6, align 8
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %54

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  %29 = icmp ne ptr %28, %1
  br i1 %29, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %49
  %31 = phi ptr [ %28, %.lr.ph ], [ %52, %49 ]
  %32 = phi ptr [ %0, %.lr.ph ], [ %51, %49 ]
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %31, ptr noundef %32)
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %32, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
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

45:                                               ; preds = %30
  %46 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %47)
  store i8 %48, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %46, i8 %48)
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %51 = phi ptr [ %32, %45 ], [ %44, %34 ]
  %52 = getelementptr inbounds nuw double, ptr %50, i32 1
  store ptr %52, ptr %21, align 8
  %53 = icmp ne ptr %52, %1
  br i1 %53, label %30, label %..loopexit_crit_edge, !llvm.loop !98

..loopexit_crit_edge:                             ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %27
  br label %54

54:                                               ; preds = %.loopexit, %26
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
  %10 = icmp ne ptr %0, %1
  br i1 %10, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %0, %.lr.ph ], [ %15, %11 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %13 = load i8, ptr %9, align 1
  %14 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %13)
  store i8 %14, ptr %8, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %12, i8 %14)
  %15 = getelementptr inbounds nuw double, ptr %12, i32 1
  store ptr %15, ptr %7, align 8
  %16 = icmp ne ptr %15, %1
  br i1 %16, label %11, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %11
  br label %17

17:                                               ; preds = %._crit_edge, %3
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
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %8)
  br i1 %9, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %11 = phi ptr [ %8, %.lr.ph ], [ %15, %10 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %11, %10 ]
  %13 = load double, ptr %11, align 8
  store double %13, ptr %12, align 8
  store ptr %11, ptr %4, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds double, ptr %14, i32 -1
  store ptr %15, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %10, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %10
  %split = phi ptr [ %11, %10 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %18 = load double, ptr %5, align 8
  store double %18, ptr %.lcssa, align 8
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
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %18

18:                                               ; preds = %.lr.ph, %23
  %19 = phi ptr [ %1, %.lr.ph ], [ %25, %23 ]
  %20 = phi i64 [ %2, %.lr.ph ], [ %24, %23 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %19, %18 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 undef)
  br label %30

23:                                               ; preds = %18
  %24 = add nsw i64 %20, -1
  store i64 %24, ptr %8, align 8
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %19, i8 undef)
  store ptr %25, ptr %10, align 8
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %25, ptr noundef %19, i64 noundef %24, i8 undef)
  store ptr %25, ptr %7, align 8
  %26 = ptrtoint ptr %25 to i64
  %27 = sub i64 %26, %14
  %28 = sdiv exact i64 %27, 8
  %29 = icmp sgt i64 %28, 16
  br i1 %29, label %18, label %..loopexit_crit_edge, !llvm.loop !101

..loopexit_crit_edge:                             ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %30

30:                                               ; preds = %.loopexit, %22
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
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %17
  %12 = phi ptr [ %1, %.lr.ph ], [ %19, %17 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %18, %17 ]
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %0, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %19, ptr %9, align 8
  %20 = icmp ult ptr %19, %2
  br i1 %20, label %11, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %14 = getelementptr inbounds double, ptr %13, i32 -1
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %14, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %16, %8
  %18 = sdiv exact i64 %17, 8
  %19 = icmp sgt i64 %18, 1
  br i1 %19, label %12, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %30

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %9, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %19, i64 noundef %14, double noundef %21, i8 undef)
  %22 = icmp eq i64 %19, 0
  br i1 %22, label %23, label %.lr.ph

.lr.ph:                                           ; preds = %17
  br label %24

._crit_edge:                                      ; preds = %24
  br label %23

23:                                               ; preds = %._crit_edge, %17
  br label %30

24:                                               ; preds = %.lr.ph, %24
  %25 = phi i64 [ %19, %.lr.ph ], [ %26, %24 ]
  %26 = add nsw i64 %25, -1
  store i64 %26, ptr %8, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %26
  %28 = load double, ptr %27, align 8
  store double %28, ptr %9, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %26, i64 noundef %14, double noundef %28, i8 undef)
  %29 = icmp eq i64 %26, 0
  br i1 %29, label %._crit_edge, label %24, !llvm.loop !104

30:                                               ; preds = %23, %16
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
  %17 = icmp slt i64 %1, %16
  br i1 %17, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %5
  br label %18

18:                                               ; preds = %.lr.ph, %29
  %19 = phi i64 [ %1, %.lr.ph ], [ %30, %29 ]
  %20 = phi ptr [ %0, %.lr.ph ], [ %31, %29 ]
  %21 = add nsw i64 %19, 1
  %22 = mul nsw i64 2, %21
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  %24 = sub nsw i64 %22, 1
  %25 = getelementptr inbounds double, ptr %20, i64 %24
  %26 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i64 [ %28, %27 ], [ %.pre, %18 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds double, ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  %36 = icmp slt i64 %30, %16
  br i1 %36, label %18, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %29
  %split = phi ptr [ %31, %29 ]
  %split2 = phi i64 [ %30, %29 ]
  br label %37

37:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
  %38 = and i64 %2, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = sub nsw i64 %2, 2
  %42 = sdiv i64 %41, 2
  %43 = icmp eq i64 %.lcssa, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = add nsw i64 %.lcssa, 1
  %46 = mul nsw i64 2, %45
  store i64 %46, ptr %12, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds double, ptr %.lcssa1, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds double, ptr %.lcssa1, i64 %.lcssa
  store double %49, ptr %50, align 8
  store i64 %47, ptr %8, align 8
  br label %51

51:                                               ; preds = %44, %40, %37
  %52 = phi i64 [ %47, %44 ], [ %.lcssa, %40 ], [ %.lcssa, %37 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %24, %5
  %15 = phi i64 [ %32, %24 ], [ %13, %5 ]
  %16 = phi ptr [ %25, %24 ], [ %0, %5 ]
  %17 = phi i64 [ %26, %24 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %11, align 8
  %27 = getelementptr inbounds double, ptr %25, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds double, ptr %25, i64 %29
  store double %28, ptr %30, align 8
  store i64 %26, ptr %7, align 8
  %31 = sub nsw i64 %26, 1
  %32 = sdiv i64 %31, 2
  store i64 %32, ptr %11, align 8
  br label %14, !llvm.loop !106

33:                                               ; preds = %22
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

9:                                                ; preds = %29, %4
  %10 = phi ptr [ %.pre1, %29 ], [ %2, %4 ]
  %11 = phi ptr [ %30, %29 ], [ %0, %4 ]
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw double, ptr %14, i32 1
  store ptr %15, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %.pre)
  br i1 %16, label %13, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %13
  br label %17

17:                                               ; preds = %._crit_edge, %9
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  store ptr %19, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %19)
  br i1 %20, label %.lr.ph4, label %25

.lr.ph4:                                          ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph4, %21
  %22 = phi ptr [ %19, %.lr.ph4 ], [ %23, %21 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %7, align 8
  %24 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %21, label %._crit_edge5, !llvm.loop !108

._crit_edge5:                                     ; preds = %21
  %split = phi ptr [ %23, %21 ]
  br label %25

25:                                               ; preds = %._crit_edge5, %17
  %.lcssa = phi ptr [ %split, %._crit_edge5 ], [ %19, %17 ]
  %26 = load ptr, ptr %6, align 8
  %27 = icmp ult ptr %26, %.lcssa
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  %.lcssa2 = phi ptr [ %26, %25 ]
  ret ptr %.lcssa2

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %.lcssa)
  %30 = getelementptr inbounds nuw double, ptr %26, i32 1
  store ptr %30, ptr %6, align 8
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %55

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  %29 = icmp ne ptr %28, %1
  br i1 %29, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %50
  %31 = phi ptr [ %28, %.lr.ph ], [ %53, %50 ]
  %32 = phi ptr [ %0, %.lr.ph ], [ %52, %50 ]
  %33 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %31, ptr noundef %32)
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %32, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
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

45:                                               ; preds = %30
  %46 = load ptr, ptr %21, align 8
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %47)
  %49 = load i8, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %46, i8 %49)
  br label %50

50:                                               ; preds = %45, %34
  %51 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %52 = phi ptr [ %32, %45 ], [ %44, %34 ]
  %53 = getelementptr inbounds nuw double, ptr %51, i32 1
  store ptr %53, ptr %21, align 8
  %54 = icmp ne ptr %53, %1
  br i1 %54, label %30, label %..loopexit_crit_edge, !llvm.loop !110

..loopexit_crit_edge:                             ; preds = %50
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %27
  br label %55

55:                                               ; preds = %.loopexit, %26
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
  %10 = icmp ne ptr %0, %1
  br i1 %10, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %0, %.lr.ph ], [ %14, %11 ]
  %13 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %12, i8 undef)
  %14 = getelementptr inbounds nuw double, ptr %12, i32 1
  store ptr %14, ptr %7, align 8
  %15 = icmp ne ptr %14, %1
  br i1 %15, label %11, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %11
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %8)
  br i1 %9, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %11 = phi ptr [ %8, %.lr.ph ], [ %15, %10 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %11, %10 ]
  %13 = load double, ptr %11, align 8
  store double %13, ptr %12, align 8
  store ptr %11, ptr %4, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds double, ptr %14, i32 -1
  store ptr %15, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %10, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %10
  %split = phi ptr [ %11, %10 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %18 = load double, ptr %5, align 8
  store double %18, ptr %.lcssa, align 8
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
