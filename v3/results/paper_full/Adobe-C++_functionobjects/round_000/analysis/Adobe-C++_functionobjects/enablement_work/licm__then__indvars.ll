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
  %23 = sext i32 %.promoted to i64
  br label %24

24:                                               ; preds = %41, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %41 ], [ %23, %5 ]
  %25 = phi i32 [ %40, %41 ], [ %.promoted3, %5 ]
  %26 = phi i32 [ %36, %41 ], [ %.promoted1, %5 ]
  %27 = load i32, ptr @current_test, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %indvars.iv, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load ptr, ptr @results, align 8
  %32 = getelementptr inbounds %struct.one_result, ptr %31, i64 %indvars.iv
  %33 = getelementptr inbounds nuw %struct.one_result, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = call i64 @strlen(ptr noundef %34) #15
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %36, %25
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i32 [ %36, %38 ], [ %25, %30 ]
  br label %41

41:                                               ; preds = %39
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %24, !llvm.loop !7

42:                                               ; preds = %24
  %.lcssa4 = phi i32 [ %25, %24 ]
  %.lcssa2 = phi i32 [ %26, %24 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %24 ]
  %43 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %43, ptr %11, align 4
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
  %52 = sext i32 %.promoted5 to i64
  br label %53

53:                                               ; preds = %89, %42
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %89 ], [ %52, %42 ]
  %54 = load i32, ptr @current_test, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %indvars.iv16, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %53
  %58 = load ptr, ptr @results, align 8
  %59 = getelementptr inbounds %struct.one_result, ptr %58, i64 %indvars.iv16
  %60 = getelementptr inbounds nuw %struct.one_result, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %62 = call i64 @strlen(ptr noundef %61) #15
  %63 = sub i64 %50, %62
  %64 = trunc i64 %63 to i32
  %65 = load ptr, ptr @results, align 8
  %66 = getelementptr inbounds %struct.one_result, ptr %65, i64 %indvars.iv16
  %67 = getelementptr inbounds nuw %struct.one_result, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr @results, align 8
  %70 = getelementptr inbounds %struct.one_result, ptr %69, i64 %indvars.iv16
  %71 = getelementptr inbounds nuw %struct.one_result, ptr %70, i32 0, i32 0
  %72 = load double, ptr %71, align 8
  %73 = load ptr, ptr @results, align 8
  %74 = getelementptr inbounds %struct.one_result, ptr %73, i64 %indvars.iv16
  %75 = getelementptr inbounds nuw %struct.one_result, ptr %74, i32 0, i32 0
  %76 = load double, ptr %75, align 8
  %77 = fdiv double %51, %76
  %78 = load ptr, ptr @results, align 8
  %79 = getelementptr inbounds %struct.one_result, ptr %78, i64 %indvars.iv16
  %80 = getelementptr inbounds nuw %struct.one_result, ptr %79, i32 0, i32 0
  %81 = load double, ptr %80, align 8
  %82 = load ptr, ptr @results, align 8
  %83 = getelementptr inbounds %struct.one_result, ptr %82, i64 0
  %84 = getelementptr inbounds nuw %struct.one_result, ptr %83, i32 0, i32 0
  %85 = load double, ptr %84, align 8
  %86 = fdiv double %81, %85
  %87 = trunc nsw i64 %indvars.iv16 to i32
  %88 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %87, i32 noundef %64, ptr noundef @.str.5, ptr noundef %68, double noundef %72, double noundef %77, double noundef %86)
  br label %89

89:                                               ; preds = %57
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  br label %53, !llvm.loop !9

90:                                               ; preds = %53
  %.lcssa6.wide = phi i64 [ %indvars.iv16, %53 ]
  %91 = trunc nsw i64 %.lcssa6.wide to i32
  store i32 %91, ptr %11, align 4
  store i32 0, ptr %11, align 4
  %92 = load i32, ptr @current_test, align 4
  %93 = load ptr, ptr @results, align 8
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted9 = load double, ptr %13, align 8
  %94 = sext i32 %.promoted7 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted7, i32 %92)
  %wide.trip.count = sext i32 %smax to i64
  br label %95

95:                                               ; preds = %101, %90
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %101 ], [ %94, %90 ]
  %96 = phi double [ %100, %101 ], [ %.promoted9, %90 ]
  %exitcond = icmp ne i64 %indvars.iv19, %wide.trip.count
  br i1 %exitcond, label %97, label %102

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.one_result, ptr %93, i64 %indvars.iv19
  %99 = load double, ptr %98, align 8
  %100 = fadd double %96, %99
  br label %101

101:                                              ; preds = %97
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1
  br label %95, !llvm.loop !10

102:                                              ; preds = %95
  %.lcssa10 = phi double [ %96, %95 ]
  %.lcssa8.wide = phi i64 [ %indvars.iv19, %95 ]
  %103 = trunc nsw i64 %.lcssa8.wide to i32
  store i32 %103, ptr %11, align 4
  store double %.lcssa10, ptr %13, align 8
  %104 = load ptr, ptr %6, align 8
  %105 = load double, ptr %13, align 8
  %106 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %104, double noundef %105)
  %107 = load i32, ptr @current_test, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %142

109:                                              ; preds = %102
  %110 = load i32, ptr %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %109
  store i32 1, ptr %11, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted13 = load double, ptr %14, align 8
  %113 = sext i32 %.promoted11 to i64
  br label %114

114:                                              ; preds = %131, %112
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %131 ], [ %113, %112 ]
  %115 = phi double [ %130, %131 ], [ %.promoted13, %112 ]
  %116 = load i32, ptr @current_test, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %indvars.iv22, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load ptr, ptr @results, align 8
  %121 = getelementptr inbounds %struct.one_result, ptr %120, i64 %indvars.iv22
  %122 = getelementptr inbounds nuw %struct.one_result, ptr %121, i32 0, i32 0
  %123 = load double, ptr %122, align 8
  %124 = load ptr, ptr @results, align 8
  %125 = getelementptr inbounds %struct.one_result, ptr %124, i64 0
  %126 = getelementptr inbounds nuw %struct.one_result, ptr %125, i32 0, i32 0
  %127 = load double, ptr %126, align 8
  %128 = fdiv double %123, %127
  %129 = call double @log(double noundef %128) #15
  %130 = fadd double %115, %129
  br label %131

131:                                              ; preds = %119
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  br label %114, !llvm.loop !11

132:                                              ; preds = %114
  %.lcssa14 = phi double [ %115, %114 ]
  %.lcssa12.wide = phi i64 [ %indvars.iv22, %114 ]
  %133 = trunc nsw i64 %.lcssa12.wide to i32
  store i32 %133, ptr %11, align 4
  store double %.lcssa14, ptr %14, align 8
  %134 = load ptr, ptr %6, align 8
  %135 = load double, ptr %14, align 8
  %136 = load i32, ptr @current_test, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sitofp i32 %137 to double
  %139 = fdiv double %135, %138
  %140 = call double @exp(double noundef %139) #15
  %141 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %134, double noundef %140)
  br label %142

142:                                              ; preds = %132, %109, %102
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
  %9 = sext i32 %.promoted to i64
  br label %10

10:                                               ; preds = %27, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ %9, %2 ]
  %11 = phi i32 [ %26, %27 ], [ %.promoted3, %2 ]
  %12 = phi i32 [ %22, %27 ], [ %.promoted1, %2 ]
  %13 = load i32, ptr @current_test, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %indvars.iv, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load ptr, ptr @results, align 8
  %18 = getelementptr inbounds %struct.one_result, ptr %17, i64 %indvars.iv
  %19 = getelementptr inbounds nuw %struct.one_result, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 @strlen(ptr noundef %20) #15
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %22, %11
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %22, %24 ], [ %11, %16 ]
  br label %27

27:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %10, !llvm.loop !12

28:                                               ; preds = %10
  %.lcssa4 = phi i32 [ %11, %10 ]
  %.lcssa2 = phi i32 [ %12, %10 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %10 ]
  %29 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %29, ptr %5, align 4
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
  %40 = sext i32 %.promoted5 to i64
  br label %41

41:                                               ; preds = %63, %28
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %63 ], [ %40, %28 ]
  %42 = load i32, ptr @current_test, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %indvars.iv12, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load ptr, ptr @results, align 8
  %47 = getelementptr inbounds %struct.one_result, ptr %46, i64 %indvars.iv12
  %48 = getelementptr inbounds nuw %struct.one_result, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = call i64 @strlen(ptr noundef %49) #15
  %51 = sub i64 %39, %50
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr @results, align 8
  %54 = getelementptr inbounds %struct.one_result, ptr %53, i64 %indvars.iv12
  %55 = getelementptr inbounds nuw %struct.one_result, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr @results, align 8
  %58 = getelementptr inbounds %struct.one_result, ptr %57, i64 %indvars.iv12
  %59 = getelementptr inbounds nuw %struct.one_result, ptr %58, i32 0, i32 0
  %60 = load double, ptr %59, align 8
  %61 = trunc nsw i64 %indvars.iv12 to i32
  %62 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %37, ptr noundef @.str.10, i32 noundef %61, i32 noundef %52, ptr noundef @.str.5, ptr noundef %56, double noundef %60)
  br label %63

63:                                               ; preds = %45
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  br label %41, !llvm.loop !13

64:                                               ; preds = %41
  %.lcssa6.wide = phi i64 [ %indvars.iv12, %41 ]
  %65 = trunc nsw i64 %.lcssa6.wide to i32
  store i32 %65, ptr %5, align 4
  store i32 0, ptr %5, align 4
  %66 = load i32, ptr @current_test, align 4
  %67 = load ptr, ptr @results, align 8
  %.promoted7 = load i32, ptr %5, align 4
  %.promoted9 = load double, ptr %6, align 8
  %68 = sext i32 %.promoted7 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted7, i32 %66)
  %wide.trip.count = sext i32 %smax to i64
  br label %69

69:                                               ; preds = %75, %64
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %75 ], [ %68, %64 ]
  %70 = phi double [ %74, %75 ], [ %.promoted9, %64 ]
  %exitcond = icmp ne i64 %indvars.iv15, %wide.trip.count
  br i1 %exitcond, label %71, label %76

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.one_result, ptr %67, i64 %indvars.iv15
  %73 = load double, ptr %72, align 8
  %74 = fadd double %70, %73
  br label %75

75:                                               ; preds = %71
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1
  br label %69, !llvm.loop !14

76:                                               ; preds = %69
  %.lcssa10 = phi double [ %70, %69 ]
  %.lcssa8.wide = phi i64 [ %indvars.iv15, %69 ]
  %77 = trunc nsw i64 %.lcssa8.wide to i32
  store i32 %77, ptr %5, align 4
  store double %.lcssa10, ptr %6, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = load ptr, ptr %4, align 8
  %80 = load double, ptr %6, align 8
  %81 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %78, ptr noundef @.str.6, ptr noundef %79, double noundef %80)
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
  br i1 %17, label %18, label %60

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

27:                                               ; preds = %48, %18
  %28 = phi double [ %49, %48 ], [ %.promoted7, %18 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %48 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %.lcssa, %48 ], [ %.promoted3, %18 ]
  br label %29

29:                                               ; preds = %34, %27
  %30 = phi ptr [ %31, %34 ], [ %.lcssa4, %27 ]
  %31 = getelementptr inbounds double, ptr %30, i32 -1
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %23(double noundef %24, double noundef %32)
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %29, !llvm.loop !17

35:                                               ; preds = %29
  %.lcssa = phi ptr [ %31, %29 ]
  %36 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  %.lcssa8 = phi double [ %28, %35 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %35 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %35 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  store double %.lcssa8, ptr %10, align 8
  br label %51

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %43, %38
  %40 = phi ptr [ %44, %43 ], [ %.lcssa26, %38 ]
  %41 = load double, ptr %40, align 8
  %42 = call noundef zeroext i1 %25(double noundef %41, double noundef %26)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw double, ptr %40, i32 1
  br label %39, !llvm.loop !18

45:                                               ; preds = %39
  %.lcssa2 = phi ptr [ %40, %39 ]
  %46 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  %.lcssa9 = phi double [ %28, %45 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %45 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %45 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa2.lcssa, ptr %8, align 8
  store double %.lcssa9, ptr %10, align 8
  br label %51

48:                                               ; preds = %45
  %49 = load double, ptr %.lcssa, align 8
  %50 = load double, ptr %.lcssa2, align 8
  store double %50, ptr %.lcssa, align 8
  store double %49, ptr %.lcssa2, align 8
  br label %27, !llvm.loop !19

51:                                               ; preds = %47, %37
  %52 = load ptr, ptr %4, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds double, ptr %53, i64 1
  %55 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %52, ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds double, ptr %56, i64 1
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %57, ptr noundef %58, ptr noundef %59)
  br label %60

60:                                               ; preds = %51, %3
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
  br i1 %17, label %18, label %60

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

27:                                               ; preds = %48, %18
  %28 = phi double [ %49, %48 ], [ %.promoted7, %18 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %48 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %.lcssa, %48 ], [ %.promoted3, %18 ]
  br label %29

29:                                               ; preds = %34, %27
  %30 = phi ptr [ %31, %34 ], [ %.lcssa4, %27 ]
  %31 = getelementptr inbounds double, ptr %30, i32 -1
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %23(double noundef %24, double noundef %32)
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %29, !llvm.loop !20

35:                                               ; preds = %29
  %.lcssa = phi ptr [ %31, %29 ]
  %36 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  %.lcssa8 = phi double [ %28, %35 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %35 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %35 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  store double %.lcssa8, ptr %10, align 8
  br label %51

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %43, %38
  %40 = phi ptr [ %44, %43 ], [ %.lcssa26, %38 ]
  %41 = load double, ptr %40, align 8
  %42 = call noundef zeroext i1 %25(double noundef %41, double noundef %26)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw double, ptr %40, i32 1
  br label %39, !llvm.loop !21

45:                                               ; preds = %39
  %.lcssa2 = phi ptr [ %40, %39 ]
  %46 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  %.lcssa9 = phi double [ %28, %45 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %45 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %45 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa2.lcssa, ptr %8, align 8
  store double %.lcssa9, ptr %10, align 8
  br label %51

48:                                               ; preds = %45
  %49 = load double, ptr %.lcssa, align 8
  %50 = load double, ptr %.lcssa2, align 8
  store double %50, ptr %.lcssa, align 8
  store double %49, ptr %.lcssa2, align 8
  br label %27, !llvm.loop !22

51:                                               ; preds = %47, %37
  %52 = load ptr, ptr %4, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds double, ptr %53, i64 1
  %55 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %52, ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds double, ptr %56, i64 1
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %57, ptr noundef %58, ptr noundef %59)
  br label %60

60:                                               ; preds = %51, %3
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
  %49 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %47)
  %wide.trip.count = sext i32 %smax to i64
  br label %50

50:                                               ; preds = %55, %36
  %indvars.iv = phi i64 [ %indvars.iv.next, %55 ], [ %49, %36 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %51, label %56

51:                                               ; preds = %50
  %52 = call i32 @rand()
  %53 = sitofp i32 %52 to double
  %54 = getelementptr inbounds double, ptr %48, i64 %indvars.iv
  store double %53, ptr %54, align 8
  br label %55

55:                                               ; preds = %51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %50, !llvm.loop !23

56:                                               ; preds = %50
  %.lcssa.wide = phi i64 [ %indvars.iv, %50 ]
  %57 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %57, ptr %10, align 4
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
  %67 = load ptr, ptr %9, align 8
  %68 = load i32, ptr %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %67, i64 %69
  %71 = load ptr, ptr %11, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = load i32, ptr %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load ptr, ptr %11, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = load i32, ptr %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %76, i64 %78
  %.promoted1 = load i32, ptr %6, align 4
  %smax28 = call i32 @llvm.smax.i32(i32 %.promoted1, i32 %65)
  br label %80

80:                                               ; preds = %84, %56
  %81 = phi i32 [ %85, %84 ], [ %.promoted1, %56 ]
  %exitcond29 = icmp ne i32 %81, %smax28
  br i1 %exitcond29, label %82, label %86

82:                                               ; preds = %80
  %83 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %66, ptr noundef %70, ptr noundef %71)
  call void @qsort(ptr noundef %72, i64 noundef %74, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %75, ptr noundef %79)
  br label %84

84:                                               ; preds = %82
  %85 = add i32 %81, 1
  br label %80, !llvm.loop !24

86:                                               ; preds = %80
  store i32 %smax28, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %87 = load i32, ptr %7, align 4
  %88 = load ptr, ptr %9, align 8
  %89 = load ptr, ptr %9, align 8
  %90 = load i32, ptr %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %89, i64 %91
  %93 = load ptr, ptr %11, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = load ptr, ptr %11, align 8
  %96 = load i32, ptr %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, ptr %95, i64 %97
  %99 = load ptr, ptr %11, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = load i32, ptr %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, ptr %100, i64 %102
  %.promoted3 = load i32, ptr %6, align 4
  %smax30 = call i32 @llvm.smax.i32(i32 %.promoted3, i32 %87)
  br label %104

104:                                              ; preds = %108, %86
  %105 = phi i32 [ %109, %108 ], [ %.promoted3, %86 ]
  %exitcond31 = icmp ne i32 %105, %smax30
  br i1 %exitcond31, label %106, label %110

106:                                              ; preds = %104
  %107 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %88, ptr noundef %92, ptr noundef %93)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %94, ptr noundef %98, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %99, ptr noundef %103)
  br label %108

108:                                              ; preds = %106
  %109 = add i32 %105, 1
  br label %104, !llvm.loop !25

110:                                              ; preds = %104
  store i32 %smax30, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %111 = load i32, ptr %7, align 4
  %112 = load ptr, ptr %9, align 8
  %113 = load ptr, ptr %9, align 8
  %114 = load i32, ptr %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, ptr %113, i64 %115
  %117 = load ptr, ptr %11, align 8
  %118 = load ptr, ptr %11, align 8
  %119 = load ptr, ptr %11, align 8
  %120 = load i32, ptr %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, ptr %119, i64 %121
  %123 = load ptr, ptr %11, align 8
  %124 = load ptr, ptr %11, align 8
  %125 = load i32, ptr %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, ptr %124, i64 %126
  %.promoted5 = load i32, ptr %6, align 4
  %smax32 = call i32 @llvm.smax.i32(i32 %.promoted5, i32 %111)
  br label %128

128:                                              ; preds = %132, %110
  %129 = phi i32 [ %133, %132 ], [ %.promoted5, %110 ]
  %exitcond33 = icmp ne i32 %129, %smax32
  br i1 %exitcond33, label %130, label %134

130:                                              ; preds = %128
  %131 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %112, ptr noundef %116, ptr noundef %117)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %118, ptr noundef %122, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %123, ptr noundef %127)
  br label %132

132:                                              ; preds = %130
  %133 = add i32 %129, 1
  br label %128, !llvm.loop !26

134:                                              ; preds = %128
  store i32 %smax32, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %135 = load i32, ptr %7, align 4
  %136 = load ptr, ptr %9, align 8
  %137 = load ptr, ptr %9, align 8
  %138 = load i32, ptr %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, ptr %137, i64 %139
  %141 = load ptr, ptr %11, align 8
  %142 = load ptr, ptr %11, align 8
  %143 = load ptr, ptr %11, align 8
  %144 = load i32, ptr %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, ptr %143, i64 %145
  %147 = load ptr, ptr %11, align 8
  %148 = load ptr, ptr %11, align 8
  %149 = load i32, ptr %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, ptr %148, i64 %150
  %.promoted7 = load i32, ptr %6, align 4
  %smax34 = call i32 @llvm.smax.i32(i32 %.promoted7, i32 %135)
  br label %152

152:                                              ; preds = %156, %134
  %153 = phi i32 [ %157, %156 ], [ %.promoted7, %134 ]
  %exitcond35 = icmp ne i32 %153, %smax34
  br i1 %exitcond35, label %154, label %158

154:                                              ; preds = %152
  %155 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %136, ptr noundef %140, ptr noundef %141)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %142, ptr noundef %146)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %147, ptr noundef %151)
  br label %156

156:                                              ; preds = %154
  %157 = add i32 %153, 1
  br label %152, !llvm.loop !27

158:                                              ; preds = %152
  store i32 %smax34, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %159 = load i32, ptr %7, align 4
  %160 = load ptr, ptr %9, align 8
  %161 = load ptr, ptr %9, align 8
  %162 = load i32, ptr %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, ptr %161, i64 %163
  %165 = load ptr, ptr %11, align 8
  %166 = load ptr, ptr %11, align 8
  %167 = load ptr, ptr %11, align 8
  %168 = load i32, ptr %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, ptr %167, i64 %169
  %171 = load ptr, ptr %11, align 8
  %172 = load ptr, ptr %11, align 8
  %173 = load i32, ptr %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, ptr %172, i64 %174
  %.promoted9 = load i32, ptr %6, align 4
  %smax36 = call i32 @llvm.smax.i32(i32 %.promoted9, i32 %159)
  br label %176

176:                                              ; preds = %180, %158
  %177 = phi i32 [ %181, %180 ], [ %.promoted9, %158 ]
  %exitcond37 = icmp ne i32 %177, %smax36
  br i1 %exitcond37, label %178, label %182

178:                                              ; preds = %176
  %179 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %160, ptr noundef %164, ptr noundef %165)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %166, ptr noundef %170, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %171, ptr noundef %175)
  br label %180

180:                                              ; preds = %178
  %181 = add i32 %177, 1
  br label %176, !llvm.loop !28

182:                                              ; preds = %176
  store i32 %smax36, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %183 = load i32, ptr %7, align 4
  %184 = load ptr, ptr %9, align 8
  %185 = load ptr, ptr %9, align 8
  %186 = load i32, ptr %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, ptr %185, i64 %187
  %189 = load ptr, ptr %11, align 8
  %190 = load ptr, ptr %11, align 8
  %191 = load ptr, ptr %11, align 8
  %192 = load i32, ptr %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, ptr %191, i64 %193
  %195 = getelementptr inbounds nuw %struct.less_than_functor, ptr %12, i32 0, i32 0
  %196 = load i8, ptr %195, align 1
  %197 = load ptr, ptr %11, align 8
  %198 = load ptr, ptr %11, align 8
  %199 = load i32, ptr %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, ptr %198, i64 %200
  %.promoted11 = load i32, ptr %6, align 4
  %smax38 = call i32 @llvm.smax.i32(i32 %.promoted11, i32 %183)
  br label %202

202:                                              ; preds = %206, %182
  %203 = phi i32 [ %207, %206 ], [ %.promoted11, %182 ]
  %exitcond39 = icmp ne i32 %203, %smax38
  br i1 %exitcond39, label %204, label %208

204:                                              ; preds = %202
  %205 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %184, ptr noundef %188, ptr noundef %189)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %190, ptr noundef %194, i8 %196)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %197, ptr noundef %201)
  br label %206

206:                                              ; preds = %204
  %207 = add i32 %203, 1
  br label %202, !llvm.loop !29

208:                                              ; preds = %202
  store i32 %smax38, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %209 = load i32, ptr %7, align 4
  %210 = load ptr, ptr %11, align 8
  %211 = load ptr, ptr %11, align 8
  %212 = load i32, ptr %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, ptr %211, i64 %213
  %215 = getelementptr inbounds nuw %struct.less_than_functor, ptr %13, i32 0, i32 0
  %216 = load i8, ptr %215, align 1
  %217 = load ptr, ptr %11, align 8
  %218 = load ptr, ptr %11, align 8
  %219 = load i32, ptr %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds double, ptr %218, i64 %220
  %222 = load ptr, ptr %9, align 8
  %223 = load ptr, ptr %9, align 8
  %224 = load i32, ptr %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, ptr %223, i64 %225
  %227 = load ptr, ptr %11, align 8
  %.promoted13 = load i32, ptr %6, align 4
  %smax40 = call i32 @llvm.smax.i32(i32 %.promoted13, i32 %209)
  br label %228

228:                                              ; preds = %232, %208
  %229 = phi i32 [ %233, %232 ], [ %.promoted13, %208 ]
  %exitcond41 = icmp ne i32 %229, %smax40
  br i1 %exitcond41, label %230, label %234

230:                                              ; preds = %228
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %210, ptr noundef %214, i8 %216)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %217, ptr noundef %221)
  %231 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %222, ptr noundef %226, ptr noundef %227)
  br label %232

232:                                              ; preds = %230
  %233 = add i32 %229, 1
  br label %228, !llvm.loop !30

234:                                              ; preds = %228
  store i32 %smax40, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %235 = load i32, ptr %7, align 4
  %236 = load ptr, ptr %9, align 8
  %237 = load ptr, ptr %9, align 8
  %238 = load i32, ptr %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds double, ptr %237, i64 %239
  %241 = load ptr, ptr %11, align 8
  %242 = load ptr, ptr %11, align 8
  %243 = load ptr, ptr %11, align 8
  %244 = load i32, ptr %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, ptr %243, i64 %245
  %247 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %14, i32 0, i32 0
  %248 = load i8, ptr %247, align 1
  %249 = load ptr, ptr %11, align 8
  %250 = load ptr, ptr %11, align 8
  %251 = load i32, ptr %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double, ptr %250, i64 %252
  %.promoted15 = load i32, ptr %6, align 4
  %smax42 = call i32 @llvm.smax.i32(i32 %.promoted15, i32 %235)
  br label %254

254:                                              ; preds = %258, %234
  %255 = phi i32 [ %259, %258 ], [ %.promoted15, %234 ]
  %exitcond43 = icmp ne i32 %255, %smax42
  br i1 %exitcond43, label %256, label %260

256:                                              ; preds = %254
  %257 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %236, ptr noundef %240, ptr noundef %241)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %242, ptr noundef %246, i8 %248)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %249, ptr noundef %253)
  br label %258

258:                                              ; preds = %256
  %259 = add i32 %255, 1
  br label %254, !llvm.loop !31

260:                                              ; preds = %254
  store i32 %smax42, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %261 = load i32, ptr %7, align 4
  %262 = load ptr, ptr %9, align 8
  %263 = load ptr, ptr %9, align 8
  %264 = load i32, ptr %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, ptr %263, i64 %265
  %267 = load ptr, ptr %11, align 8
  %268 = load ptr, ptr %11, align 8
  %269 = load ptr, ptr %11, align 8
  %270 = load i32, ptr %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double, ptr %269, i64 %271
  %273 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %15, i32 0, i32 0
  %274 = load i8, ptr %273, align 1
  %275 = load ptr, ptr %11, align 8
  %276 = load ptr, ptr %11, align 8
  %277 = load i32, ptr %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, ptr %276, i64 %278
  %.promoted17 = load i32, ptr %6, align 4
  %smax44 = call i32 @llvm.smax.i32(i32 %.promoted17, i32 %261)
  br label %280

280:                                              ; preds = %284, %260
  %281 = phi i32 [ %285, %284 ], [ %.promoted17, %260 ]
  %exitcond45 = icmp ne i32 %281, %smax44
  br i1 %exitcond45, label %282, label %286

282:                                              ; preds = %280
  %283 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %262, ptr noundef %266, ptr noundef %267)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %268, ptr noundef %272, i8 %274)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %275, ptr noundef %279)
  br label %284

284:                                              ; preds = %282
  %285 = add i32 %281, 1
  br label %280, !llvm.loop !32

286:                                              ; preds = %280
  store i32 %smax44, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %287 = load i32, ptr %7, align 4
  %288 = load ptr, ptr %9, align 8
  %289 = load ptr, ptr %9, align 8
  %290 = load i32, ptr %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, ptr %289, i64 %291
  %293 = load ptr, ptr %11, align 8
  %294 = load ptr, ptr %11, align 8
  %295 = load ptr, ptr %11, align 8
  %296 = load i32, ptr %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double, ptr %295, i64 %297
  %299 = getelementptr inbounds nuw %"struct.std::less", ptr %16, i32 0, i32 0
  %300 = load i8, ptr %299, align 1
  %301 = load ptr, ptr %11, align 8
  %302 = load ptr, ptr %11, align 8
  %303 = load i32, ptr %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds double, ptr %302, i64 %304
  %.promoted19 = load i32, ptr %6, align 4
  %smax46 = call i32 @llvm.smax.i32(i32 %.promoted19, i32 %287)
  br label %306

306:                                              ; preds = %310, %286
  %307 = phi i32 [ %311, %310 ], [ %.promoted19, %286 ]
  %exitcond47 = icmp ne i32 %307, %smax46
  br i1 %exitcond47, label %308, label %312

308:                                              ; preds = %306
  %309 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %288, ptr noundef %292, ptr noundef %293)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %294, ptr noundef %298, i8 %300)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %301, ptr noundef %305)
  br label %310

310:                                              ; preds = %308
  %311 = add i32 %307, 1
  br label %306, !llvm.loop !33

312:                                              ; preds = %306
  store i32 %smax46, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %313 = load i32, ptr %7, align 4
  %314 = load ptr, ptr %9, align 8
  %315 = load ptr, ptr %9, align 8
  %316 = load i32, ptr %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, ptr %315, i64 %317
  %319 = load ptr, ptr %11, align 8
  %320 = load ptr, ptr %11, align 8
  %321 = load ptr, ptr %11, align 8
  %322 = load i32, ptr %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds double, ptr %321, i64 %323
  %325 = getelementptr inbounds nuw %"struct.std::less", ptr %17, i32 0, i32 0
  %326 = load i8, ptr %325, align 1
  %327 = load ptr, ptr %11, align 8
  %328 = load ptr, ptr %11, align 8
  %329 = load i32, ptr %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds double, ptr %328, i64 %330
  %.promoted21 = load i32, ptr %6, align 4
  %smax48 = call i32 @llvm.smax.i32(i32 %.promoted21, i32 %313)
  br label %332

332:                                              ; preds = %336, %312
  %333 = phi i32 [ %337, %336 ], [ %.promoted21, %312 ]
  %exitcond49 = icmp ne i32 %333, %smax48
  br i1 %exitcond49, label %334, label %338

334:                                              ; preds = %332
  %335 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %314, ptr noundef %318, ptr noundef %319)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %320, ptr noundef %324, i8 %326)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %327, ptr noundef %331)
  br label %336

336:                                              ; preds = %334
  %337 = add i32 %333, 1
  br label %332, !llvm.loop !34

338:                                              ; preds = %332
  store i32 %smax48, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %339 = load i32, ptr %7, align 4
  %340 = load ptr, ptr %9, align 8
  %341 = load ptr, ptr %9, align 8
  %342 = load i32, ptr %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double, ptr %341, i64 %343
  %345 = load ptr, ptr %11, align 8
  %346 = load ptr, ptr %11, align 8
  %347 = load ptr, ptr %11, align 8
  %348 = load i32, ptr %8, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, ptr %347, i64 %349
  %351 = load ptr, ptr %11, align 8
  %352 = load ptr, ptr %11, align 8
  %353 = load i32, ptr %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds double, ptr %352, i64 %354
  %.promoted23 = load i32, ptr %6, align 4
  %smax50 = call i32 @llvm.smax.i32(i32 %.promoted23, i32 %339)
  br label %356

356:                                              ; preds = %360, %338
  %357 = phi i32 [ %361, %360 ], [ %.promoted23, %338 ]
  %exitcond51 = icmp ne i32 %357, %smax50
  br i1 %exitcond51, label %358, label %362

358:                                              ; preds = %356
  %359 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %340, ptr noundef %344, ptr noundef %345)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %346, ptr noundef %350)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %351, ptr noundef %355)
  br label %360

360:                                              ; preds = %358
  %361 = add i32 %357, 1
  br label %356, !llvm.loop !35

362:                                              ; preds = %356
  store i32 %smax50, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %363 = load i32, ptr %7, align 4
  %364 = load ptr, ptr %9, align 8
  %365 = load ptr, ptr %9, align 8
  %366 = load i32, ptr %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds double, ptr %365, i64 %367
  %369 = load ptr, ptr %11, align 8
  %370 = load ptr, ptr %11, align 8
  %371 = load ptr, ptr %11, align 8
  %372 = load i32, ptr %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds double, ptr %371, i64 %373
  %375 = load ptr, ptr %11, align 8
  %376 = load ptr, ptr %11, align 8
  %377 = load i32, ptr %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds double, ptr %376, i64 %378
  %.promoted25 = load i32, ptr %6, align 4
  %smax52 = call i32 @llvm.smax.i32(i32 %.promoted25, i32 %363)
  br label %380

380:                                              ; preds = %384, %362
  %381 = phi i32 [ %385, %384 ], [ %.promoted25, %362 ]
  %exitcond53 = icmp ne i32 %381, %smax52
  br i1 %exitcond53, label %382, label %386

382:                                              ; preds = %380
  %383 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %364, ptr noundef %368, ptr noundef %369)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %370, ptr noundef %374)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %375, ptr noundef %379)
  br label %384

384:                                              ; preds = %382
  %385 = add i32 %381, 1
  br label %380, !llvm.loop !36

386:                                              ; preds = %380
  store i32 %smax52, ptr %6, align 4
  %387 = load ptr, ptr %11, align 8
  %388 = icmp eq ptr %387, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %386
  call void @_ZdaPv(ptr noundef %387) #17
  br label %390

390:                                              ; preds = %389, %386
  %391 = load ptr, ptr %9, align 8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %390
  call void @_ZdaPv(ptr noundef %391) #17
  br label %394

394:                                              ; preds = %393, %390
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
  br label %10

10:                                               ; preds = %23, %2
  %11 = phi ptr [ %17, %23 ], [ %.promoted2, %2 ]
  %12 = phi ptr [ %15, %23 ], [ %.promoted, %2 ]
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
  %.lcssa4 = phi ptr [ %17, %14 ]
  %.lcssa1 = phi ptr [ %15, %14 ]
  store ptr %.lcssa1, ptr %3, align 8
  store ptr %.lcssa4, ptr %5, align 8
  %21 = load i32, ptr @current_test, align 4
  %22 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %21)
  br label %24

23:                                               ; preds = %14
  br label %10, !llvm.loop !37

.loopexit:                                        ; preds = %10
  %.lcssa3 = phi ptr [ %11, %10 ]
  %.lcssa = phi ptr [ %12, %10 ]
  store ptr %.lcssa, ptr %3, align 8
  store ptr %.lcssa3, ptr %5, align 8
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
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %54

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

23:                                               ; preds = %44, %16
  %24 = phi double [ %45, %44 ], [ %.promoted7, %16 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %44 ], [ %.promoted, %16 ]
  %.lcssa4 = phi ptr [ %.lcssa, %44 ], [ %.promoted3, %16 ]
  br label %25

25:                                               ; preds = %30, %23
  %26 = phi ptr [ %27, %30 ], [ %.lcssa4, %23 ]
  %27 = getelementptr inbounds double, ptr %26, i32 -1
  %28 = load double, ptr %27, align 8
  %29 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %21, double noundef %28)
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %25, !llvm.loop !38

31:                                               ; preds = %25
  %.lcssa = phi ptr [ %27, %25 ]
  %32 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  %.lcssa8 = phi double [ %24, %31 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %31 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %31 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa26.lcssa, ptr %6, align 8
  store double %.lcssa8, ptr %8, align 8
  br label %47

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %39, %34
  %36 = phi ptr [ %40, %39 ], [ %.lcssa26, %34 ]
  %37 = load double, ptr %36, align 8
  %38 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %37, double noundef %22)
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw double, ptr %36, i32 1
  br label %35, !llvm.loop !39

41:                                               ; preds = %35
  %.lcssa2 = phi ptr [ %36, %35 ]
  %42 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  %.lcssa9 = phi double [ %24, %41 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %41 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %41 ]
  store ptr %.lcssa.lcssa5, ptr %7, align 8
  store ptr %.lcssa2.lcssa, ptr %6, align 8
  store double %.lcssa9, ptr %8, align 8
  br label %47

44:                                               ; preds = %41
  %45 = load double, ptr %.lcssa, align 8
  %46 = load double, ptr %.lcssa2, align 8
  store double %46, ptr %.lcssa, align 8
  store double %45, ptr %.lcssa2, align 8
  br label %23, !llvm.loop !40

47:                                               ; preds = %43, %33
  %48 = load ptr, ptr %3, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds double, ptr %49, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %48, ptr noundef %50, ptr noundef @_Z19less_than_function2dd)
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds double, ptr %51, i64 1
  %53 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %52, ptr noundef %53, ptr noundef @_Z19less_than_function2dd)
  br label %54

54:                                               ; preds = %47, %2
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

27:                                               ; preds = %31, %26
  %28 = phi ptr [ %29, %31 ], [ %.promoted, %26 ]
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  %30 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %27, !llvm.loop !41

32:                                               ; preds = %27
  %.lcssa = phi ptr [ %29, %27 ]
  store ptr %.lcssa, ptr %9, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %56

37:                                               ; preds = %32
  %.promoted1 = load ptr, ptr %8, align 8
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi ptr [ %42, %41 ], [ %.promoted1, %37 ]
  %40 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw double, ptr %39, i32 1
  br label %38, !llvm.loop !42

43:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %39, %38 ]
  store ptr %.lcssa2, ptr %8, align 8
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

56:                                               ; preds = %47, %36
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

27:                                               ; preds = %31, %26
  %28 = phi ptr [ %29, %31 ], [ %.promoted, %26 ]
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  %30 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %27, !llvm.loop !44

32:                                               ; preds = %27
  %.lcssa = phi ptr [ %29, %27 ]
  store ptr %.lcssa, ptr %9, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %56

37:                                               ; preds = %32
  %.promoted1 = load ptr, ptr %8, align 8
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi ptr [ %42, %41 ], [ %.promoted1, %37 ]
  %40 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw double, ptr %39, i32 1
  br label %38, !llvm.loop !45

43:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %39, %38 ]
  store ptr %.lcssa2, ptr %8, align 8
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

56:                                               ; preds = %47, %36
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

27:                                               ; preds = %31, %26
  %28 = phi ptr [ %29, %31 ], [ %.promoted, %26 ]
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  %30 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %27, !llvm.loop !47

32:                                               ; preds = %27
  %.lcssa = phi ptr [ %29, %27 ]
  store ptr %.lcssa, ptr %9, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %56

37:                                               ; preds = %32
  %.promoted1 = load ptr, ptr %8, align 8
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi ptr [ %42, %41 ], [ %.promoted1, %37 ]
  %40 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw double, ptr %39, i32 1
  br label %38, !llvm.loop !48

43:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %39, %38 ]
  store ptr %.lcssa2, ptr %8, align 8
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

56:                                               ; preds = %47, %36
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
  br i1 %15, label %16, label %54

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

23:                                               ; preds = %44, %16
  %24 = phi double [ %45, %44 ], [ %.promoted7, %16 ]
  %.lcssa26 = phi ptr [ %.lcssa2, %44 ], [ %.promoted, %16 ]
  %.lcssa4 = phi ptr [ %.lcssa, %44 ], [ %.promoted3, %16 ]
  br label %25

25:                                               ; preds = %30, %23
  %26 = phi ptr [ %27, %30 ], [ %.lcssa4, %23 ]
  %27 = getelementptr inbounds double, ptr %26, i32 -1
  %28 = load double, ptr %27, align 8
  %29 = fcmp olt double %21, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %25, !llvm.loop !50

31:                                               ; preds = %25
  %.lcssa = phi ptr [ %27, %25 ]
  %32 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  %.lcssa8 = phi double [ %24, %31 ]
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %31 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %31 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa26.lcssa, ptr %6, align 8
  store double %.lcssa8, ptr %8, align 8
  br label %47

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %39, %34
  %36 = phi ptr [ %40, %39 ], [ %.lcssa26, %34 ]
  %37 = load double, ptr %36, align 8
  %38 = fcmp olt double %37, %22
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw double, ptr %36, i32 1
  br label %35, !llvm.loop !51

41:                                               ; preds = %35
  %.lcssa2 = phi ptr [ %36, %35 ]
  %42 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  %.lcssa9 = phi double [ %24, %41 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %41 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %41 ]
  store ptr %.lcssa.lcssa5, ptr %7, align 8
  store ptr %.lcssa2.lcssa, ptr %6, align 8
  store double %.lcssa9, ptr %8, align 8
  br label %47

44:                                               ; preds = %41
  %45 = load double, ptr %.lcssa, align 8
  %46 = load double, ptr %.lcssa2, align 8
  store double %46, ptr %.lcssa, align 8
  store double %45, ptr %.lcssa2, align 8
  br label %23, !llvm.loop !52

47:                                               ; preds = %43, %33
  %48 = load ptr, ptr %3, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds double, ptr %49, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %48, ptr noundef %50)
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds double, ptr %51, i64 1
  %53 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %52, ptr noundef %53)
  br label %54

54:                                               ; preds = %47, %2
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
  br label %20

20:                                               ; preds = %37, %4
  %21 = phi ptr [ %41, %37 ], [ %.promoted5, %4 ]
  %22 = phi i64 [ %38, %37 ], [ %.promoted2, %4 ]
  %23 = phi ptr [ %41, %37 ], [ %.promoted, %4 ]
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %24, %16
  %26 = sdiv exact i64 %25, 8
  %27 = icmp sgt i64 %26, 16
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %20
  %29 = icmp eq i64 %22, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %.lcssa7 = phi ptr [ %21, %28 ]
  %.lcssa1 = phi ptr [ %23, %28 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %34 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %31, ptr noundef %32, ptr noundef %33, i64 %36)
  br label %44

37:                                               ; preds = %28
  %38 = add nsw i64 %22, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %39 = load ptr, ptr %18, align 8
  %40 = ptrtoint ptr %39 to i64
  %41 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %17, ptr noundef %23, i64 %40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %42 = load ptr, ptr %19, align 8
  %43 = ptrtoint ptr %42 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %41, ptr noundef %23, i64 noundef %38, i64 %43)
  br label %20, !llvm.loop !53

.loopexit:                                        ; preds = %20
  %.lcssa6 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi i64 [ %22, %20 ]
  %.lcssa = phi ptr [ %23, %20 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %44

44:                                               ; preds = %.loopexit, %30
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
  br label %19

19:                                               ; preds = %26, %4
  %20 = phi ptr [ %27, %26 ], [ %.promoted, %4 ]
  %21 = icmp ult ptr %20, %15
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %20, ptr noundef %16)
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %25

25:                                               ; preds = %24, %22
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds nuw double, ptr %20, i32 1
  br label %19, !llvm.loop !54

28:                                               ; preds = %19
  %.lcssa = phi ptr [ %20, %19 ]
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
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi ptr [ %18, %17 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = sdiv exact i64 %14, 8
  %16 = icmp sgt i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds double, ptr %12, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %9, ptr noundef %18, ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %11, !llvm.loop !55

19:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
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
  store i64 0, ptr %8, align 8
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
  %18 = load i64, ptr %9, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %25

25:                                               ; preds = %38, %5
  %26 = phi i64 [ %39, %38 ], [ %.promoted1, %5 ]
  %27 = phi i64 [ %39, %38 ], [ %.promoted, %5 ]
  %28 = icmp slt i64 %27, %20
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = add nsw i64 %27, 1
  %31 = mul nsw i64 2, %30
  %32 = getelementptr inbounds double, ptr %21, i64 %31
  %33 = sub nsw i64 %31, 1
  %34 = getelementptr inbounds double, ptr %22, i64 %33
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %32, ptr noundef %34)
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = add nsw i64 %31, -1
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i64 [ %37, %36 ], [ %31, %29 ]
  %40 = getelementptr inbounds double, ptr %23, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %24, i64 %26
  store double %41, ptr %42, align 8
  br label %25, !llvm.loop !57

43:                                               ; preds = %25
  %.lcssa2 = phi i64 [ %26, %25 ]
  %.lcssa = phi i64 [ %27, %25 ]
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

13:                                               ; preds = %30, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %30 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %31, %30 ], [ %.promoted3, %4 ]
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi ptr [ %18, %17 ], [ %.lcssa4, %13 ]
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15, ptr noundef %11)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds nuw double, ptr %15, i32 1
  br label %14, !llvm.loop !59

19:                                               ; preds = %14
  %.lcssa = phi ptr [ %15, %14 ]
  %20 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %21

21:                                               ; preds = %24, %19
  %22 = phi ptr [ %25, %24 ], [ %20, %19 ]
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %22)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds double, ptr %22, i32 -1
  br label %21, !llvm.loop !60

26:                                               ; preds = %21
  %.lcssa2 = phi ptr [ %22, %21 ]
  %27 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %26 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %26 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %29 = load ptr, ptr %6, align 8
  ret ptr %29

30:                                               ; preds = %26
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %31 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
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
  %38 = load ptr, ptr %19, align 8
  %39 = load ptr, ptr %19, align 8
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
  br label %40

40:                                               ; preds = %89, %31
  %41 = phi ptr [ %74, %89 ], [ %.promoted29, %31 ]
  %42 = phi ptr [ %75, %89 ], [ %.promoted27, %31 ]
  %43 = phi ptr [ %76, %89 ], [ %.promoted25, %31 ]
  %44 = phi ptr [ %77, %89 ], [ %.promoted23, %31 ]
  %45 = phi ptr [ %78, %89 ], [ %.promoted21, %31 ]
  %46 = phi ptr [ %79, %89 ], [ %.promoted19, %31 ]
  %47 = phi ptr [ %80, %89 ], [ %.promoted17, %31 ]
  %48 = phi ptr [ %81, %89 ], [ %.promoted15, %31 ]
  %49 = phi ptr [ %82, %89 ], [ %.promoted13, %31 ]
  %50 = phi ptr [ %83, %89 ], [ %.promoted11, %31 ]
  %51 = phi ptr [ %84, %89 ], [ %.promoted9, %31 ]
  %52 = phi ptr [ %85, %89 ], [ %.promoted7, %31 ]
  %53 = phi ptr [ %86, %89 ], [ %.promoted5, %31 ]
  %54 = phi double [ %87, %89 ], [ %.promoted3, %31 ]
  %55 = phi ptr [ %88, %89 ], [ %.promoted1, %31 ]
  %56 = phi ptr [ %90, %89 ], [ %.promoted, %31 ]
  %57 = icmp ne ptr %56, %34
  br i1 %57, label %58, label %.loopexit

58:                                               ; preds = %40
  %59 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %56, ptr noundef %35)
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  %61 = load double, ptr %56, align 8
  %62 = getelementptr inbounds double, ptr %56, i64 1
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %38)
  %64 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %56)
  store ptr %62, ptr %14, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %63, ptr noundef %64, ptr noundef %65)
  store double %61, ptr %39, align 8
  br label %73

67:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %18, i64 8, i1 false)
  %68 = load ptr, ptr %36, align 8
  %69 = ptrtoint ptr %68 to i64
  %70 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %69)
  %71 = inttoptr i64 %70 to ptr
  %72 = ptrtoint ptr %71 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %56, i64 %72)
  br label %73

73:                                               ; preds = %67, %60
  %74 = phi ptr [ %41, %67 ], [ %66, %60 ]
  %75 = phi ptr [ %42, %67 ], [ %14, %60 ]
  %76 = phi ptr [ %43, %67 ], [ %65, %60 ]
  %77 = phi ptr [ %44, %67 ], [ %64, %60 ]
  %78 = phi ptr [ %45, %67 ], [ %63, %60 ]
  %79 = phi ptr [ %46, %67 ], [ %65, %60 ]
  %80 = phi ptr [ %47, %67 ], [ %64, %60 ]
  %81 = phi ptr [ %48, %67 ], [ %63, %60 ]
  %82 = phi ptr [ %49, %67 ], [ %64, %60 ]
  %83 = phi ptr [ %50, %67 ], [ %63, %60 ]
  %84 = phi ptr [ %51, %67 ], [ %62, %60 ]
  %85 = phi ptr [ %52, %67 ], [ %56, %60 ]
  %86 = phi ptr [ %53, %67 ], [ %38, %60 ]
  %87 = phi double [ %54, %67 ], [ %61, %60 ]
  %88 = phi ptr [ %71, %67 ], [ %55, %60 ]
  br label %89

89:                                               ; preds = %73
  %90 = getelementptr inbounds nuw double, ptr %56, i32 1
  br label %40, !llvm.loop !62

.loopexit:                                        ; preds = %40
  %.lcssa30 = phi ptr [ %41, %40 ]
  %.lcssa28 = phi ptr [ %42, %40 ]
  %.lcssa26 = phi ptr [ %43, %40 ]
  %.lcssa24 = phi ptr [ %44, %40 ]
  %.lcssa22 = phi ptr [ %45, %40 ]
  %.lcssa20 = phi ptr [ %46, %40 ]
  %.lcssa18 = phi ptr [ %47, %40 ]
  %.lcssa16 = phi ptr [ %48, %40 ]
  %.lcssa14 = phi ptr [ %49, %40 ]
  %.lcssa12 = phi ptr [ %50, %40 ]
  %.lcssa10 = phi ptr [ %51, %40 ]
  %.lcssa8 = phi ptr [ %52, %40 ]
  %.lcssa6 = phi ptr [ %53, %40 ]
  %.lcssa4 = phi double [ %54, %40 ]
  %.lcssa2 = phi ptr [ %55, %40 ]
  %.lcssa = phi ptr [ %56, %40 ]
  %91 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %23, i32 0, i32 0
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
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load ptr, ptr %15, align 8
  br label %16

16:                                               ; preds = %26, %3
  %17 = phi ptr [ %24, %26 ], [ %.promoted1, %3 ]
  %18 = phi ptr [ %27, %26 ], [ %.promoted, %3 ]
  %19 = icmp ne ptr %18, %13
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %21 = load ptr, ptr %14, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %22)
  %24 = inttoptr i64 %23 to ptr
  %25 = ptrtoint ptr %24 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %18, i64 %25)
  br label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds nuw double, ptr %18, i32 1
  br label %16, !llvm.loop !63

28:                                               ; preds = %16
  %.lcssa2 = phi ptr [ %17, %16 ]
  %.lcssa = phi ptr [ %18, %16 ]
  %29 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %8, i32 0, i32 0
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
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi ptr [ %16, %18 ], [ %.promoted1, %2 ]
  %16 = phi ptr [ %20, %18 ], [ %.promoted, %2 ]
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %16)
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load double, ptr %16, align 8
  store double %19, ptr %15, align 8
  %20 = getelementptr inbounds double, ptr %16, i32 -1
  br label %14, !llvm.loop !64

21:                                               ; preds = %14
  %.lcssa2 = phi ptr [ %15, %14 ]
  %.lcssa = phi ptr [ %16, %14 ]
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
  br label %19

19:                                               ; preds = %35, %4
  %20 = phi ptr [ %38, %35 ], [ %.promoted5, %4 ]
  %21 = phi i64 [ %36, %35 ], [ %.promoted2, %4 ]
  %22 = phi ptr [ %38, %35 ], [ %.promoted, %4 ]
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %15
  %25 = sdiv exact i64 %24, 8
  %26 = icmp sgt i64 %25, 16
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %19
  %28 = icmp eq i64 %21, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %.lcssa7 = phi ptr [ %20, %27 ]
  %.lcssa1 = phi ptr [ %22, %27 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %30, ptr noundef %31, ptr noundef %32, i8 %34)
  br label %40

35:                                               ; preds = %27
  %36 = add nsw i64 %21, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %37 = load i8, ptr %17, align 1
  %38 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %16, ptr noundef %22, i8 %37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %39 = load i8, ptr %18, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %38, ptr noundef %22, i64 noundef %36, i8 %39)
  br label %19, !llvm.loop !65

.loopexit:                                        ; preds = %19
  %.lcssa6 = phi ptr [ %20, %19 ]
  %.lcssa3 = phi i64 [ %21, %19 ]
  %.lcssa = phi ptr [ %22, %19 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %40

40:                                               ; preds = %.loopexit, %29
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
  br label %18

18:                                               ; preds = %25, %4
  %19 = phi ptr [ %26, %25 ], [ %.promoted, %4 ]
  %20 = icmp ult ptr %19, %14
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef %15)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %24

24:                                               ; preds = %23, %21
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %19, i32 1
  br label %18, !llvm.loop !66

27:                                               ; preds = %18
  %.lcssa = phi ptr [ %19, %18 ]
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
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi ptr [ %18, %17 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = sdiv exact i64 %14, 8
  %16 = icmp sgt i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds double, ptr %12, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %9, ptr noundef %18, ptr noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !67

19:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
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
  store i64 0, ptr %8, align 8
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
  %17 = load i64, ptr %9, align 8
  %18 = sub nsw i64 %17, 1
  %19 = sdiv i64 %18, 2
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %24

24:                                               ; preds = %37, %5
  %25 = phi i64 [ %38, %37 ], [ %.promoted1, %5 ]
  %26 = phi i64 [ %38, %37 ], [ %.promoted, %5 ]
  %27 = icmp slt i64 %26, %19
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = add nsw i64 %26, 1
  %30 = mul nsw i64 2, %29
  %31 = getelementptr inbounds double, ptr %20, i64 %30
  %32 = sub nsw i64 %30, 1
  %33 = getelementptr inbounds double, ptr %21, i64 %32
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %31, ptr noundef %33)
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = add nsw i64 %30, -1
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i64 [ %36, %35 ], [ %30, %28 ]
  %39 = getelementptr inbounds double, ptr %22, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %23, i64 %25
  store double %40, ptr %41, align 8
  br label %24, !llvm.loop !69

42:                                               ; preds = %24
  %.lcssa2 = phi i64 [ %25, %24 ]
  %.lcssa = phi i64 [ %26, %24 ]
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

12:                                               ; preds = %29, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %29 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %30, %29 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %16, %12
  %14 = phi ptr [ %17, %16 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %13, !llvm.loop !71

18:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %19 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %21)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds double, ptr %21, i32 -1
  br label %20, !llvm.loop !72

25:                                               ; preds = %20
  %.lcssa2 = phi ptr [ %21, %20 ]
  %26 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %30 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
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
  %37 = load ptr, ptr %19, align 8
  %38 = load ptr, ptr %19, align 8
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
  br label %39

39:                                               ; preds = %85, %30
  %40 = phi ptr [ %70, %85 ], [ %.promoted29, %30 ]
  %41 = phi ptr [ %71, %85 ], [ %.promoted27, %30 ]
  %42 = phi ptr [ %72, %85 ], [ %.promoted25, %30 ]
  %43 = phi ptr [ %73, %85 ], [ %.promoted23, %30 ]
  %44 = phi ptr [ %74, %85 ], [ %.promoted21, %30 ]
  %45 = phi ptr [ %75, %85 ], [ %.promoted19, %30 ]
  %46 = phi ptr [ %76, %85 ], [ %.promoted17, %30 ]
  %47 = phi ptr [ %77, %85 ], [ %.promoted15, %30 ]
  %48 = phi ptr [ %78, %85 ], [ %.promoted13, %30 ]
  %49 = phi ptr [ %79, %85 ], [ %.promoted11, %30 ]
  %50 = phi ptr [ %80, %85 ], [ %.promoted9, %30 ]
  %51 = phi ptr [ %81, %85 ], [ %.promoted7, %30 ]
  %52 = phi ptr [ %82, %85 ], [ %.promoted5, %30 ]
  %53 = phi double [ %83, %85 ], [ %.promoted3, %30 ]
  %54 = phi i8 [ %84, %85 ], [ %.promoted1, %30 ]
  %55 = phi ptr [ %86, %85 ], [ %.promoted, %30 ]
  %56 = icmp ne ptr %55, %33
  br i1 %56, label %57, label %.loopexit

57:                                               ; preds = %39
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %55, ptr noundef %34)
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = load double, ptr %55, align 8
  %61 = getelementptr inbounds double, ptr %55, i64 1
  %62 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %37)
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %55)
  store ptr %61, ptr %14, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store double %60, ptr %38, align 8
  br label %69

66:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = load i8, ptr %35, align 1
  %68 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %67)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %55, i8 %68)
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %40, %66 ], [ %65, %59 ]
  %71 = phi ptr [ %41, %66 ], [ %14, %59 ]
  %72 = phi ptr [ %42, %66 ], [ %64, %59 ]
  %73 = phi ptr [ %43, %66 ], [ %63, %59 ]
  %74 = phi ptr [ %44, %66 ], [ %62, %59 ]
  %75 = phi ptr [ %45, %66 ], [ %64, %59 ]
  %76 = phi ptr [ %46, %66 ], [ %63, %59 ]
  %77 = phi ptr [ %47, %66 ], [ %62, %59 ]
  %78 = phi ptr [ %48, %66 ], [ %63, %59 ]
  %79 = phi ptr [ %49, %66 ], [ %62, %59 ]
  %80 = phi ptr [ %50, %66 ], [ %61, %59 ]
  %81 = phi ptr [ %51, %66 ], [ %55, %59 ]
  %82 = phi ptr [ %52, %66 ], [ %37, %59 ]
  %83 = phi double [ %53, %66 ], [ %60, %59 ]
  %84 = phi i8 [ %68, %66 ], [ %54, %59 ]
  br label %85

85:                                               ; preds = %69
  %86 = getelementptr inbounds nuw double, ptr %55, i32 1
  br label %39, !llvm.loop !74

.loopexit:                                        ; preds = %39
  %.lcssa30 = phi ptr [ %40, %39 ]
  %.lcssa28 = phi ptr [ %41, %39 ]
  %.lcssa26 = phi ptr [ %42, %39 ]
  %.lcssa24 = phi ptr [ %43, %39 ]
  %.lcssa22 = phi ptr [ %44, %39 ]
  %.lcssa20 = phi ptr [ %45, %39 ]
  %.lcssa18 = phi ptr [ %46, %39 ]
  %.lcssa16 = phi ptr [ %47, %39 ]
  %.lcssa14 = phi ptr [ %48, %39 ]
  %.lcssa12 = phi ptr [ %49, %39 ]
  %.lcssa10 = phi ptr [ %50, %39 ]
  %.lcssa8 = phi ptr [ %51, %39 ]
  %.lcssa6 = phi ptr [ %52, %39 ]
  %.lcssa4 = phi double [ %53, %39 ]
  %.lcssa2 = phi i8 [ %54, %39 ]
  %.lcssa = phi ptr [ %55, %39 ]
  %87 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %23, i32 0, i32 0
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
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load i8, ptr %14, align 1
  br label %15

15:                                               ; preds = %22, %3
  %16 = phi i8 [ %21, %22 ], [ %.promoted1, %3 ]
  %17 = phi ptr [ %23, %22 ], [ %.promoted, %3 ]
  %18 = icmp ne ptr %17, %12
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %20 = load i8, ptr %13, align 1
  %21 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %20)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %17, i8 %21)
  br label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw double, ptr %17, i32 1
  br label %15, !llvm.loop !75

24:                                               ; preds = %15
  %.lcssa2 = phi i8 [ %16, %15 ]
  %.lcssa = phi ptr [ %17, %15 ]
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %8, i32 0, i32 0
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
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %15, %17 ], [ %.promoted1, %2 ]
  %15 = phi ptr [ %19, %17 ], [ %.promoted, %2 ]
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load double, ptr %15, align 8
  store double %18, ptr %14, align 8
  %19 = getelementptr inbounds double, ptr %15, i32 -1
  br label %13, !llvm.loop !76

20:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
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
  br label %19

19:                                               ; preds = %35, %4
  %20 = phi ptr [ %38, %35 ], [ %.promoted5, %4 ]
  %21 = phi i64 [ %36, %35 ], [ %.promoted2, %4 ]
  %22 = phi ptr [ %38, %35 ], [ %.promoted, %4 ]
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %15
  %25 = sdiv exact i64 %24, 8
  %26 = icmp sgt i64 %25, 16
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %19
  %28 = icmp eq i64 %21, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %.lcssa7 = phi ptr [ %20, %27 ]
  %.lcssa1 = phi ptr [ %22, %27 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %30, ptr noundef %31, ptr noundef %32, i8 %34)
  br label %40

35:                                               ; preds = %27
  %36 = add nsw i64 %21, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %37 = load i8, ptr %17, align 1
  %38 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %16, ptr noundef %22, i8 %37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %39 = load i8, ptr %18, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %38, ptr noundef %22, i64 noundef %36, i8 %39)
  br label %19, !llvm.loop !77

.loopexit:                                        ; preds = %19
  %.lcssa6 = phi ptr [ %20, %19 ]
  %.lcssa3 = phi i64 [ %21, %19 ]
  %.lcssa = phi ptr [ %22, %19 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %40

40:                                               ; preds = %.loopexit, %29
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
  br label %18

18:                                               ; preds = %25, %4
  %19 = phi ptr [ %26, %25 ], [ %.promoted, %4 ]
  %20 = icmp ult ptr %19, %14
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef %15)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %24

24:                                               ; preds = %23, %21
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %19, i32 1
  br label %18, !llvm.loop !78

27:                                               ; preds = %18
  %.lcssa = phi ptr [ %19, %18 ]
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
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi ptr [ %18, %17 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = sdiv exact i64 %14, 8
  %16 = icmp sgt i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds double, ptr %12, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %9, ptr noundef %18, ptr noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !79

19:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
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
  store i64 0, ptr %8, align 8
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
  %17 = load i64, ptr %9, align 8
  %18 = sub nsw i64 %17, 1
  %19 = sdiv i64 %18, 2
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %24

24:                                               ; preds = %37, %5
  %25 = phi i64 [ %38, %37 ], [ %.promoted1, %5 ]
  %26 = phi i64 [ %38, %37 ], [ %.promoted, %5 ]
  %27 = icmp slt i64 %26, %19
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = add nsw i64 %26, 1
  %30 = mul nsw i64 2, %29
  %31 = getelementptr inbounds double, ptr %20, i64 %30
  %32 = sub nsw i64 %30, 1
  %33 = getelementptr inbounds double, ptr %21, i64 %32
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %31, ptr noundef %33)
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = add nsw i64 %30, -1
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i64 [ %36, %35 ], [ %30, %28 ]
  %39 = getelementptr inbounds double, ptr %22, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %23, i64 %25
  store double %40, ptr %41, align 8
  br label %24, !llvm.loop !81

42:                                               ; preds = %24
  %.lcssa2 = phi i64 [ %25, %24 ]
  %.lcssa = phi i64 [ %26, %24 ]
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

12:                                               ; preds = %29, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %29 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %30, %29 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %16, %12
  %14 = phi ptr [ %17, %16 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %13, !llvm.loop !83

18:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %19 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %21)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds double, ptr %21, i32 -1
  br label %20, !llvm.loop !84

25:                                               ; preds = %20
  %.lcssa2 = phi ptr [ %21, %20 ]
  %26 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %30 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
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
  %37 = load ptr, ptr %19, align 8
  %38 = load ptr, ptr %19, align 8
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
  br label %39

39:                                               ; preds = %85, %30
  %40 = phi ptr [ %70, %85 ], [ %.promoted29, %30 ]
  %41 = phi ptr [ %71, %85 ], [ %.promoted27, %30 ]
  %42 = phi ptr [ %72, %85 ], [ %.promoted25, %30 ]
  %43 = phi ptr [ %73, %85 ], [ %.promoted23, %30 ]
  %44 = phi ptr [ %74, %85 ], [ %.promoted21, %30 ]
  %45 = phi ptr [ %75, %85 ], [ %.promoted19, %30 ]
  %46 = phi ptr [ %76, %85 ], [ %.promoted17, %30 ]
  %47 = phi ptr [ %77, %85 ], [ %.promoted15, %30 ]
  %48 = phi ptr [ %78, %85 ], [ %.promoted13, %30 ]
  %49 = phi ptr [ %79, %85 ], [ %.promoted11, %30 ]
  %50 = phi ptr [ %80, %85 ], [ %.promoted9, %30 ]
  %51 = phi ptr [ %81, %85 ], [ %.promoted7, %30 ]
  %52 = phi ptr [ %82, %85 ], [ %.promoted5, %30 ]
  %53 = phi double [ %83, %85 ], [ %.promoted3, %30 ]
  %54 = phi i8 [ %84, %85 ], [ %.promoted1, %30 ]
  %55 = phi ptr [ %86, %85 ], [ %.promoted, %30 ]
  %56 = icmp ne ptr %55, %33
  br i1 %56, label %57, label %.loopexit

57:                                               ; preds = %39
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %55, ptr noundef %34)
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = load double, ptr %55, align 8
  %61 = getelementptr inbounds double, ptr %55, i64 1
  %62 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %37)
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %55)
  store ptr %61, ptr %14, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store double %60, ptr %38, align 8
  br label %69

66:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = load i8, ptr %35, align 1
  %68 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %67)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %55, i8 %68)
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %40, %66 ], [ %65, %59 ]
  %71 = phi ptr [ %41, %66 ], [ %14, %59 ]
  %72 = phi ptr [ %42, %66 ], [ %64, %59 ]
  %73 = phi ptr [ %43, %66 ], [ %63, %59 ]
  %74 = phi ptr [ %44, %66 ], [ %62, %59 ]
  %75 = phi ptr [ %45, %66 ], [ %64, %59 ]
  %76 = phi ptr [ %46, %66 ], [ %63, %59 ]
  %77 = phi ptr [ %47, %66 ], [ %62, %59 ]
  %78 = phi ptr [ %48, %66 ], [ %63, %59 ]
  %79 = phi ptr [ %49, %66 ], [ %62, %59 ]
  %80 = phi ptr [ %50, %66 ], [ %61, %59 ]
  %81 = phi ptr [ %51, %66 ], [ %55, %59 ]
  %82 = phi ptr [ %52, %66 ], [ %37, %59 ]
  %83 = phi double [ %53, %66 ], [ %60, %59 ]
  %84 = phi i8 [ %68, %66 ], [ %54, %59 ]
  br label %85

85:                                               ; preds = %69
  %86 = getelementptr inbounds nuw double, ptr %55, i32 1
  br label %39, !llvm.loop !86

.loopexit:                                        ; preds = %39
  %.lcssa30 = phi ptr [ %40, %39 ]
  %.lcssa28 = phi ptr [ %41, %39 ]
  %.lcssa26 = phi ptr [ %42, %39 ]
  %.lcssa24 = phi ptr [ %43, %39 ]
  %.lcssa22 = phi ptr [ %44, %39 ]
  %.lcssa20 = phi ptr [ %45, %39 ]
  %.lcssa18 = phi ptr [ %46, %39 ]
  %.lcssa16 = phi ptr [ %47, %39 ]
  %.lcssa14 = phi ptr [ %48, %39 ]
  %.lcssa12 = phi ptr [ %49, %39 ]
  %.lcssa10 = phi ptr [ %50, %39 ]
  %.lcssa8 = phi ptr [ %51, %39 ]
  %.lcssa6 = phi ptr [ %52, %39 ]
  %.lcssa4 = phi double [ %53, %39 ]
  %.lcssa2 = phi i8 [ %54, %39 ]
  %.lcssa = phi ptr [ %55, %39 ]
  %87 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %23, i32 0, i32 0
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
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load i8, ptr %14, align 1
  br label %15

15:                                               ; preds = %22, %3
  %16 = phi i8 [ %21, %22 ], [ %.promoted1, %3 ]
  %17 = phi ptr [ %23, %22 ], [ %.promoted, %3 ]
  %18 = icmp ne ptr %17, %12
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %20 = load i8, ptr %13, align 1
  %21 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %20)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %17, i8 %21)
  br label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw double, ptr %17, i32 1
  br label %15, !llvm.loop !87

24:                                               ; preds = %15
  %.lcssa2 = phi i8 [ %16, %15 ]
  %.lcssa = phi ptr [ %17, %15 ]
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %8, i32 0, i32 0
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
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %15, %17 ], [ %.promoted1, %2 ]
  %15 = phi ptr [ %19, %17 ], [ %.promoted, %2 ]
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load double, ptr %15, align 8
  store double %18, ptr %14, align 8
  %19 = getelementptr inbounds double, ptr %15, i32 -1
  br label %13, !llvm.loop !88

20:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
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
  br label %19

19:                                               ; preds = %35, %4
  %20 = phi ptr [ %38, %35 ], [ %.promoted5, %4 ]
  %21 = phi i64 [ %36, %35 ], [ %.promoted2, %4 ]
  %22 = phi ptr [ %38, %35 ], [ %.promoted, %4 ]
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %15
  %25 = sdiv exact i64 %24, 8
  %26 = icmp sgt i64 %25, 16
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %19
  %28 = icmp eq i64 %21, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %.lcssa7 = phi ptr [ %20, %27 ]
  %.lcssa1 = phi ptr [ %22, %27 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %33 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %30, ptr noundef %31, ptr noundef %32, i8 %34)
  br label %40

35:                                               ; preds = %27
  %36 = add nsw i64 %21, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %37 = load i8, ptr %17, align 1
  %38 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %16, ptr noundef %22, i8 %37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %39 = load i8, ptr %18, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %38, ptr noundef %22, i64 noundef %36, i8 %39)
  br label %19, !llvm.loop !89

.loopexit:                                        ; preds = %19
  %.lcssa6 = phi ptr [ %20, %19 ]
  %.lcssa3 = phi i64 [ %21, %19 ]
  %.lcssa = phi ptr [ %22, %19 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %40

40:                                               ; preds = %.loopexit, %29
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
  br label %18

18:                                               ; preds = %25, %4
  %19 = phi ptr [ %26, %25 ], [ %.promoted, %4 ]
  %20 = icmp ult ptr %19, %14
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef %15)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %24

24:                                               ; preds = %23, %21
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %19, i32 1
  br label %18, !llvm.loop !90

27:                                               ; preds = %18
  %.lcssa = phi ptr [ %19, %18 ]
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
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi ptr [ %18, %17 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = sdiv exact i64 %14, 8
  %16 = icmp sgt i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds double, ptr %12, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %9, ptr noundef %18, ptr noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !91

19:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
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
  store i64 0, ptr %8, align 8
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
  %17 = load i64, ptr %9, align 8
  %18 = sub nsw i64 %17, 1
  %19 = sdiv i64 %18, 2
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %24

24:                                               ; preds = %37, %5
  %25 = phi i64 [ %38, %37 ], [ %.promoted1, %5 ]
  %26 = phi i64 [ %38, %37 ], [ %.promoted, %5 ]
  %27 = icmp slt i64 %26, %19
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = add nsw i64 %26, 1
  %30 = mul nsw i64 2, %29
  %31 = getelementptr inbounds double, ptr %20, i64 %30
  %32 = sub nsw i64 %30, 1
  %33 = getelementptr inbounds double, ptr %21, i64 %32
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %31, ptr noundef %33)
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = add nsw i64 %30, -1
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i64 [ %36, %35 ], [ %30, %28 ]
  %39 = getelementptr inbounds double, ptr %22, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %23, i64 %25
  store double %40, ptr %41, align 8
  br label %24, !llvm.loop !93

42:                                               ; preds = %24
  %.lcssa2 = phi i64 [ %25, %24 ]
  %.lcssa = phi i64 [ %26, %24 ]
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

12:                                               ; preds = %29, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %29 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %30, %29 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %16, %12
  %14 = phi ptr [ %17, %16 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %13, !llvm.loop !95

18:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %19 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %21)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds double, ptr %21, i32 -1
  br label %20, !llvm.loop !96

25:                                               ; preds = %20
  %.lcssa2 = phi ptr [ %21, %20 ]
  %26 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %30 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
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
  %37 = load ptr, ptr %19, align 8
  %38 = load ptr, ptr %19, align 8
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
  br label %39

39:                                               ; preds = %85, %30
  %40 = phi ptr [ %70, %85 ], [ %.promoted29, %30 ]
  %41 = phi ptr [ %71, %85 ], [ %.promoted27, %30 ]
  %42 = phi ptr [ %72, %85 ], [ %.promoted25, %30 ]
  %43 = phi ptr [ %73, %85 ], [ %.promoted23, %30 ]
  %44 = phi ptr [ %74, %85 ], [ %.promoted21, %30 ]
  %45 = phi ptr [ %75, %85 ], [ %.promoted19, %30 ]
  %46 = phi ptr [ %76, %85 ], [ %.promoted17, %30 ]
  %47 = phi ptr [ %77, %85 ], [ %.promoted15, %30 ]
  %48 = phi ptr [ %78, %85 ], [ %.promoted13, %30 ]
  %49 = phi ptr [ %79, %85 ], [ %.promoted11, %30 ]
  %50 = phi ptr [ %80, %85 ], [ %.promoted9, %30 ]
  %51 = phi ptr [ %81, %85 ], [ %.promoted7, %30 ]
  %52 = phi ptr [ %82, %85 ], [ %.promoted5, %30 ]
  %53 = phi double [ %83, %85 ], [ %.promoted3, %30 ]
  %54 = phi i8 [ %84, %85 ], [ %.promoted1, %30 ]
  %55 = phi ptr [ %86, %85 ], [ %.promoted, %30 ]
  %56 = icmp ne ptr %55, %33
  br i1 %56, label %57, label %.loopexit

57:                                               ; preds = %39
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %55, ptr noundef %34)
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = load double, ptr %55, align 8
  %61 = getelementptr inbounds double, ptr %55, i64 1
  %62 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %37)
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %55)
  store ptr %61, ptr %14, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store double %60, ptr %38, align 8
  br label %69

66:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = load i8, ptr %35, align 1
  %68 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %67)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %55, i8 %68)
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %40, %66 ], [ %65, %59 ]
  %71 = phi ptr [ %41, %66 ], [ %14, %59 ]
  %72 = phi ptr [ %42, %66 ], [ %64, %59 ]
  %73 = phi ptr [ %43, %66 ], [ %63, %59 ]
  %74 = phi ptr [ %44, %66 ], [ %62, %59 ]
  %75 = phi ptr [ %45, %66 ], [ %64, %59 ]
  %76 = phi ptr [ %46, %66 ], [ %63, %59 ]
  %77 = phi ptr [ %47, %66 ], [ %62, %59 ]
  %78 = phi ptr [ %48, %66 ], [ %63, %59 ]
  %79 = phi ptr [ %49, %66 ], [ %62, %59 ]
  %80 = phi ptr [ %50, %66 ], [ %61, %59 ]
  %81 = phi ptr [ %51, %66 ], [ %55, %59 ]
  %82 = phi ptr [ %52, %66 ], [ %37, %59 ]
  %83 = phi double [ %53, %66 ], [ %60, %59 ]
  %84 = phi i8 [ %68, %66 ], [ %54, %59 ]
  br label %85

85:                                               ; preds = %69
  %86 = getelementptr inbounds nuw double, ptr %55, i32 1
  br label %39, !llvm.loop !98

.loopexit:                                        ; preds = %39
  %.lcssa30 = phi ptr [ %40, %39 ]
  %.lcssa28 = phi ptr [ %41, %39 ]
  %.lcssa26 = phi ptr [ %42, %39 ]
  %.lcssa24 = phi ptr [ %43, %39 ]
  %.lcssa22 = phi ptr [ %44, %39 ]
  %.lcssa20 = phi ptr [ %45, %39 ]
  %.lcssa18 = phi ptr [ %46, %39 ]
  %.lcssa16 = phi ptr [ %47, %39 ]
  %.lcssa14 = phi ptr [ %48, %39 ]
  %.lcssa12 = phi ptr [ %49, %39 ]
  %.lcssa10 = phi ptr [ %50, %39 ]
  %.lcssa8 = phi ptr [ %51, %39 ]
  %.lcssa6 = phi ptr [ %52, %39 ]
  %.lcssa4 = phi double [ %53, %39 ]
  %.lcssa2 = phi i8 [ %54, %39 ]
  %.lcssa = phi ptr [ %55, %39 ]
  %87 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %23, i32 0, i32 0
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
  %.promoted = load ptr, ptr %7, align 8
  %.promoted1 = load i8, ptr %14, align 1
  br label %15

15:                                               ; preds = %22, %3
  %16 = phi i8 [ %21, %22 ], [ %.promoted1, %3 ]
  %17 = phi ptr [ %23, %22 ], [ %.promoted, %3 ]
  %18 = icmp ne ptr %17, %12
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %20 = load i8, ptr %13, align 1
  %21 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %20)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %17, i8 %21)
  br label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw double, ptr %17, i32 1
  br label %15, !llvm.loop !99

24:                                               ; preds = %15
  %.lcssa2 = phi i8 [ %16, %15 ]
  %.lcssa = phi ptr [ %17, %15 ]
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %8, i32 0, i32 0
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
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %15, %17 ], [ %.promoted1, %2 ]
  %15 = phi ptr [ %19, %17 ], [ %.promoted, %2 ]
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load double, ptr %15, align 8
  store double %18, ptr %14, align 8
  %19 = getelementptr inbounds double, ptr %15, i32 -1
  br label %13, !llvm.loop !100

20:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
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
  br label %21

21:                                               ; preds = %37, %4
  %22 = phi ptr [ %39, %37 ], [ %.promoted5, %4 ]
  %23 = phi i64 [ %38, %37 ], [ %.promoted2, %4 ]
  %24 = phi ptr [ %39, %37 ], [ %.promoted, %4 ]
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %25, %15
  %27 = sdiv exact i64 %26, 8
  %28 = icmp sgt i64 %27, 16
  br i1 %28, label %29, label %.loopexit

29:                                               ; preds = %21
  %30 = icmp eq i64 %23, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %.lcssa7 = phi ptr [ %22, %29 ]
  %.lcssa1 = phi ptr [ %24, %29 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %.lcssa7, ptr %10, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %32, ptr noundef %33, ptr noundef %34, i8 %36)
  br label %40

37:                                               ; preds = %29
  %38 = add nsw i64 %23, -1
  %39 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %16, ptr noundef %24, i8 %18)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %39, ptr noundef %24, i64 noundef %38, i8 %20)
  br label %21, !llvm.loop !101

.loopexit:                                        ; preds = %21
  %.lcssa6 = phi ptr [ %22, %21 ]
  %.lcssa3 = phi i64 [ %23, %21 ]
  %.lcssa = phi ptr [ %24, %21 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  store ptr %.lcssa6, ptr %10, align 8
  br label %40

40:                                               ; preds = %.loopexit, %31
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
  br label %18

18:                                               ; preds = %25, %4
  %19 = phi ptr [ %26, %25 ], [ %.promoted, %4 ]
  %20 = icmp ult ptr %19, %14
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef %15)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %16, ptr noundef %17, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %24

24:                                               ; preds = %23, %21
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %19, i32 1
  br label %18, !llvm.loop !102

27:                                               ; preds = %18
  %.lcssa = phi ptr [ %19, %18 ]
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
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi ptr [ %18, %17 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = sdiv exact i64 %14, 8
  %16 = icmp sgt i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds double, ptr %12, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %9, ptr noundef %18, ptr noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !103

19:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
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
  store i64 0, ptr %8, align 8
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
  %18 = load i64, ptr %9, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %25

25:                                               ; preds = %38, %5
  %26 = phi i64 [ %39, %38 ], [ %.promoted1, %5 ]
  %27 = phi i64 [ %39, %38 ], [ %.promoted, %5 ]
  %28 = icmp slt i64 %27, %20
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = add nsw i64 %27, 1
  %31 = mul nsw i64 2, %30
  %32 = getelementptr inbounds double, ptr %21, i64 %31
  %33 = sub nsw i64 %31, 1
  %34 = getelementptr inbounds double, ptr %22, i64 %33
  %35 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %32, ptr noundef %34)
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = add nsw i64 %31, -1
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i64 [ %37, %36 ], [ %31, %29 ]
  %40 = getelementptr inbounds double, ptr %23, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %24, i64 %26
  store double %41, ptr %42, align 8
  br label %25, !llvm.loop !105

43:                                               ; preds = %25
  %.lcssa2 = phi i64 [ %26, %25 ]
  %.lcssa = phi i64 [ %27, %25 ]
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

12:                                               ; preds = %29, %4
  %.lcssa25 = phi ptr [ %.lcssa2, %29 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %30, %29 ], [ %.promoted3, %4 ]
  br label %13

13:                                               ; preds = %16, %12
  %14 = phi ptr [ %17, %16 ], [ %.lcssa4, %12 ]
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %10)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %13, !llvm.loop !107

18:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %19 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %21)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds double, ptr %21, i32 -1
  br label %20, !llvm.loop !108

25:                                               ; preds = %20
  %.lcssa2 = phi ptr [ %21, %20 ]
  %26 = icmp ult ptr %.lcssa, %.lcssa2
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  store ptr %.lcssa.lcssa, ptr %6, align 8
  store ptr %.lcssa2.lcssa, ptr %7, align 8
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.lcssa, ptr noundef %.lcssa2)
  %30 = getelementptr inbounds nuw double, ptr %.lcssa, i32 1
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
  br label %41

41:                                               ; preds = %84, %30
  %42 = phi ptr [ %70, %84 ], [ %.promoted27, %30 ]
  %43 = phi ptr [ %71, %84 ], [ %.promoted25, %30 ]
  %44 = phi ptr [ %72, %84 ], [ %.promoted23, %30 ]
  %45 = phi ptr [ %73, %84 ], [ %.promoted21, %30 ]
  %46 = phi ptr [ %74, %84 ], [ %.promoted19, %30 ]
  %47 = phi ptr [ %75, %84 ], [ %.promoted17, %30 ]
  %48 = phi ptr [ %76, %84 ], [ %.promoted15, %30 ]
  %49 = phi ptr [ %77, %84 ], [ %.promoted13, %30 ]
  %50 = phi ptr [ %78, %84 ], [ %.promoted11, %30 ]
  %51 = phi ptr [ %79, %84 ], [ %.promoted9, %30 ]
  %52 = phi ptr [ %80, %84 ], [ %.promoted7, %30 ]
  %53 = phi ptr [ %81, %84 ], [ %.promoted5, %30 ]
  %54 = phi ptr [ %82, %84 ], [ %.promoted3, %30 ]
  %55 = phi double [ %83, %84 ], [ %.promoted1, %30 ]
  %56 = phi ptr [ %85, %84 ], [ %.promoted, %30 ]
  %57 = icmp ne ptr %56, %33
  br i1 %57, label %58, label %.loopexit

58:                                               ; preds = %41
  %59 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %56, ptr noundef %34)
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  %61 = load double, ptr %56, align 8
  %62 = getelementptr inbounds double, ptr %56, i64 1
  %63 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %39)
  %64 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %56)
  store ptr %62, ptr %14, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %63, ptr noundef %64, ptr noundef %65)
  store double %61, ptr %40, align 8
  br label %69

67:                                               ; preds = %58
  %68 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %36)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %56, i8 %38)
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %42, %67 ], [ %66, %60 ]
  %71 = phi ptr [ %43, %67 ], [ %14, %60 ]
  %72 = phi ptr [ %44, %67 ], [ %65, %60 ]
  %73 = phi ptr [ %45, %67 ], [ %64, %60 ]
  %74 = phi ptr [ %46, %67 ], [ %63, %60 ]
  %75 = phi ptr [ %47, %67 ], [ %65, %60 ]
  %76 = phi ptr [ %48, %67 ], [ %64, %60 ]
  %77 = phi ptr [ %49, %67 ], [ %63, %60 ]
  %78 = phi ptr [ %50, %67 ], [ %64, %60 ]
  %79 = phi ptr [ %51, %67 ], [ %63, %60 ]
  %80 = phi ptr [ %52, %67 ], [ %62, %60 ]
  %81 = phi ptr [ %53, %67 ], [ %56, %60 ]
  %82 = phi ptr [ %54, %67 ], [ %39, %60 ]
  %83 = phi double [ %55, %67 ], [ %61, %60 ]
  br label %84

84:                                               ; preds = %69
  %85 = getelementptr inbounds nuw double, ptr %56, i32 1
  br label %41, !llvm.loop !110

.loopexit:                                        ; preds = %41
  %.lcssa28 = phi ptr [ %42, %41 ]
  %.lcssa26 = phi ptr [ %43, %41 ]
  %.lcssa24 = phi ptr [ %44, %41 ]
  %.lcssa22 = phi ptr [ %45, %41 ]
  %.lcssa20 = phi ptr [ %46, %41 ]
  %.lcssa18 = phi ptr [ %47, %41 ]
  %.lcssa16 = phi ptr [ %48, %41 ]
  %.lcssa14 = phi ptr [ %49, %41 ]
  %.lcssa12 = phi ptr [ %50, %41 ]
  %.lcssa10 = phi ptr [ %51, %41 ]
  %.lcssa8 = phi ptr [ %52, %41 ]
  %.lcssa6 = phi ptr [ %53, %41 ]
  %.lcssa4 = phi ptr [ %54, %41 ]
  %.lcssa2 = phi double [ %55, %41 ]
  %.lcssa = phi ptr [ %56, %41 ]
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
  br label %17

17:                                               ; preds = %22, %3
  %18 = phi ptr [ %23, %22 ], [ %.promoted, %3 ]
  %19 = icmp ne ptr %18, %12
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %14)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %18, i8 %16)
  br label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw double, ptr %18, i32 1
  br label %17, !llvm.loop !111

24:                                               ; preds = %17
  %.lcssa = phi ptr [ %18, %17 ]
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
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %15, %17 ], [ %.promoted1, %2 ]
  %15 = phi ptr [ %19, %17 ], [ %.promoted, %2 ]
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load double, ptr %15, align 8
  store double %18, ptr %14, align 8
  %19 = getelementptr inbounds double, ptr %15, i32 -1
  br label %13, !llvm.loop !112

20:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
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
