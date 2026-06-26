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
  %17 = mul nsw i64 %16, 16
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
  br i1 %25, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %5
  br label %26

26:                                               ; preds = %.lr.ph, %41
  %27 = load ptr, ptr @results, align 8
  %28 = load i32, ptr %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.one_result, ptr %27, i64 %29
  %31 = getelementptr inbounds nuw %struct.one_result, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 @strlen(ptr noundef %32) #15
  %34 = trunc i64 %33 to i32
  store i32 %34, ptr %16, align 4
  %35 = load i32, ptr %16, align 4
  %36 = load i32, ptr %15, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, ptr %16, align 4
  store i32 %39, ptr %15, align 4
  br label %40

40:                                               ; preds = %38, %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %11, align 4
  %44 = load i32, ptr %11, align 4
  %45 = load i32, ptr @current_test, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %26, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %41
  br label %47

47:                                               ; preds = %._crit_edge, %5
  %48 = load i32, ptr %15, align 4
  %49 = sub nsw i32 %48, 12
  %50 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %49, ptr noundef @.str.2)
  %51 = load i32, ptr %15, align 4
  %52 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %51, ptr noundef @.str.2)
  store i32 0, ptr %11, align 4
  %53 = load i32, ptr %11, align 4
  %54 = load i32, ptr @current_test, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %.lr.ph2, label %107

.lr.ph2:                                          ; preds = %47
  br label %56

56:                                               ; preds = %.lr.ph2, %101
  %57 = load i32, ptr %11, align 4
  %58 = load i32, ptr %15, align 4
  %59 = sext i32 %58 to i64
  %60 = load ptr, ptr @results, align 8
  %61 = load i32, ptr %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.one_result, ptr %60, i64 %62
  %64 = getelementptr inbounds nuw %struct.one_result, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = call i64 @strlen(ptr noundef %65) #15
  %67 = sub i64 %59, %66
  %68 = trunc i64 %67 to i32
  %69 = load ptr, ptr @results, align 8
  %70 = load i32, ptr %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.one_result, ptr %69, i64 %71
  %73 = getelementptr inbounds nuw %struct.one_result, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = load ptr, ptr @results, align 8
  %76 = load i32, ptr %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.one_result, ptr %75, i64 %77
  %79 = getelementptr inbounds nuw %struct.one_result, ptr %78, i32 0, i32 0
  %80 = load double, ptr %79, align 8
  %81 = load double, ptr %12, align 8
  %82 = load ptr, ptr @results, align 8
  %83 = load i32, ptr %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.one_result, ptr %82, i64 %84
  %86 = getelementptr inbounds nuw %struct.one_result, ptr %85, i32 0, i32 0
  %87 = load double, ptr %86, align 8
  %88 = fdiv double %81, %87
  %89 = load ptr, ptr @results, align 8
  %90 = load i32, ptr %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.one_result, ptr %89, i64 %91
  %93 = getelementptr inbounds nuw %struct.one_result, ptr %92, i32 0, i32 0
  %94 = load double, ptr %93, align 8
  %95 = load ptr, ptr @results, align 8
  %96 = getelementptr inbounds nuw %struct.one_result, ptr %95, i64 0
  %97 = getelementptr inbounds nuw %struct.one_result, ptr %96, i32 0, i32 0
  %98 = load double, ptr %97, align 8
  %99 = fdiv double %94, %98
  %100 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %57, i32 noundef %68, ptr noundef @.str.5, ptr noundef %74, double noundef %80, double noundef %88, double noundef %99)
  br label %101

101:                                              ; preds = %56
  %102 = load i32, ptr %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %11, align 4
  %104 = load i32, ptr %11, align 4
  %105 = load i32, ptr @current_test, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %56, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %101
  br label %107

107:                                              ; preds = %._crit_edge3, %47
  store i32 0, ptr %11, align 4
  %108 = load i32, ptr %11, align 4
  %109 = load i32, ptr @current_test, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %.lr.ph5, label %126

.lr.ph5:                                          ; preds = %107
  br label %111

111:                                              ; preds = %.lr.ph5, %120
  %112 = load ptr, ptr @results, align 8
  %113 = load i32, ptr %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.one_result, ptr %112, i64 %114
  %116 = getelementptr inbounds nuw %struct.one_result, ptr %115, i32 0, i32 0
  %117 = load double, ptr %116, align 8
  %118 = load double, ptr %13, align 8
  %119 = fadd double %118, %117
  store double %119, ptr %13, align 8
  br label %120

120:                                              ; preds = %111
  %121 = load i32, ptr %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %11, align 4
  %123 = load i32, ptr %11, align 4
  %124 = load i32, ptr @current_test, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %111, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %120
  br label %126

126:                                              ; preds = %._crit_edge6, %107
  %127 = load ptr, ptr %6, align 8
  %128 = load double, ptr %13, align 8
  %129 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %127, double noundef %128)
  %130 = load i32, ptr @current_test, align 4
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %169

132:                                              ; preds = %126
  %133 = load i32, ptr %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %132
  store i32 1, ptr %11, align 4
  %136 = load i32, ptr %11, align 4
  %137 = load i32, ptr @current_test, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %.lr.ph8, label %160

.lr.ph8:                                          ; preds = %135
  br label %139

139:                                              ; preds = %.lr.ph8, %154
  %140 = load ptr, ptr @results, align 8
  %141 = load i32, ptr %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.one_result, ptr %140, i64 %142
  %144 = getelementptr inbounds nuw %struct.one_result, ptr %143, i32 0, i32 0
  %145 = load double, ptr %144, align 8
  %146 = load ptr, ptr @results, align 8
  %147 = getelementptr inbounds nuw %struct.one_result, ptr %146, i64 0
  %148 = getelementptr inbounds nuw %struct.one_result, ptr %147, i32 0, i32 0
  %149 = load double, ptr %148, align 8
  %150 = fdiv double %145, %149
  %151 = call double @log(double noundef %150) #15
  %152 = load double, ptr %14, align 8
  %153 = fadd double %152, %151
  store double %153, ptr %14, align 8
  br label %154

154:                                              ; preds = %139
  %155 = load i32, ptr %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %11, align 4
  %157 = load i32, ptr %11, align 4
  %158 = load i32, ptr @current_test, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %139, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %154
  br label %160

160:                                              ; preds = %._crit_edge9, %135
  %161 = load ptr, ptr %6, align 8
  %162 = load double, ptr %14, align 8
  %163 = load i32, ptr @current_test, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sitofp i32 %164 to double
  %166 = fdiv double %162, %165
  %167 = call double @exp(double noundef %166) #15
  %168 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %161, double noundef %167)
  br label %169

169:                                              ; preds = %160, %132, %126
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
  br i1 %11, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %27
  %13 = load ptr, ptr @results, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.one_result, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.one_result, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef %18) #15
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %8, align 4
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %7, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, ptr %8, align 4
  store i32 %25, ptr %7, align 4
  br label %26

26:                                               ; preds = %24, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %5, align 4
  %30 = load i32, ptr %5, align 4
  %31 = load i32, ptr @current_test, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %12, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %27
  br label %33

33:                                               ; preds = %._crit_edge, %2
  %34 = load ptr, ptr %3, align 8
  %35 = load i32, ptr %7, align 4
  %36 = sub nsw i32 %35, 12
  %37 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %34, ptr noundef @.str.8, i32 noundef %36, ptr noundef @.str.2)
  %38 = load ptr, ptr %3, align 8
  %39 = load i32, ptr %7, align 4
  %40 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %38, ptr noundef @.str.9, i32 noundef %39, ptr noundef @.str.2)
  store i32 0, ptr %5, align 4
  %41 = load i32, ptr %5, align 4
  %42 = load i32, ptr @current_test, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %.lr.ph2, label %77

.lr.ph2:                                          ; preds = %33
  br label %44

44:                                               ; preds = %.lr.ph2, %71
  %45 = load ptr, ptr %3, align 8
  %46 = load i32, ptr %5, align 4
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load ptr, ptr @results, align 8
  %50 = load i32, ptr %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.one_result, ptr %49, i64 %51
  %53 = getelementptr inbounds nuw %struct.one_result, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = call i64 @strlen(ptr noundef %54) #15
  %56 = sub i64 %48, %55
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr @results, align 8
  %59 = load i32, ptr %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.one_result, ptr %58, i64 %60
  %62 = getelementptr inbounds nuw %struct.one_result, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr @results, align 8
  %65 = load i32, ptr %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.one_result, ptr %64, i64 %66
  %68 = getelementptr inbounds nuw %struct.one_result, ptr %67, i32 0, i32 0
  %69 = load double, ptr %68, align 8
  %70 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %45, ptr noundef @.str.10, i32 noundef %46, i32 noundef %57, ptr noundef @.str.5, ptr noundef %63, double noundef %69)
  br label %71

71:                                               ; preds = %44
  %72 = load i32, ptr %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %5, align 4
  %74 = load i32, ptr %5, align 4
  %75 = load i32, ptr @current_test, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %44, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %71
  br label %77

77:                                               ; preds = %._crit_edge3, %33
  store i32 0, ptr %5, align 4
  %78 = load i32, ptr %5, align 4
  %79 = load i32, ptr @current_test, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %.lr.ph5, label %96

.lr.ph5:                                          ; preds = %77
  br label %81

81:                                               ; preds = %.lr.ph5, %90
  %82 = load ptr, ptr @results, align 8
  %83 = load i32, ptr %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.one_result, ptr %82, i64 %84
  %86 = getelementptr inbounds nuw %struct.one_result, ptr %85, i32 0, i32 0
  %87 = load double, ptr %86, align 8
  %88 = load double, ptr %6, align 8
  %89 = fadd double %88, %87
  store double %89, ptr %6, align 8
  br label %90

90:                                               ; preds = %81
  %91 = load i32, ptr %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %5, align 4
  %93 = load i32, ptr %5, align 4
  %94 = load i32, ptr @current_test, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %81, label %._crit_edge6, !llvm.loop !14

._crit_edge6:                                     ; preds = %90
  br label %96

96:                                               ; preds = %._crit_edge6, %77
  %97 = load ptr, ptr %3, align 8
  %98 = load ptr, ptr %4, align 8
  %99 = load double, ptr %6, align 8
  %100 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %97, ptr noundef @.str.6, ptr noundef %98, double noundef %99)
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
  br i1 %17, label %18, label %72

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8
  %20 = load double, ptr %19, align 8
  store double %20, ptr %7, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %5, align 8
  store ptr %22, ptr %9, align 8
  br label %23

23:                                               ; preds = %55, %18
  br label %24

24:                                               ; preds = %24, %23
  %25 = load ptr, ptr %6, align 8
  %26 = load double, ptr %7, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  store ptr %28, ptr %9, align 8
  %29 = load double, ptr %28, align 8
  %30 = call noundef zeroext i1 %25(double noundef %26, double noundef %29)
  br i1 %30, label %24, label %31, !llvm.loop !17

31:                                               ; preds = %24
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %63

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = load double, ptr %38, align 8
  %40 = load double, ptr %7, align 8
  %41 = call noundef zeroext i1 %37(double noundef %39, double noundef %40)
  br i1 %41, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %36
  br label %42

42:                                               ; preds = %.lr.ph, %42
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds nuw double, ptr %43, i32 1
  store ptr %44, ptr %8, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load double, ptr %46, align 8
  %48 = load double, ptr %7, align 8
  %49 = call noundef zeroext i1 %45(double noundef %47, double noundef %48)
  br i1 %49, label %42, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %42
  br label %50

50:                                               ; preds = %._crit_edge, %36
  %51 = load ptr, ptr %8, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %63

55:                                               ; preds = %50
  %56 = load ptr, ptr %9, align 8
  %57 = load double, ptr %56, align 8
  store double %57, ptr %10, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = load double, ptr %58, align 8
  %60 = load ptr, ptr %9, align 8
  store double %59, ptr %60, align 8
  %61 = load double, ptr %10, align 8
  %62 = load ptr, ptr %8, align 8
  store double %61, ptr %62, align 8
  br label %23, !llvm.loop !19

63:                                               ; preds = %54, %35
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr inbounds nuw double, ptr %65, i64 1
  %67 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %64, ptr noundef %66, ptr noundef %67)
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds nuw double, ptr %68, i64 1
  %70 = load ptr, ptr %5, align 8
  %71 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %69, ptr noundef %70, ptr noundef %71)
  br label %72

72:                                               ; preds = %63, %3
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
  br i1 %17, label %18, label %72

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8
  %20 = load double, ptr %19, align 8
  store double %20, ptr %7, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %5, align 8
  store ptr %22, ptr %9, align 8
  br label %23

23:                                               ; preds = %55, %18
  br label %24

24:                                               ; preds = %24, %23
  %25 = load ptr, ptr %6, align 8
  %26 = load double, ptr %7, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  store ptr %28, ptr %9, align 8
  %29 = load double, ptr %28, align 8
  %30 = call noundef zeroext i1 %25(double noundef %26, double noundef %29)
  br i1 %30, label %24, label %31, !llvm.loop !20

31:                                               ; preds = %24
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %63

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = load double, ptr %38, align 8
  %40 = load double, ptr %7, align 8
  %41 = call noundef zeroext i1 %37(double noundef %39, double noundef %40)
  br i1 %41, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %36
  br label %42

42:                                               ; preds = %.lr.ph, %42
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds nuw double, ptr %43, i32 1
  store ptr %44, ptr %8, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load double, ptr %46, align 8
  %48 = load double, ptr %7, align 8
  %49 = call noundef zeroext i1 %45(double noundef %47, double noundef %48)
  br i1 %49, label %42, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %42
  br label %50

50:                                               ; preds = %._crit_edge, %36
  %51 = load ptr, ptr %8, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %63

55:                                               ; preds = %50
  %56 = load ptr, ptr %9, align 8
  %57 = load double, ptr %56, align 8
  store double %57, ptr %10, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = load double, ptr %58, align 8
  %60 = load ptr, ptr %9, align 8
  store double %59, ptr %60, align 8
  %61 = load double, ptr %10, align 8
  %62 = load ptr, ptr %8, align 8
  store double %61, ptr %62, align 8
  br label %23, !llvm.loop !22

63:                                               ; preds = %54, %35
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr inbounds nuw double, ptr %65, i64 1
  %67 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %64, ptr noundef %66, ptr noundef %67)
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds nuw double, ptr %68, i64 1
  %70 = load ptr, ptr %5, align 8
  %71 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %69, ptr noundef %70, ptr noundef %71)
  br label %72

72:                                               ; preds = %63, %3
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
  %22 = getelementptr inbounds nuw ptr, ptr %21, i64 1
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
  %32 = getelementptr inbounds nuw ptr, ptr %31, i64 2
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
  br i1 %49, label %.lr.ph, label %63

.lr.ph:                                           ; preds = %36
  br label %50

50:                                               ; preds = %.lr.ph, %57
  %51 = call i32 @rand()
  %52 = sitofp i32 %51 to double
  %53 = load ptr, ptr %9, align 8
  %54 = load i32, ptr %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %53, i64 %55
  store double %52, ptr %56, align 8
  br label %57

57:                                               ; preds = %50
  %58 = load i32, ptr %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %10, align 4
  %60 = load i32, ptr %10, align 4
  %61 = load i32, ptr %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %50, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %57
  br label %63

63:                                               ; preds = %._crit_edge, %36
  %64 = load i32, ptr %8, align 4
  %65 = sext i32 %64 to i64
  %66 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %65, i64 8)
  %67 = extractvalue { i64, i1 } %66, 1
  %68 = extractvalue { i64, i1 } %66, 0
  %69 = select i1 %67, i64 -1, i64 %68
  %70 = call noalias noundef nonnull ptr @_Znay(i64 noundef %69) #16
  store ptr %70, ptr %11, align 8
  store i32 0, ptr %6, align 4
  %71 = load i32, ptr %6, align 4
  %72 = load i32, ptr %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %.lr.ph3, label %96

.lr.ph3:                                          ; preds = %63
  br label %74

74:                                               ; preds = %.lr.ph3, %90
  %75 = load ptr, ptr %9, align 8
  %76 = load ptr, ptr %9, align 8
  %77 = load i32, ptr %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %76, i64 %78
  %80 = load ptr, ptr %11, align 8
  %81 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %75, ptr noundef %79, ptr noundef %80)
  %82 = load ptr, ptr %11, align 8
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  call void @qsort(ptr noundef %82, i64 noundef %84, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %85 = load ptr, ptr %11, align 8
  %86 = load ptr, ptr %11, align 8
  %87 = load i32, ptr %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %86, i64 %88
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %85, ptr noundef %89)
  br label %90

90:                                               ; preds = %74
  %91 = load i32, ptr %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %6, align 4
  %93 = load i32, ptr %6, align 4
  %94 = load i32, ptr %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %74, label %._crit_edge4, !llvm.loop !24

._crit_edge4:                                     ; preds = %90
  br label %96

96:                                               ; preds = %._crit_edge4, %63
  store i32 0, ptr %6, align 4
  %97 = load i32, ptr %6, align 4
  %98 = load i32, ptr %7, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %.lr.ph6, label %124

.lr.ph6:                                          ; preds = %96
  br label %100

100:                                              ; preds = %.lr.ph6, %118
  %101 = load ptr, ptr %9, align 8
  %102 = load ptr, ptr %9, align 8
  %103 = load i32, ptr %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, ptr %102, i64 %104
  %106 = load ptr, ptr %11, align 8
  %107 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %101, ptr noundef %105, ptr noundef %106)
  %108 = load ptr, ptr %11, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = load i32, ptr %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, ptr %109, i64 %111
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %108, ptr noundef %112, ptr noundef @_Z19less_than_function2dd)
  %113 = load ptr, ptr %11, align 8
  %114 = load ptr, ptr %11, align 8
  %115 = load i32, ptr %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, ptr %114, i64 %116
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %113, ptr noundef %117)
  br label %118

118:                                              ; preds = %100
  %119 = load i32, ptr %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %6, align 4
  %121 = load i32, ptr %6, align 4
  %122 = load i32, ptr %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %100, label %._crit_edge7, !llvm.loop !25

._crit_edge7:                                     ; preds = %118
  br label %124

124:                                              ; preds = %._crit_edge7, %96
  store i32 0, ptr %6, align 4
  %125 = load i32, ptr %6, align 4
  %126 = load i32, ptr %7, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %.lr.ph9, label %152

.lr.ph9:                                          ; preds = %124
  br label %128

128:                                              ; preds = %.lr.ph9, %146
  %129 = load ptr, ptr %9, align 8
  %130 = load ptr, ptr %9, align 8
  %131 = load i32, ptr %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, ptr %130, i64 %132
  %134 = load ptr, ptr %11, align 8
  %135 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %129, ptr noundef %133, ptr noundef %134)
  %136 = load ptr, ptr %11, align 8
  %137 = load ptr, ptr %11, align 8
  %138 = load i32, ptr %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, ptr %137, i64 %139
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %136, ptr noundef %140, ptr noundef @_Z19less_than_function2dd)
  %141 = load ptr, ptr %11, align 8
  %142 = load ptr, ptr %11, align 8
  %143 = load i32, ptr %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, ptr %142, i64 %144
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %141, ptr noundef %145)
  br label %146

146:                                              ; preds = %128
  %147 = load i32, ptr %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %6, align 4
  %149 = load i32, ptr %6, align 4
  %150 = load i32, ptr %7, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %128, label %._crit_edge10, !llvm.loop !26

._crit_edge10:                                    ; preds = %146
  br label %152

152:                                              ; preds = %._crit_edge10, %124
  store i32 0, ptr %6, align 4
  %153 = load i32, ptr %6, align 4
  %154 = load i32, ptr %7, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %.lr.ph12, label %180

.lr.ph12:                                         ; preds = %152
  br label %156

156:                                              ; preds = %.lr.ph12, %174
  %157 = load ptr, ptr %9, align 8
  %158 = load ptr, ptr %9, align 8
  %159 = load i32, ptr %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, ptr %158, i64 %160
  %162 = load ptr, ptr %11, align 8
  %163 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %157, ptr noundef %161, ptr noundef %162)
  %164 = load ptr, ptr %11, align 8
  %165 = load ptr, ptr %11, align 8
  %166 = load i32, ptr %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, ptr %165, i64 %167
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %164, ptr noundef %168)
  %169 = load ptr, ptr %11, align 8
  %170 = load ptr, ptr %11, align 8
  %171 = load i32, ptr %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, ptr %170, i64 %172
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %169, ptr noundef %173)
  br label %174

174:                                              ; preds = %156
  %175 = load i32, ptr %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %6, align 4
  %177 = load i32, ptr %6, align 4
  %178 = load i32, ptr %7, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %156, label %._crit_edge13, !llvm.loop !27

._crit_edge13:                                    ; preds = %174
  br label %180

180:                                              ; preds = %._crit_edge13, %152
  store i32 0, ptr %6, align 4
  %181 = load i32, ptr %6, align 4
  %182 = load i32, ptr %7, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %.lr.ph15, label %208

.lr.ph15:                                         ; preds = %180
  br label %184

184:                                              ; preds = %.lr.ph15, %202
  %185 = load ptr, ptr %9, align 8
  %186 = load ptr, ptr %9, align 8
  %187 = load i32, ptr %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, ptr %186, i64 %188
  %190 = load ptr, ptr %11, align 8
  %191 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %185, ptr noundef %189, ptr noundef %190)
  %192 = load ptr, ptr %11, align 8
  %193 = load ptr, ptr %11, align 8
  %194 = load i32, ptr %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, ptr %193, i64 %195
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %192, ptr noundef %196, ptr noundef @_Z19less_than_function2dd)
  %197 = load ptr, ptr %11, align 8
  %198 = load ptr, ptr %11, align 8
  %199 = load i32, ptr %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, ptr %198, i64 %200
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %197, ptr noundef %201)
  br label %202

202:                                              ; preds = %184
  %203 = load i32, ptr %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %6, align 4
  %205 = load i32, ptr %6, align 4
  %206 = load i32, ptr %7, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %184, label %._crit_edge16, !llvm.loop !28

._crit_edge16:                                    ; preds = %202
  br label %208

208:                                              ; preds = %._crit_edge16, %180
  store i32 0, ptr %6, align 4
  %209 = load i32, ptr %6, align 4
  %210 = load i32, ptr %7, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %.lr.ph18, label %238

.lr.ph18:                                         ; preds = %208
  br label %212

212:                                              ; preds = %.lr.ph18, %232
  %213 = load ptr, ptr %9, align 8
  %214 = load ptr, ptr %9, align 8
  %215 = load i32, ptr %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, ptr %214, i64 %216
  %218 = load ptr, ptr %11, align 8
  %219 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %213, ptr noundef %217, ptr noundef %218)
  %220 = load ptr, ptr %11, align 8
  %221 = load ptr, ptr %11, align 8
  %222 = load i32, ptr %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, ptr %221, i64 %223
  %225 = getelementptr inbounds nuw %struct.less_than_functor, ptr %12, i32 0, i32 0
  %226 = load i8, ptr %225, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %220, ptr noundef %224, i8 %226)
  %227 = load ptr, ptr %11, align 8
  %228 = load ptr, ptr %11, align 8
  %229 = load i32, ptr %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, ptr %228, i64 %230
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %227, ptr noundef %231)
  br label %232

232:                                              ; preds = %212
  %233 = load i32, ptr %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr %6, align 4
  %235 = load i32, ptr %6, align 4
  %236 = load i32, ptr %7, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %212, label %._crit_edge19, !llvm.loop !29

._crit_edge19:                                    ; preds = %232
  br label %238

238:                                              ; preds = %._crit_edge19, %208
  store i32 0, ptr %6, align 4
  %239 = load i32, ptr %6, align 4
  %240 = load i32, ptr %7, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %.lr.ph21, label %268

.lr.ph21:                                         ; preds = %238
  br label %242

242:                                              ; preds = %.lr.ph21, %262
  %243 = load ptr, ptr %11, align 8
  %244 = load ptr, ptr %11, align 8
  %245 = load i32, ptr %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, ptr %244, i64 %246
  %248 = getelementptr inbounds nuw %struct.less_than_functor, ptr %13, i32 0, i32 0
  %249 = load i8, ptr %248, align 1
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %243, ptr noundef %247, i8 %249)
  %250 = load ptr, ptr %11, align 8
  %251 = load ptr, ptr %11, align 8
  %252 = load i32, ptr %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, ptr %251, i64 %253
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %250, ptr noundef %254)
  %255 = load ptr, ptr %9, align 8
  %256 = load ptr, ptr %9, align 8
  %257 = load i32, ptr %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double, ptr %256, i64 %258
  %260 = load ptr, ptr %11, align 8
  %261 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %255, ptr noundef %259, ptr noundef %260)
  br label %262

262:                                              ; preds = %242
  %263 = load i32, ptr %6, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %6, align 4
  %265 = load i32, ptr %6, align 4
  %266 = load i32, ptr %7, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %242, label %._crit_edge22, !llvm.loop !30

._crit_edge22:                                    ; preds = %262
  br label %268

268:                                              ; preds = %._crit_edge22, %238
  store i32 0, ptr %6, align 4
  %269 = load i32, ptr %6, align 4
  %270 = load i32, ptr %7, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %.lr.ph24, label %298

.lr.ph24:                                         ; preds = %268
  br label %272

272:                                              ; preds = %.lr.ph24, %292
  %273 = load ptr, ptr %9, align 8
  %274 = load ptr, ptr %9, align 8
  %275 = load i32, ptr %8, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds double, ptr %274, i64 %276
  %278 = load ptr, ptr %11, align 8
  %279 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %273, ptr noundef %277, ptr noundef %278)
  %280 = load ptr, ptr %11, align 8
  %281 = load ptr, ptr %11, align 8
  %282 = load i32, ptr %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double, ptr %281, i64 %283
  %285 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %14, i32 0, i32 0
  %286 = load i8, ptr %285, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %280, ptr noundef %284, i8 %286)
  %287 = load ptr, ptr %11, align 8
  %288 = load ptr, ptr %11, align 8
  %289 = load i32, ptr %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds double, ptr %288, i64 %290
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %287, ptr noundef %291)
  br label %292

292:                                              ; preds = %272
  %293 = load i32, ptr %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, ptr %6, align 4
  %295 = load i32, ptr %6, align 4
  %296 = load i32, ptr %7, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %272, label %._crit_edge25, !llvm.loop !31

._crit_edge25:                                    ; preds = %292
  br label %298

298:                                              ; preds = %._crit_edge25, %268
  store i32 0, ptr %6, align 4
  %299 = load i32, ptr %6, align 4
  %300 = load i32, ptr %7, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %.lr.ph27, label %328

.lr.ph27:                                         ; preds = %298
  br label %302

302:                                              ; preds = %.lr.ph27, %322
  %303 = load ptr, ptr %9, align 8
  %304 = load ptr, ptr %9, align 8
  %305 = load i32, ptr %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double, ptr %304, i64 %306
  %308 = load ptr, ptr %11, align 8
  %309 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %303, ptr noundef %307, ptr noundef %308)
  %310 = load ptr, ptr %11, align 8
  %311 = load ptr, ptr %11, align 8
  %312 = load i32, ptr %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, ptr %311, i64 %313
  %315 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %15, i32 0, i32 0
  %316 = load i8, ptr %315, align 1
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %310, ptr noundef %314, i8 %316)
  %317 = load ptr, ptr %11, align 8
  %318 = load ptr, ptr %11, align 8
  %319 = load i32, ptr %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds double, ptr %318, i64 %320
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %317, ptr noundef %321)
  br label %322

322:                                              ; preds = %302
  %323 = load i32, ptr %6, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, ptr %6, align 4
  %325 = load i32, ptr %6, align 4
  %326 = load i32, ptr %7, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %302, label %._crit_edge28, !llvm.loop !32

._crit_edge28:                                    ; preds = %322
  br label %328

328:                                              ; preds = %._crit_edge28, %298
  store i32 0, ptr %6, align 4
  %329 = load i32, ptr %6, align 4
  %330 = load i32, ptr %7, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %.lr.ph30, label %358

.lr.ph30:                                         ; preds = %328
  br label %332

332:                                              ; preds = %.lr.ph30, %352
  %333 = load ptr, ptr %9, align 8
  %334 = load ptr, ptr %9, align 8
  %335 = load i32, ptr %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, ptr %334, i64 %336
  %338 = load ptr, ptr %11, align 8
  %339 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %333, ptr noundef %337, ptr noundef %338)
  %340 = load ptr, ptr %11, align 8
  %341 = load ptr, ptr %11, align 8
  %342 = load i32, ptr %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double, ptr %341, i64 %343
  %345 = getelementptr inbounds nuw %"struct.std::less", ptr %16, i32 0, i32 0
  %346 = load i8, ptr %345, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %340, ptr noundef %344, i8 %346)
  %347 = load ptr, ptr %11, align 8
  %348 = load ptr, ptr %11, align 8
  %349 = load i32, ptr %8, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double, ptr %348, i64 %350
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %347, ptr noundef %351)
  br label %352

352:                                              ; preds = %332
  %353 = load i32, ptr %6, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %6, align 4
  %355 = load i32, ptr %6, align 4
  %356 = load i32, ptr %7, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %332, label %._crit_edge31, !llvm.loop !33

._crit_edge31:                                    ; preds = %352
  br label %358

358:                                              ; preds = %._crit_edge31, %328
  store i32 0, ptr %6, align 4
  %359 = load i32, ptr %6, align 4
  %360 = load i32, ptr %7, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %.lr.ph33, label %388

.lr.ph33:                                         ; preds = %358
  br label %362

362:                                              ; preds = %.lr.ph33, %382
  %363 = load ptr, ptr %9, align 8
  %364 = load ptr, ptr %9, align 8
  %365 = load i32, ptr %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, ptr %364, i64 %366
  %368 = load ptr, ptr %11, align 8
  %369 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %363, ptr noundef %367, ptr noundef %368)
  %370 = load ptr, ptr %11, align 8
  %371 = load ptr, ptr %11, align 8
  %372 = load i32, ptr %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds double, ptr %371, i64 %373
  %375 = getelementptr inbounds nuw %"struct.std::less", ptr %17, i32 0, i32 0
  %376 = load i8, ptr %375, align 1
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %370, ptr noundef %374, i8 %376)
  %377 = load ptr, ptr %11, align 8
  %378 = load ptr, ptr %11, align 8
  %379 = load i32, ptr %8, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double, ptr %378, i64 %380
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %377, ptr noundef %381)
  br label %382

382:                                              ; preds = %362
  %383 = load i32, ptr %6, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, ptr %6, align 4
  %385 = load i32, ptr %6, align 4
  %386 = load i32, ptr %7, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %362, label %._crit_edge34, !llvm.loop !34

._crit_edge34:                                    ; preds = %382
  br label %388

388:                                              ; preds = %._crit_edge34, %358
  store i32 0, ptr %6, align 4
  %389 = load i32, ptr %6, align 4
  %390 = load i32, ptr %7, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %.lr.ph36, label %416

.lr.ph36:                                         ; preds = %388
  br label %392

392:                                              ; preds = %.lr.ph36, %410
  %393 = load ptr, ptr %9, align 8
  %394 = load ptr, ptr %9, align 8
  %395 = load i32, ptr %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, ptr %394, i64 %396
  %398 = load ptr, ptr %11, align 8
  %399 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %393, ptr noundef %397, ptr noundef %398)
  %400 = load ptr, ptr %11, align 8
  %401 = load ptr, ptr %11, align 8
  %402 = load i32, ptr %8, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, ptr %401, i64 %403
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %400, ptr noundef %404)
  %405 = load ptr, ptr %11, align 8
  %406 = load ptr, ptr %11, align 8
  %407 = load i32, ptr %8, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds double, ptr %406, i64 %408
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %405, ptr noundef %409)
  br label %410

410:                                              ; preds = %392
  %411 = load i32, ptr %6, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %6, align 4
  %413 = load i32, ptr %6, align 4
  %414 = load i32, ptr %7, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %392, label %._crit_edge37, !llvm.loop !35

._crit_edge37:                                    ; preds = %410
  br label %416

416:                                              ; preds = %._crit_edge37, %388
  store i32 0, ptr %6, align 4
  %417 = load i32, ptr %6, align 4
  %418 = load i32, ptr %7, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %.lr.ph39, label %444

.lr.ph39:                                         ; preds = %416
  br label %420

420:                                              ; preds = %.lr.ph39, %438
  %421 = load ptr, ptr %9, align 8
  %422 = load ptr, ptr %9, align 8
  %423 = load i32, ptr %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds double, ptr %422, i64 %424
  %426 = load ptr, ptr %11, align 8
  %427 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %421, ptr noundef %425, ptr noundef %426)
  %428 = load ptr, ptr %11, align 8
  %429 = load ptr, ptr %11, align 8
  %430 = load i32, ptr %8, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds double, ptr %429, i64 %431
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %428, ptr noundef %432)
  %433 = load ptr, ptr %11, align 8
  %434 = load ptr, ptr %11, align 8
  %435 = load i32, ptr %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds double, ptr %434, i64 %436
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %433, ptr noundef %437)
  br label %438

438:                                              ; preds = %420
  %439 = load i32, ptr %6, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, ptr %6, align 4
  %441 = load i32, ptr %6, align 4
  %442 = load i32, ptr %7, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %420, label %._crit_edge40, !llvm.loop !36

._crit_edge40:                                    ; preds = %438
  br label %444

444:                                              ; preds = %._crit_edge40, %416
  %445 = load ptr, ptr %11, align 8
  %446 = icmp eq ptr %445, null
  br i1 %446, label %448, label %447

447:                                              ; preds = %444
  call void @_ZdaPv(ptr noundef %445) #17
  br label %448

448:                                              ; preds = %447, %444
  %449 = load ptr, ptr %9, align 8
  %450 = icmp eq ptr %449, null
  br i1 %450, label %452, label %451

451:                                              ; preds = %448
  call void @_ZdaPv(ptr noundef %449) #17
  br label %452

452:                                              ; preds = %451, %448
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
  br label %16

12:                                               ; preds = %16
  %13 = load ptr, ptr %3, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = icmp ne ptr %13, %14
  br i1 %15, label %16, label %..loopexit_crit_edge, !llvm.loop !37

16:                                               ; preds = %.lr.ph, %12
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw double, ptr %17, i32 1
  store ptr %18, ptr %3, align 8
  %19 = load double, ptr %17, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw double, ptr %20, i32 1
  store ptr %21, ptr %5, align 8
  %22 = load double, ptr %20, align 8
  %23 = fcmp olt double %19, %22
  br i1 %23, label %24, label %12

24:                                               ; preds = %16
  %25 = load i32, ptr @current_test, align 4
  %26 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %25)
  br label %27

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  br label %27

27:                                               ; preds = %.loopexit, %24
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
  br i1 %15, label %16, label %65

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = load double, ptr %17, align 8
  store double %18, ptr %5, align 8
  %19 = load ptr, ptr %3, align 8
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %4, align 8
  store ptr %20, ptr %7, align 8
  br label %21

21:                                               ; preds = %50, %16
  br label %22

22:                                               ; preds = %22, %21
  %23 = load double, ptr %5, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds double, ptr %24, i32 -1
  store ptr %25, ptr %7, align 8
  %26 = load double, ptr %25, align 8
  %27 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %23, double noundef %26)
  br i1 %27, label %22, label %28, !llvm.loop !38

28:                                               ; preds = %22
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %58

33:                                               ; preds = %28
  %34 = load ptr, ptr %6, align 8
  %35 = load double, ptr %34, align 8
  %36 = load double, ptr %5, align 8
  %37 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %35, double noundef %36)
  br i1 %37, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %33
  br label %38

38:                                               ; preds = %.lr.ph, %38
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds nuw double, ptr %39, i32 1
  store ptr %40, ptr %6, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load double, ptr %41, align 8
  %43 = load double, ptr %5, align 8
  %44 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %42, double noundef %43)
  br i1 %44, label %38, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %38
  br label %45

45:                                               ; preds = %._crit_edge, %33
  %46 = load ptr, ptr %6, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %58

50:                                               ; preds = %45
  %51 = load ptr, ptr %7, align 8
  %52 = load double, ptr %51, align 8
  store double %52, ptr %8, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = load double, ptr %53, align 8
  %55 = load ptr, ptr %7, align 8
  store double %54, ptr %55, align 8
  %56 = load double, ptr %8, align 8
  %57 = load ptr, ptr %6, align 8
  store double %56, ptr %57, align 8
  br label %21, !llvm.loop !40

58:                                               ; preds = %49, %32
  %59 = load ptr, ptr %3, align 8
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds nuw double, ptr %60, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %59, ptr noundef %61, ptr noundef @_Z19less_than_function2dd)
  %62 = load ptr, ptr %7, align 8
  %63 = getelementptr inbounds nuw double, ptr %62, i64 1
  %64 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %63, ptr noundef %64, ptr noundef @_Z19less_than_function2dd)
  br label %65

65:                                               ; preds = %58, %2
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
  br i1 %20, label %21, label %68

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %49, %21
  br label %27

27:                                               ; preds = %27, %26
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  store ptr %29, ptr %9, align 8
  %30 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %27, label %31, !llvm.loop !41

31:                                               ; preds = %27
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %57

36:                                               ; preds = %31
  %37 = load ptr, ptr %8, align 8
  %38 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %38, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %36
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds nuw double, ptr %40, i32 1
  store ptr %41, ptr %8, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %43, label %39, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %39
  br label %44

44:                                               ; preds = %._crit_edge, %36
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = icmp ult ptr %45, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %57

49:                                               ; preds = %44
  %50 = load ptr, ptr %9, align 8
  %51 = load double, ptr %50, align 8
  store double %51, ptr %10, align 8
  %52 = load ptr, ptr %8, align 8
  %53 = load double, ptr %52, align 8
  %54 = load ptr, ptr %9, align 8
  store double %53, ptr %54, align 8
  %55 = load double, ptr %10, align 8
  %56 = load ptr, ptr %8, align 8
  store double %55, ptr %56, align 8
  br label %26, !llvm.loop !43

57:                                               ; preds = %48, %35
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds nuw double, ptr %59, i64 1
  %61 = getelementptr inbounds nuw %struct.less_than_functor, ptr %11, i32 0, i32 0
  %62 = load i8, ptr %61, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %58, ptr noundef %60, i8 %62)
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds nuw double, ptr %63, i64 1
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds nuw %struct.less_than_functor, ptr %12, i32 0, i32 0
  %67 = load i8, ptr %66, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %64, ptr noundef %65, i8 %67)
  br label %68

68:                                               ; preds = %57, %3
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
  br i1 %20, label %21, label %68

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %49, %21
  br label %27

27:                                               ; preds = %27, %26
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  store ptr %29, ptr %9, align 8
  %30 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %27, label %31, !llvm.loop !44

31:                                               ; preds = %27
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %57

36:                                               ; preds = %31
  %37 = load ptr, ptr %8, align 8
  %38 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %38, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %36
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds nuw double, ptr %40, i32 1
  store ptr %41, ptr %8, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %43, label %39, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %39
  br label %44

44:                                               ; preds = %._crit_edge, %36
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = icmp ult ptr %45, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %57

49:                                               ; preds = %44
  %50 = load ptr, ptr %9, align 8
  %51 = load double, ptr %50, align 8
  store double %51, ptr %10, align 8
  %52 = load ptr, ptr %8, align 8
  %53 = load double, ptr %52, align 8
  %54 = load ptr, ptr %9, align 8
  store double %53, ptr %54, align 8
  %55 = load double, ptr %10, align 8
  %56 = load ptr, ptr %8, align 8
  store double %55, ptr %56, align 8
  br label %26, !llvm.loop !46

57:                                               ; preds = %48, %35
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds nuw double, ptr %59, i64 1
  %61 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %11, i32 0, i32 0
  %62 = load i8, ptr %61, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %58, ptr noundef %60, i8 %62)
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds nuw double, ptr %63, i64 1
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %12, i32 0, i32 0
  %67 = load i8, ptr %66, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %64, ptr noundef %65, i8 %67)
  br label %68

68:                                               ; preds = %57, %3
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
  br i1 %20, label %21, label %68

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %49, %21
  br label %27

27:                                               ; preds = %27, %26
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  store ptr %29, ptr %9, align 8
  %30 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %27, label %31, !llvm.loop !47

31:                                               ; preds = %27
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %57

36:                                               ; preds = %31
  %37 = load ptr, ptr %8, align 8
  %38 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %38, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %36
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds nuw double, ptr %40, i32 1
  store ptr %41, ptr %8, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %43, label %39, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %39
  br label %44

44:                                               ; preds = %._crit_edge, %36
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = icmp ult ptr %45, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %57

49:                                               ; preds = %44
  %50 = load ptr, ptr %9, align 8
  %51 = load double, ptr %50, align 8
  store double %51, ptr %10, align 8
  %52 = load ptr, ptr %8, align 8
  %53 = load double, ptr %52, align 8
  %54 = load ptr, ptr %9, align 8
  store double %53, ptr %54, align 8
  %55 = load double, ptr %10, align 8
  %56 = load ptr, ptr %8, align 8
  store double %55, ptr %56, align 8
  br label %26, !llvm.loop !49

57:                                               ; preds = %48, %35
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds nuw double, ptr %59, i64 1
  %61 = getelementptr inbounds nuw %"struct.std::less", ptr %11, i32 0, i32 0
  %62 = load i8, ptr %61, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %58, ptr noundef %60, i8 %62)
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds nuw double, ptr %63, i64 1
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds nuw %"struct.std::less", ptr %12, i32 0, i32 0
  %67 = load i8, ptr %66, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %64, ptr noundef %65, i8 %67)
  br label %68

68:                                               ; preds = %57, %3
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
  br i1 %15, label %16, label %65

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = load double, ptr %17, align 8
  store double %18, ptr %5, align 8
  %19 = load ptr, ptr %3, align 8
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %4, align 8
  store ptr %20, ptr %7, align 8
  br label %21

21:                                               ; preds = %50, %16
  br label %22

22:                                               ; preds = %22, %21
  %23 = load double, ptr %5, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds double, ptr %24, i32 -1
  store ptr %25, ptr %7, align 8
  %26 = load double, ptr %25, align 8
  %27 = fcmp olt double %23, %26
  br i1 %27, label %22, label %28, !llvm.loop !50

28:                                               ; preds = %22
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %58

33:                                               ; preds = %28
  %34 = load ptr, ptr %6, align 8
  %35 = load double, ptr %34, align 8
  %36 = load double, ptr %5, align 8
  %37 = fcmp olt double %35, %36
  br i1 %37, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %33
  br label %38

38:                                               ; preds = %.lr.ph, %38
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds nuw double, ptr %39, i32 1
  store ptr %40, ptr %6, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load double, ptr %41, align 8
  %43 = load double, ptr %5, align 8
  %44 = fcmp olt double %42, %43
  br i1 %44, label %38, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %38
  br label %45

45:                                               ; preds = %._crit_edge, %33
  %46 = load ptr, ptr %6, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %58

50:                                               ; preds = %45
  %51 = load ptr, ptr %7, align 8
  %52 = load double, ptr %51, align 8
  store double %52, ptr %8, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = load double, ptr %53, align 8
  %55 = load ptr, ptr %7, align 8
  store double %54, ptr %55, align 8
  %56 = load double, ptr %8, align 8
  %57 = load ptr, ptr %6, align 8
  store double %56, ptr %57, align 8
  br label %21, !llvm.loop !52

58:                                               ; preds = %49, %32
  %59 = load ptr, ptr %3, align 8
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds nuw double, ptr %60, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %59, ptr noundef %61)
  %62 = load ptr, ptr %7, align 8
  %63 = getelementptr inbounds nuw double, ptr %62, i64 1
  %64 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %63, ptr noundef %64)
  br label %65

65:                                               ; preds = %58, %2
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
  br label %22

22:                                               ; preds = %.lr.ph, %32
  %23 = load i64, ptr %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %29 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %26, ptr noundef %27, ptr noundef %28, i64 %31)
  br label %55

32:                                               ; preds = %22
  %33 = load i64, ptr %8, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, ptr %8, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %37 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %11, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = ptrtoint ptr %38 to i64
  %40 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %35, ptr noundef %36, i64 %39)
  store ptr %40, ptr %10, align 8
  %41 = load ptr, ptr %10, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = load i64, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %44 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %12, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %41, ptr noundef %42, i64 noundef %43, i64 %46)
  %47 = load ptr, ptr %10, align 8
  store ptr %47, ptr %7, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = icmp sgt i64 %53, 16
  br i1 %54, label %22, label %..loopexit_crit_edge, !llvm.loop !53

..loopexit_crit_edge:                             ; preds = %32
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %55

55:                                               ; preds = %.loopexit, %25
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
  %22 = getelementptr inbounds nuw double, ptr %21, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %24 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %20, ptr noundef %22, i64 %25)
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds nuw double, ptr %26, i64 16
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
  %23 = getelementptr inbounds nuw double, ptr %22, i64 1
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds double, ptr %25, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %27 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %8, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %28 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %21, ptr noundef %23, ptr noundef %24, ptr noundef %26, i64 %29)
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds nuw double, ptr %30, i64 1
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
  br i1 %17, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %4
  br label %18

18:                                               ; preds = %.lr.ph, %27
  %19 = load ptr, ptr %9, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %19, ptr noundef %20)
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds nuw double, ptr %28, i32 1
  store ptr %29, ptr %9, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = load ptr, ptr %8, align 8
  %32 = icmp ult ptr %30, %31
  br i1 %32, label %18, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %27
  br label %33

33:                                               ; preds = %._crit_edge, %4
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
  br i1 %13, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %14
  br label %28

28:                                               ; preds = %._crit_edge, %3
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
  br label %48

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
  br label %29

29:                                               ; preds = %45, %19
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds double, ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  store double %33, ptr %9, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load i64, ptr %8, align 8
  %36 = load i64, ptr %7, align 8
  %37 = load double, ptr %9, align 8
  %38 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %38, i64 8, i1 false)
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %10, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %40 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %34, i64 noundef %35, i64 noundef %36, double noundef %37, i64 %41)
  %42 = load i64, ptr %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %48

45:                                               ; preds = %29
  %46 = load i64, ptr %8, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, ptr %8, align 8
  br label %29, !llvm.loop !56

48:                                               ; preds = %44, %18
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
  br i1 %22, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %5
  br label %23

23:                                               ; preds = %.lr.ph, %38
  %24 = load i64, ptr %12, align 8
  %25 = add nsw i64 %24, 1
  %26 = mul nsw i64 2, %25
  store i64 %26, ptr %12, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i64, ptr %12, align 8
  %29 = getelementptr inbounds double, ptr %27, i64 %28
  %30 = load ptr, ptr %7, align 8
  %31 = load i64, ptr %12, align 8
  %32 = sub nsw i64 %31, 1
  %33 = getelementptr inbounds double, ptr %30, i64 %32
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %29, ptr noundef %33)
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i64, ptr %12, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, ptr %12, align 8
  br label %38

38:                                               ; preds = %35, %23
  %39 = load ptr, ptr %7, align 8
  %40 = load i64, ptr %12, align 8
  %41 = getelementptr inbounds double, ptr %39, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = load i64, ptr %8, align 8
  %45 = getelementptr inbounds double, ptr %43, i64 %44
  store double %42, ptr %45, align 8
  %46 = load i64, ptr %12, align 8
  store i64 %46, ptr %8, align 8
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %9, align 8
  %49 = sub nsw i64 %48, 1
  %50 = sdiv i64 %49, 2
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %23, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %38
  br label %52

52:                                               ; preds = %._crit_edge, %5
  %53 = load i64, ptr %9, align 8
  %54 = and i64 %53, 1
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i64, ptr %12, align 8
  %58 = load i64, ptr %9, align 8
  %59 = sub nsw i64 %58, 2
  %60 = sdiv i64 %59, 2
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i64, ptr %12, align 8
  %64 = add nsw i64 %63, 1
  %65 = mul nsw i64 2, %64
  store i64 %65, ptr %12, align 8
  %66 = load ptr, ptr %7, align 8
  %67 = load i64, ptr %12, align 8
  %68 = sub nsw i64 %67, 1
  %69 = getelementptr inbounds double, ptr %66, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %8, align 8
  %73 = getelementptr inbounds double, ptr %71, i64 %72
  store double %70, ptr %73, align 8
  %74 = load i64, ptr %12, align 8
  %75 = sub nsw i64 %74, 1
  store i64 %75, ptr %8, align 8
  br label %76

76:                                               ; preds = %62, %56, %52
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %77 = load ptr, ptr %7, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load i64, ptr %11, align 8
  %80 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %77, i64 noundef %78, i64 noundef %79, double noundef %80, ptr noundef nonnull align 8 dereferenceable(8) %13)
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
  br label %15

15:                                               ; preds = %27, %5
  %16 = load i64, ptr %7, align 8
  %17 = load i64, ptr %8, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !nonnull !15, !align !16
  %21 = load ptr, ptr %6, align 8
  %22 = load i64, ptr %11, align 8
  %23 = getelementptr inbounds double, ptr %21, i64 %22
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %11, align 8
  %30 = getelementptr inbounds double, ptr %28, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  %35 = load i64, ptr %11, align 8
  store i64 %35, ptr %7, align 8
  %36 = load i64, ptr %7, align 8
  %37 = sub nsw i64 %36, 1
  %38 = sdiv i64 %37, 2
  store i64 %38, ptr %11, align 8
  br label %15, !llvm.loop !58

39:                                               ; preds = %25
  %40 = load double, ptr %9, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  store double %40, ptr %43, align 8
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

11:                                               ; preds = %39, %4
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %11
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw double, ptr %16, i32 1
  store ptr %17, ptr %6, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %18, ptr noundef %19)
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %15
  br label %21

21:                                               ; preds = %._crit_edge, %11
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %24, ptr noundef %25)
  br i1 %26, label %.lr.ph2, label %33

.lr.ph2:                                          ; preds = %21
  br label %27

27:                                               ; preds = %.lr.ph2, %27
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds double, ptr %28, i32 -1
  store ptr %29, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %30, ptr noundef %31)
  br i1 %32, label %27, label %._crit_edge3, !llvm.loop !60

._crit_edge3:                                     ; preds = %27
  br label %33

33:                                               ; preds = %._crit_edge3, %21
  %34 = load ptr, ptr %6, align 8
  %35 = load ptr, ptr %7, align 8
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %6, align 8
  ret ptr %38

39:                                               ; preds = %33
  %40 = load ptr, ptr %6, align 8
  %41 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %40, ptr noundef %41)
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds nuw double, ptr %42, i32 1
  store ptr %43, ptr %6, align 8
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
  %6 = trunc nuw nsw i64 %5 to i32
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
  br label %84

31:                                               ; preds = %3
  %32 = load ptr, ptr %19, align 8
  %33 = getelementptr inbounds nuw double, ptr %32, i64 1
  store ptr %33, ptr %21, align 8
  %34 = load ptr, ptr %21, align 8
  %35 = load ptr, ptr %20, align 8
  %36 = icmp ne ptr %34, %35
  br i1 %36, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %31
  br label %37

37:                                               ; preds = %.lr.ph, %78
  %38 = load ptr, ptr %21, align 8
  %39 = load ptr, ptr %19, align 8
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %38, ptr noundef %39)
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load ptr, ptr %21, align 8
  %43 = load double, ptr %42, align 8
  store double %43, ptr %22, align 8
  %44 = load ptr, ptr %19, align 8
  %45 = load ptr, ptr %21, align 8
  %46 = load ptr, ptr %21, align 8
  %47 = getelementptr inbounds nuw double, ptr %46, i64 1
  store ptr %44, ptr %15, align 8
  store ptr %45, ptr %16, align 8
  store ptr %47, ptr %17, align 8
  %48 = load ptr, ptr %15, align 8
  %49 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %48)
  %50 = load ptr, ptr %16, align 8
  %51 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %50)
  %52 = load ptr, ptr %17, align 8
  store ptr %49, ptr %12, align 8
  store ptr %51, ptr %13, align 8
  store ptr %52, ptr %14, align 8
  %53 = load ptr, ptr %12, align 8
  store ptr %53, ptr %7, align 8
  %54 = load ptr, ptr %7, align 8
  %55 = load ptr, ptr %13, align 8
  store ptr %55, ptr %8, align 8
  %56 = load ptr, ptr %8, align 8
  %57 = load ptr, ptr %14, align 8
  store ptr %57, ptr %9, align 8
  %58 = load ptr, ptr %9, align 8
  store ptr %54, ptr %4, align 8
  store ptr %56, ptr %5, align 8
  store ptr %58, ptr %6, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = load ptr, ptr %5, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  store ptr %14, ptr %10, align 8
  store ptr %62, ptr %11, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = load double, ptr %22, align 8
  %65 = load ptr, ptr %19, align 8
  store double %64, ptr %65, align 8
  br label %77

66:                                               ; preds = %37
  %67 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %18, i64 8, i1 false)
  %68 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %24, i32 0, i32 0
  %69 = load ptr, ptr %68, align 8
  %70 = ptrtoint ptr %69 to i64
  %71 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %70)
  %72 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %23, i32 0, i32 0
  %73 = inttoptr i64 %71 to ptr
  store ptr %73, ptr %72, align 8
  %74 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %23, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %67, i64 %76)
  br label %77

77:                                               ; preds = %66, %41
  br label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %21, align 8
  %80 = getelementptr inbounds nuw double, ptr %79, i32 1
  store ptr %80, ptr %21, align 8
  %81 = load ptr, ptr %21, align 8
  %82 = load ptr, ptr %20, align 8
  %83 = icmp ne ptr %81, %82
  br i1 %83, label %37, label %..loopexit_crit_edge, !llvm.loop !62

..loopexit_crit_edge:                             ; preds = %78
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %31
  br label %84

84:                                               ; preds = %.loopexit, %30
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
  br i1 %15, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %3
  br label %16

16:                                               ; preds = %.lr.ph, %27
  %17 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %9, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %20)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %8, i32 0, i32 0
  %23 = inttoptr i64 %21 to ptr
  store ptr %23, ptr %22, align 8
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %8, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %25 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %17, i64 %26)
  br label %27

27:                                               ; preds = %16
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds nuw double, ptr %28, i32 1
  store ptr %29, ptr %7, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = icmp ne ptr %30, %31
  br i1 %32, label %16, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %27
  br label %33

33:                                               ; preds = %._crit_edge, %3
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
  br i1 %15, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %2
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %17 = load ptr, ptr %6, align 8
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %4, align 8
  store double %18, ptr %19, align 8
  %20 = load ptr, ptr %6, align 8
  store ptr %20, ptr %4, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %6, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %23)
  br i1 %24, label %16, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %16
  br label %25

25:                                               ; preds = %._crit_edge, %2
  %26 = load double, ptr %5, align 8
  %27 = load ptr, ptr %4, align 8
  store double %26, ptr %27, align 8
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
  br label %21

21:                                               ; preds = %.lr.ph, %30
  %22 = load i64, ptr %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %25, ptr noundef %26, ptr noundef %27, i8 %29)
  br label %51

30:                                               ; preds = %21
  %31 = load i64, ptr %8, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr %8, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %11, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  %37 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %33, ptr noundef %34, i8 %36)
  store ptr %37, ptr %10, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = load i64, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %41 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %12, i32 0, i32 0
  %42 = load i8, ptr %41, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %38, ptr noundef %39, i64 noundef %40, i8 %42)
  %43 = load ptr, ptr %10, align 8
  store ptr %43, ptr %7, align 8
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = icmp sgt i64 %49, 16
  br i1 %50, label %21, label %..loopexit_crit_edge, !llvm.loop !65

..loopexit_crit_edge:                             ; preds = %30
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %51

51:                                               ; preds = %.loopexit, %24
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
  %21 = getelementptr inbounds nuw double, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw double, ptr %24, i64 16
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
  %22 = getelementptr inbounds nuw double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds nuw double, ptr %28, i64 1
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
  br i1 %16, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %4
  br label %17

17:                                               ; preds = %.lr.ph, %26
  %18 = load ptr, ptr %9, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %18, ptr noundef %19)
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds nuw double, ptr %27, i32 1
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %17, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge, %4
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
  br i1 %13, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8, !nonnull !15
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %14
  br label %28

28:                                               ; preds = %._crit_edge, %3
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
  br label %47

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
  br label %29

29:                                               ; preds = %44, %19
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds double, ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  store double %33, ptr %9, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load i64, ptr %8, align 8
  %36 = load i64, ptr %7, align 8
  %37 = load double, ptr %9, align 8
  %38 = load ptr, ptr %6, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %38, i64 1, i1 false)
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %10, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %34, i64 noundef %35, i64 noundef %36, double noundef %37, i8 %40)
  %41 = load i64, ptr %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %47

44:                                               ; preds = %29
  %45 = load i64, ptr %8, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, ptr %8, align 8
  br label %29, !llvm.loop !68

47:                                               ; preds = %43, %18
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
  br i1 %21, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %5
  br label %22

22:                                               ; preds = %.lr.ph, %37
  %23 = load i64, ptr %12, align 8
  %24 = add nsw i64 %23, 1
  %25 = mul nsw i64 2, %24
  store i64 %25, ptr %12, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load i64, ptr %12, align 8
  %28 = getelementptr inbounds double, ptr %26, i64 %27
  %29 = load ptr, ptr %7, align 8
  %30 = load i64, ptr %12, align 8
  %31 = sub nsw i64 %30, 1
  %32 = getelementptr inbounds double, ptr %29, i64 %31
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %28, ptr noundef %32)
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i64, ptr %12, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, ptr %12, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %7, align 8
  %39 = load i64, ptr %12, align 8
  %40 = getelementptr inbounds double, ptr %38, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = load i64, ptr %8, align 8
  %44 = getelementptr inbounds double, ptr %42, i64 %43
  store double %41, ptr %44, align 8
  %45 = load i64, ptr %12, align 8
  store i64 %45, ptr %8, align 8
  %46 = load i64, ptr %12, align 8
  %47 = load i64, ptr %9, align 8
  %48 = sub nsw i64 %47, 1
  %49 = sdiv i64 %48, 2
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %22, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %37
  br label %51

51:                                               ; preds = %._crit_edge, %5
  %52 = load i64, ptr %9, align 8
  %53 = and i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i64, ptr %12, align 8
  %57 = load i64, ptr %9, align 8
  %58 = sub nsw i64 %57, 2
  %59 = sdiv i64 %58, 2
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i64, ptr %12, align 8
  %63 = add nsw i64 %62, 1
  %64 = mul nsw i64 2, %63
  store i64 %64, ptr %12, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = load i64, ptr %12, align 8
  %67 = sub nsw i64 %66, 1
  %68 = getelementptr inbounds double, ptr %65, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = load ptr, ptr %7, align 8
  %71 = load i64, ptr %8, align 8
  %72 = getelementptr inbounds double, ptr %70, i64 %71
  store double %69, ptr %72, align 8
  %73 = load i64, ptr %12, align 8
  %74 = sub nsw i64 %73, 1
  store i64 %74, ptr %8, align 8
  br label %75

75:                                               ; preds = %61, %55, %51
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %76 = load ptr, ptr %7, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load i64, ptr %11, align 8
  %79 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %76, i64 noundef %77, i64 noundef %78, double noundef %79, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %15

15:                                               ; preds = %27, %5
  %16 = load i64, ptr %7, align 8
  %17 = load i64, ptr %8, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !nonnull !15
  %21 = load ptr, ptr %6, align 8
  %22 = load i64, ptr %11, align 8
  %23 = getelementptr inbounds double, ptr %21, i64 %22
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %11, align 8
  %30 = getelementptr inbounds double, ptr %28, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  %35 = load i64, ptr %11, align 8
  store i64 %35, ptr %7, align 8
  %36 = load i64, ptr %7, align 8
  %37 = sub nsw i64 %36, 1
  %38 = sdiv i64 %37, 2
  store i64 %38, ptr %11, align 8
  br label %15, !llvm.loop !70

39:                                               ; preds = %25
  %40 = load double, ptr %9, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  store double %40, ptr %43, align 8
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

10:                                               ; preds = %38, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %10
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw double, ptr %15, i32 1
  store ptr %16, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %14
  br label %20

20:                                               ; preds = %._crit_edge, %10
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %23, ptr noundef %24)
  br i1 %25, label %.lr.ph2, label %32

.lr.ph2:                                          ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  store ptr %28, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %29, ptr noundef %30)
  br i1 %31, label %26, label %._crit_edge3, !llvm.loop !72

._crit_edge3:                                     ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge3, %20
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8
  ret ptr %37

38:                                               ; preds = %32
  %39 = load ptr, ptr %6, align 8
  %40 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds nuw double, ptr %41, i32 1
  store ptr %42, ptr %6, align 8
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
  br label %80

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds nuw double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %36

36:                                               ; preds = %.lr.ph, %74
  %37 = load ptr, ptr %21, align 8
  %38 = load ptr, ptr %19, align 8
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load ptr, ptr %21, align 8
  %42 = load double, ptr %41, align 8
  store double %42, ptr %22, align 8
  %43 = load ptr, ptr %19, align 8
  %44 = load ptr, ptr %21, align 8
  %45 = load ptr, ptr %21, align 8
  %46 = getelementptr inbounds nuw double, ptr %45, i64 1
  store ptr %43, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  store ptr %46, ptr %17, align 8
  %47 = load ptr, ptr %15, align 8
  %48 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %47)
  %49 = load ptr, ptr %16, align 8
  %50 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %49)
  %51 = load ptr, ptr %17, align 8
  store ptr %48, ptr %12, align 8
  store ptr %50, ptr %13, align 8
  store ptr %51, ptr %14, align 8
  %52 = load ptr, ptr %12, align 8
  store ptr %52, ptr %7, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = load ptr, ptr %13, align 8
  store ptr %54, ptr %8, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = load ptr, ptr %14, align 8
  store ptr %56, ptr %9, align 8
  %57 = load ptr, ptr %9, align 8
  store ptr %53, ptr %4, align 8
  store ptr %55, ptr %5, align 8
  store ptr %57, ptr %6, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = load ptr, ptr %5, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  store ptr %14, ptr %10, align 8
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = load double, ptr %22, align 8
  %64 = load ptr, ptr %19, align 8
  store double %63, ptr %64, align 8
  br label %73

65:                                               ; preds = %36
  %66 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %24, i32 0, i32 0
  %68 = load i8, ptr %67, align 1
  %69 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %68)
  %70 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %23, i32 0, i32 0
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %23, i32 0, i32 0
  %72 = load i8, ptr %71, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %66, i8 %72)
  br label %73

73:                                               ; preds = %65, %40
  br label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %21, align 8
  %76 = getelementptr inbounds nuw double, ptr %75, i32 1
  store ptr %76, ptr %21, align 8
  %77 = load ptr, ptr %21, align 8
  %78 = load ptr, ptr %20, align 8
  %79 = icmp ne ptr %77, %78
  br i1 %79, label %36, label %..loopexit_crit_edge, !llvm.loop !74

..loopexit_crit_edge:                             ; preds = %74
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %80

80:                                               ; preds = %.loopexit, %29
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
  br i1 %14, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %23
  %16 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %9, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %18)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %8, i32 0, i32 0
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %8, i32 0, i32 0
  %22 = load i8, ptr %21, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %16, i8 %22)
  br label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds nuw double, ptr %24, i32 1
  store ptr %25, ptr %7, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = icmp ne ptr %26, %27
  br i1 %28, label %15, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %23
  br label %29

29:                                               ; preds = %._crit_edge, %3
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
  br i1 %14, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = load ptr, ptr %6, align 8
  %17 = load double, ptr %16, align 8
  %18 = load ptr, ptr %4, align 8
  store double %17, ptr %18, align 8
  %19 = load ptr, ptr %6, align 8
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %6, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %22)
  br i1 %23, label %15, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %15
  br label %24

24:                                               ; preds = %._crit_edge, %2
  %25 = load double, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8
  store double %25, ptr %26, align 8
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
  br label %21

21:                                               ; preds = %.lr.ph, %30
  %22 = load i64, ptr %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %25, ptr noundef %26, ptr noundef %27, i8 %29)
  br label %51

30:                                               ; preds = %21
  %31 = load i64, ptr %8, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr %8, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %11, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  %37 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %33, ptr noundef %34, i8 %36)
  store ptr %37, ptr %10, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = load i64, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %41 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %12, i32 0, i32 0
  %42 = load i8, ptr %41, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %38, ptr noundef %39, i64 noundef %40, i8 %42)
  %43 = load ptr, ptr %10, align 8
  store ptr %43, ptr %7, align 8
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = icmp sgt i64 %49, 16
  br i1 %50, label %21, label %..loopexit_crit_edge, !llvm.loop !77

..loopexit_crit_edge:                             ; preds = %30
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %51

51:                                               ; preds = %.loopexit, %24
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
  %21 = getelementptr inbounds nuw double, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw double, ptr %24, i64 16
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
  %22 = getelementptr inbounds nuw double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds nuw double, ptr %28, i64 1
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
  br i1 %16, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %4
  br label %17

17:                                               ; preds = %.lr.ph, %26
  %18 = load ptr, ptr %9, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %18, ptr noundef %19)
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds nuw double, ptr %27, i32 1
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %17, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge, %4
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
  br i1 %13, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8, !nonnull !15
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %14
  br label %28

28:                                               ; preds = %._crit_edge, %3
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
  br label %47

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
  br label %29

29:                                               ; preds = %44, %19
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds double, ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  store double %33, ptr %9, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load i64, ptr %8, align 8
  %36 = load i64, ptr %7, align 8
  %37 = load double, ptr %9, align 8
  %38 = load ptr, ptr %6, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %38, i64 1, i1 false)
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %10, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %34, i64 noundef %35, i64 noundef %36, double noundef %37, i8 %40)
  %41 = load i64, ptr %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %47

44:                                               ; preds = %29
  %45 = load i64, ptr %8, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, ptr %8, align 8
  br label %29, !llvm.loop !80

47:                                               ; preds = %43, %18
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
  br i1 %21, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %5
  br label %22

22:                                               ; preds = %.lr.ph, %37
  %23 = load i64, ptr %12, align 8
  %24 = add nsw i64 %23, 1
  %25 = mul nsw i64 2, %24
  store i64 %25, ptr %12, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load i64, ptr %12, align 8
  %28 = getelementptr inbounds double, ptr %26, i64 %27
  %29 = load ptr, ptr %7, align 8
  %30 = load i64, ptr %12, align 8
  %31 = sub nsw i64 %30, 1
  %32 = getelementptr inbounds double, ptr %29, i64 %31
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %28, ptr noundef %32)
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i64, ptr %12, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, ptr %12, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %7, align 8
  %39 = load i64, ptr %12, align 8
  %40 = getelementptr inbounds double, ptr %38, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = load i64, ptr %8, align 8
  %44 = getelementptr inbounds double, ptr %42, i64 %43
  store double %41, ptr %44, align 8
  %45 = load i64, ptr %12, align 8
  store i64 %45, ptr %8, align 8
  %46 = load i64, ptr %12, align 8
  %47 = load i64, ptr %9, align 8
  %48 = sub nsw i64 %47, 1
  %49 = sdiv i64 %48, 2
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %22, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %37
  br label %51

51:                                               ; preds = %._crit_edge, %5
  %52 = load i64, ptr %9, align 8
  %53 = and i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i64, ptr %12, align 8
  %57 = load i64, ptr %9, align 8
  %58 = sub nsw i64 %57, 2
  %59 = sdiv i64 %58, 2
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i64, ptr %12, align 8
  %63 = add nsw i64 %62, 1
  %64 = mul nsw i64 2, %63
  store i64 %64, ptr %12, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = load i64, ptr %12, align 8
  %67 = sub nsw i64 %66, 1
  %68 = getelementptr inbounds double, ptr %65, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = load ptr, ptr %7, align 8
  %71 = load i64, ptr %8, align 8
  %72 = getelementptr inbounds double, ptr %70, i64 %71
  store double %69, ptr %72, align 8
  %73 = load i64, ptr %12, align 8
  %74 = sub nsw i64 %73, 1
  store i64 %74, ptr %8, align 8
  br label %75

75:                                               ; preds = %61, %55, %51
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %76 = load ptr, ptr %7, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load i64, ptr %11, align 8
  %79 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %76, i64 noundef %77, i64 noundef %78, double noundef %79, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %15

15:                                               ; preds = %27, %5
  %16 = load i64, ptr %7, align 8
  %17 = load i64, ptr %8, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !nonnull !15
  %21 = load ptr, ptr %6, align 8
  %22 = load i64, ptr %11, align 8
  %23 = getelementptr inbounds double, ptr %21, i64 %22
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %11, align 8
  %30 = getelementptr inbounds double, ptr %28, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  %35 = load i64, ptr %11, align 8
  store i64 %35, ptr %7, align 8
  %36 = load i64, ptr %7, align 8
  %37 = sub nsw i64 %36, 1
  %38 = sdiv i64 %37, 2
  store i64 %38, ptr %11, align 8
  br label %15, !llvm.loop !82

39:                                               ; preds = %25
  %40 = load double, ptr %9, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  store double %40, ptr %43, align 8
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

10:                                               ; preds = %38, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %10
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw double, ptr %15, i32 1
  store ptr %16, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %14
  br label %20

20:                                               ; preds = %._crit_edge, %10
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %23, ptr noundef %24)
  br i1 %25, label %.lr.ph2, label %32

.lr.ph2:                                          ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  store ptr %28, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %29, ptr noundef %30)
  br i1 %31, label %26, label %._crit_edge3, !llvm.loop !84

._crit_edge3:                                     ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge3, %20
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8
  ret ptr %37

38:                                               ; preds = %32
  %39 = load ptr, ptr %6, align 8
  %40 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds nuw double, ptr %41, i32 1
  store ptr %42, ptr %6, align 8
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
  br label %80

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds nuw double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %36

36:                                               ; preds = %.lr.ph, %74
  %37 = load ptr, ptr %21, align 8
  %38 = load ptr, ptr %19, align 8
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load ptr, ptr %21, align 8
  %42 = load double, ptr %41, align 8
  store double %42, ptr %22, align 8
  %43 = load ptr, ptr %19, align 8
  %44 = load ptr, ptr %21, align 8
  %45 = load ptr, ptr %21, align 8
  %46 = getelementptr inbounds nuw double, ptr %45, i64 1
  store ptr %43, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  store ptr %46, ptr %17, align 8
  %47 = load ptr, ptr %15, align 8
  %48 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %47)
  %49 = load ptr, ptr %16, align 8
  %50 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %49)
  %51 = load ptr, ptr %17, align 8
  store ptr %48, ptr %12, align 8
  store ptr %50, ptr %13, align 8
  store ptr %51, ptr %14, align 8
  %52 = load ptr, ptr %12, align 8
  store ptr %52, ptr %7, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = load ptr, ptr %13, align 8
  store ptr %54, ptr %8, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = load ptr, ptr %14, align 8
  store ptr %56, ptr %9, align 8
  %57 = load ptr, ptr %9, align 8
  store ptr %53, ptr %4, align 8
  store ptr %55, ptr %5, align 8
  store ptr %57, ptr %6, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = load ptr, ptr %5, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  store ptr %14, ptr %10, align 8
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = load double, ptr %22, align 8
  %64 = load ptr, ptr %19, align 8
  store double %63, ptr %64, align 8
  br label %73

65:                                               ; preds = %36
  %66 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %24, i32 0, i32 0
  %68 = load i8, ptr %67, align 1
  %69 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %68)
  %70 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %23, i32 0, i32 0
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %23, i32 0, i32 0
  %72 = load i8, ptr %71, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %66, i8 %72)
  br label %73

73:                                               ; preds = %65, %40
  br label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %21, align 8
  %76 = getelementptr inbounds nuw double, ptr %75, i32 1
  store ptr %76, ptr %21, align 8
  %77 = load ptr, ptr %21, align 8
  %78 = load ptr, ptr %20, align 8
  %79 = icmp ne ptr %77, %78
  br i1 %79, label %36, label %..loopexit_crit_edge, !llvm.loop !86

..loopexit_crit_edge:                             ; preds = %74
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %80

80:                                               ; preds = %.loopexit, %29
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
  br i1 %14, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %23
  %16 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %9, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %18)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %8, i32 0, i32 0
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %8, i32 0, i32 0
  %22 = load i8, ptr %21, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %16, i8 %22)
  br label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds nuw double, ptr %24, i32 1
  store ptr %25, ptr %7, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = icmp ne ptr %26, %27
  br i1 %28, label %15, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %23
  br label %29

29:                                               ; preds = %._crit_edge, %3
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
  br i1 %14, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = load ptr, ptr %6, align 8
  %17 = load double, ptr %16, align 8
  %18 = load ptr, ptr %4, align 8
  store double %17, ptr %18, align 8
  %19 = load ptr, ptr %6, align 8
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %6, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %22)
  br i1 %23, label %15, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %15
  br label %24

24:                                               ; preds = %._crit_edge, %2
  %25 = load double, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8
  store double %25, ptr %26, align 8
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
  br label %21

21:                                               ; preds = %.lr.ph, %30
  %22 = load i64, ptr %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %25, ptr noundef %26, ptr noundef %27, i8 %29)
  br label %51

30:                                               ; preds = %21
  %31 = load i64, ptr %8, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr %8, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %11, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  %37 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %33, ptr noundef %34, i8 %36)
  store ptr %37, ptr %10, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = load i64, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %41 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %12, i32 0, i32 0
  %42 = load i8, ptr %41, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %38, ptr noundef %39, i64 noundef %40, i8 %42)
  %43 = load ptr, ptr %10, align 8
  store ptr %43, ptr %7, align 8
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = icmp sgt i64 %49, 16
  br i1 %50, label %21, label %..loopexit_crit_edge, !llvm.loop !89

..loopexit_crit_edge:                             ; preds = %30
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %51

51:                                               ; preds = %.loopexit, %24
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
  %21 = getelementptr inbounds nuw double, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw double, ptr %24, i64 16
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
  %22 = getelementptr inbounds nuw double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds nuw double, ptr %28, i64 1
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
  br i1 %16, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %4
  br label %17

17:                                               ; preds = %.lr.ph, %26
  %18 = load ptr, ptr %9, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %18, ptr noundef %19)
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds nuw double, ptr %27, i32 1
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %17, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge, %4
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
  br i1 %13, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8, !nonnull !15
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %14
  br label %28

28:                                               ; preds = %._crit_edge, %3
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
  br label %47

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
  br label %29

29:                                               ; preds = %44, %19
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds double, ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  store double %33, ptr %9, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load i64, ptr %8, align 8
  %36 = load i64, ptr %7, align 8
  %37 = load double, ptr %9, align 8
  %38 = load ptr, ptr %6, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %38, i64 1, i1 false)
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %10, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %34, i64 noundef %35, i64 noundef %36, double noundef %37, i8 %40)
  %41 = load i64, ptr %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %47

44:                                               ; preds = %29
  %45 = load i64, ptr %8, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, ptr %8, align 8
  br label %29, !llvm.loop !92

47:                                               ; preds = %43, %18
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
  br i1 %21, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %5
  br label %22

22:                                               ; preds = %.lr.ph, %37
  %23 = load i64, ptr %12, align 8
  %24 = add nsw i64 %23, 1
  %25 = mul nsw i64 2, %24
  store i64 %25, ptr %12, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load i64, ptr %12, align 8
  %28 = getelementptr inbounds double, ptr %26, i64 %27
  %29 = load ptr, ptr %7, align 8
  %30 = load i64, ptr %12, align 8
  %31 = sub nsw i64 %30, 1
  %32 = getelementptr inbounds double, ptr %29, i64 %31
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %28, ptr noundef %32)
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i64, ptr %12, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, ptr %12, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %7, align 8
  %39 = load i64, ptr %12, align 8
  %40 = getelementptr inbounds double, ptr %38, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = load i64, ptr %8, align 8
  %44 = getelementptr inbounds double, ptr %42, i64 %43
  store double %41, ptr %44, align 8
  %45 = load i64, ptr %12, align 8
  store i64 %45, ptr %8, align 8
  %46 = load i64, ptr %12, align 8
  %47 = load i64, ptr %9, align 8
  %48 = sub nsw i64 %47, 1
  %49 = sdiv i64 %48, 2
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %22, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %37
  br label %51

51:                                               ; preds = %._crit_edge, %5
  %52 = load i64, ptr %9, align 8
  %53 = and i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i64, ptr %12, align 8
  %57 = load i64, ptr %9, align 8
  %58 = sub nsw i64 %57, 2
  %59 = sdiv i64 %58, 2
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i64, ptr %12, align 8
  %63 = add nsw i64 %62, 1
  %64 = mul nsw i64 2, %63
  store i64 %64, ptr %12, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = load i64, ptr %12, align 8
  %67 = sub nsw i64 %66, 1
  %68 = getelementptr inbounds double, ptr %65, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = load ptr, ptr %7, align 8
  %71 = load i64, ptr %8, align 8
  %72 = getelementptr inbounds double, ptr %70, i64 %71
  store double %69, ptr %72, align 8
  %73 = load i64, ptr %12, align 8
  %74 = sub nsw i64 %73, 1
  store i64 %74, ptr %8, align 8
  br label %75

75:                                               ; preds = %61, %55, %51
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %76 = load ptr, ptr %7, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load i64, ptr %11, align 8
  %79 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %76, i64 noundef %77, i64 noundef %78, double noundef %79, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %15

15:                                               ; preds = %27, %5
  %16 = load i64, ptr %7, align 8
  %17 = load i64, ptr %8, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !nonnull !15
  %21 = load ptr, ptr %6, align 8
  %22 = load i64, ptr %11, align 8
  %23 = getelementptr inbounds double, ptr %21, i64 %22
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %11, align 8
  %30 = getelementptr inbounds double, ptr %28, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  %35 = load i64, ptr %11, align 8
  store i64 %35, ptr %7, align 8
  %36 = load i64, ptr %7, align 8
  %37 = sub nsw i64 %36, 1
  %38 = sdiv i64 %37, 2
  store i64 %38, ptr %11, align 8
  br label %15, !llvm.loop !94

39:                                               ; preds = %25
  %40 = load double, ptr %9, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  store double %40, ptr %43, align 8
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

10:                                               ; preds = %38, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %10
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw double, ptr %15, i32 1
  store ptr %16, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %14
  br label %20

20:                                               ; preds = %._crit_edge, %10
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %23, ptr noundef %24)
  br i1 %25, label %.lr.ph2, label %32

.lr.ph2:                                          ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  store ptr %28, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %29, ptr noundef %30)
  br i1 %31, label %26, label %._crit_edge3, !llvm.loop !96

._crit_edge3:                                     ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge3, %20
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8
  ret ptr %37

38:                                               ; preds = %32
  %39 = load ptr, ptr %6, align 8
  %40 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds nuw double, ptr %41, i32 1
  store ptr %42, ptr %6, align 8
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
  br label %80

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds nuw double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %36

36:                                               ; preds = %.lr.ph, %74
  %37 = load ptr, ptr %21, align 8
  %38 = load ptr, ptr %19, align 8
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load ptr, ptr %21, align 8
  %42 = load double, ptr %41, align 8
  store double %42, ptr %22, align 8
  %43 = load ptr, ptr %19, align 8
  %44 = load ptr, ptr %21, align 8
  %45 = load ptr, ptr %21, align 8
  %46 = getelementptr inbounds nuw double, ptr %45, i64 1
  store ptr %43, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  store ptr %46, ptr %17, align 8
  %47 = load ptr, ptr %15, align 8
  %48 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %47)
  %49 = load ptr, ptr %16, align 8
  %50 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %49)
  %51 = load ptr, ptr %17, align 8
  store ptr %48, ptr %12, align 8
  store ptr %50, ptr %13, align 8
  store ptr %51, ptr %14, align 8
  %52 = load ptr, ptr %12, align 8
  store ptr %52, ptr %7, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = load ptr, ptr %13, align 8
  store ptr %54, ptr %8, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = load ptr, ptr %14, align 8
  store ptr %56, ptr %9, align 8
  %57 = load ptr, ptr %9, align 8
  store ptr %53, ptr %4, align 8
  store ptr %55, ptr %5, align 8
  store ptr %57, ptr %6, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = load ptr, ptr %5, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  store ptr %14, ptr %10, align 8
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = load double, ptr %22, align 8
  %64 = load ptr, ptr %19, align 8
  store double %63, ptr %64, align 8
  br label %73

65:                                               ; preds = %36
  %66 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %67 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %24, i32 0, i32 0
  %68 = load i8, ptr %67, align 1
  %69 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %68)
  %70 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %23, i32 0, i32 0
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %23, i32 0, i32 0
  %72 = load i8, ptr %71, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %66, i8 %72)
  br label %73

73:                                               ; preds = %65, %40
  br label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %21, align 8
  %76 = getelementptr inbounds nuw double, ptr %75, i32 1
  store ptr %76, ptr %21, align 8
  %77 = load ptr, ptr %21, align 8
  %78 = load ptr, ptr %20, align 8
  %79 = icmp ne ptr %77, %78
  br i1 %79, label %36, label %..loopexit_crit_edge, !llvm.loop !98

..loopexit_crit_edge:                             ; preds = %74
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %80

80:                                               ; preds = %.loopexit, %29
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
  br i1 %14, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %23
  %16 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %9, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %18)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %8, i32 0, i32 0
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %8, i32 0, i32 0
  %22 = load i8, ptr %21, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %16, i8 %22)
  br label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds nuw double, ptr %24, i32 1
  store ptr %25, ptr %7, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = icmp ne ptr %26, %27
  br i1 %28, label %15, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %23
  br label %29

29:                                               ; preds = %._crit_edge, %3
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
  br i1 %14, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = load ptr, ptr %6, align 8
  %17 = load double, ptr %16, align 8
  %18 = load ptr, ptr %4, align 8
  store double %17, ptr %18, align 8
  %19 = load ptr, ptr %6, align 8
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %6, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %22)
  br i1 %23, label %15, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %15
  br label %24

24:                                               ; preds = %._crit_edge, %2
  %25 = load double, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8
  store double %25, ptr %26, align 8
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
  br label %21

21:                                               ; preds = %.lr.ph, %30
  %22 = load i64, ptr %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %25, ptr noundef %26, ptr noundef %27, i8 %29)
  br label %51

30:                                               ; preds = %21
  %31 = load i64, ptr %8, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr %8, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %11, i32 0, i32 0
  %36 = load i8, ptr %35, align 1
  %37 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %33, ptr noundef %34, i8 %36)
  store ptr %37, ptr %10, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = load i64, ptr %8, align 8
  %41 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %12, i32 0, i32 0
  %42 = load i8, ptr %41, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %38, ptr noundef %39, i64 noundef %40, i8 %42)
  %43 = load ptr, ptr %10, align 8
  store ptr %43, ptr %7, align 8
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = icmp sgt i64 %49, 16
  br i1 %50, label %21, label %..loopexit_crit_edge, !llvm.loop !101

..loopexit_crit_edge:                             ; preds = %30
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %51

51:                                               ; preds = %.loopexit, %24
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
  %21 = getelementptr inbounds nuw double, ptr %20, i64 16
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %19, ptr noundef %21, i8 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw double, ptr %24, i64 16
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
  %22 = getelementptr inbounds nuw double, ptr %21, i64 1
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 -1
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %25, i8 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds nuw double, ptr %28, i64 1
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
  br i1 %16, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %4
  br label %17

17:                                               ; preds = %.lr.ph, %26
  %18 = load ptr, ptr %9, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %18, ptr noundef %19)
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds nuw double, ptr %27, i32 1
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %17, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge, %4
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
  br i1 %13, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8, !nonnull !15
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %14
  br label %28

28:                                               ; preds = %._crit_edge, %3
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
  br label %47

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
  br label %29

29:                                               ; preds = %44, %19
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds double, ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  store double %33, ptr %9, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load i64, ptr %8, align 8
  %36 = load i64, ptr %7, align 8
  %37 = load double, ptr %9, align 8
  %38 = load ptr, ptr %6, align 8, !nonnull !15
  %39 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %10, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %34, i64 noundef %35, i64 noundef %36, double noundef %37, i8 %40)
  %41 = load i64, ptr %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %47

44:                                               ; preds = %29
  %45 = load i64, ptr %8, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, ptr %8, align 8
  br label %29, !llvm.loop !104

47:                                               ; preds = %43, %18
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
  br i1 %22, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %5
  br label %23

23:                                               ; preds = %.lr.ph, %38
  %24 = load i64, ptr %12, align 8
  %25 = add nsw i64 %24, 1
  %26 = mul nsw i64 2, %25
  store i64 %26, ptr %12, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i64, ptr %12, align 8
  %29 = getelementptr inbounds double, ptr %27, i64 %28
  %30 = load ptr, ptr %7, align 8
  %31 = load i64, ptr %12, align 8
  %32 = sub nsw i64 %31, 1
  %33 = getelementptr inbounds double, ptr %30, i64 %32
  %34 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %29, ptr noundef %33)
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i64, ptr %12, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, ptr %12, align 8
  br label %38

38:                                               ; preds = %35, %23
  %39 = load ptr, ptr %7, align 8
  %40 = load i64, ptr %12, align 8
  %41 = getelementptr inbounds double, ptr %39, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = load i64, ptr %8, align 8
  %45 = getelementptr inbounds double, ptr %43, i64 %44
  store double %42, ptr %45, align 8
  %46 = load i64, ptr %12, align 8
  store i64 %46, ptr %8, align 8
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %9, align 8
  %49 = sub nsw i64 %48, 1
  %50 = sdiv i64 %49, 2
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %23, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %38
  br label %52

52:                                               ; preds = %._crit_edge, %5
  %53 = load i64, ptr %9, align 8
  %54 = and i64 %53, 1
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i64, ptr %12, align 8
  %58 = load i64, ptr %9, align 8
  %59 = sub nsw i64 %58, 2
  %60 = sdiv i64 %59, 2
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i64, ptr %12, align 8
  %64 = add nsw i64 %63, 1
  %65 = mul nsw i64 2, %64
  store i64 %65, ptr %12, align 8
  %66 = load ptr, ptr %7, align 8
  %67 = load i64, ptr %12, align 8
  %68 = sub nsw i64 %67, 1
  %69 = getelementptr inbounds double, ptr %66, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %8, align 8
  %73 = getelementptr inbounds double, ptr %71, i64 %72
  store double %70, ptr %73, align 8
  %74 = load i64, ptr %12, align 8
  %75 = sub nsw i64 %74, 1
  store i64 %75, ptr %8, align 8
  br label %76

76:                                               ; preds = %62, %56, %52
  %77 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %14, i32 0, i32 0
  %78 = load i8, ptr %77, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 %78)
  %79 = load ptr, ptr %7, align 8
  %80 = load i64, ptr %8, align 8
  %81 = load i64, ptr %11, align 8
  %82 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %79, i64 noundef %80, i64 noundef %81, double noundef %82, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %15

15:                                               ; preds = %27, %5
  %16 = load i64, ptr %7, align 8
  %17 = load i64, ptr %8, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !nonnull !15
  %21 = load ptr, ptr %6, align 8
  %22 = load i64, ptr %11, align 8
  %23 = getelementptr inbounds double, ptr %21, i64 %22
  %24 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %11, align 8
  %30 = getelementptr inbounds double, ptr %28, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  %35 = load i64, ptr %11, align 8
  store i64 %35, ptr %7, align 8
  %36 = load i64, ptr %7, align 8
  %37 = sub nsw i64 %36, 1
  %38 = sdiv i64 %37, 2
  store i64 %38, ptr %11, align 8
  br label %15, !llvm.loop !106

39:                                               ; preds = %25
  %40 = load double, ptr %9, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  store double %40, ptr %43, align 8
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

10:                                               ; preds = %38, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %10
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw double, ptr %15, i32 1
  store ptr %16, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %18)
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %14
  br label %20

20:                                               ; preds = %._crit_edge, %10
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %23, ptr noundef %24)
  br i1 %25, label %.lr.ph2, label %32

.lr.ph2:                                          ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  store ptr %28, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %29, ptr noundef %30)
  br i1 %31, label %26, label %._crit_edge3, !llvm.loop !108

._crit_edge3:                                     ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge3, %20
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8
  ret ptr %37

38:                                               ; preds = %32
  %39 = load ptr, ptr %6, align 8
  %40 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds nuw double, ptr %41, i32 1
  store ptr %42, ptr %6, align 8
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
  br label %79

30:                                               ; preds = %3
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds nuw double, ptr %31, i64 1
  store ptr %32, ptr %21, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %20, align 8
  %35 = icmp ne ptr %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  br label %36

36:                                               ; preds = %.lr.ph, %73
  %37 = load ptr, ptr %21, align 8
  %38 = load ptr, ptr %19, align 8
  %39 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load ptr, ptr %21, align 8
  %42 = load double, ptr %41, align 8
  store double %42, ptr %22, align 8
  %43 = load ptr, ptr %19, align 8
  %44 = load ptr, ptr %21, align 8
  %45 = load ptr, ptr %21, align 8
  %46 = getelementptr inbounds nuw double, ptr %45, i64 1
  store ptr %43, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  store ptr %46, ptr %17, align 8
  %47 = load ptr, ptr %15, align 8
  %48 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %47)
  %49 = load ptr, ptr %16, align 8
  %50 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %49)
  %51 = load ptr, ptr %17, align 8
  store ptr %48, ptr %12, align 8
  store ptr %50, ptr %13, align 8
  store ptr %51, ptr %14, align 8
  %52 = load ptr, ptr %12, align 8
  store ptr %52, ptr %7, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = load ptr, ptr %13, align 8
  store ptr %54, ptr %8, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = load ptr, ptr %14, align 8
  store ptr %56, ptr %9, align 8
  %57 = load ptr, ptr %9, align 8
  store ptr %53, ptr %4, align 8
  store ptr %55, ptr %5, align 8
  store ptr %57, ptr %6, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = load ptr, ptr %5, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  store ptr %14, ptr %10, align 8
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = load double, ptr %22, align 8
  %64 = load ptr, ptr %19, align 8
  store double %63, ptr %64, align 8
  br label %72

65:                                               ; preds = %36
  %66 = load ptr, ptr %21, align 8
  %67 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %24, i32 0, i32 0
  %68 = load i8, ptr %67, align 1
  %69 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %68)
  %70 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %23, i32 0, i32 0
  %71 = load i8, ptr %70, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %66, i8 %71)
  br label %72

72:                                               ; preds = %65, %40
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %21, align 8
  %75 = getelementptr inbounds nuw double, ptr %74, i32 1
  store ptr %75, ptr %21, align 8
  %76 = load ptr, ptr %21, align 8
  %77 = load ptr, ptr %20, align 8
  %78 = icmp ne ptr %76, %77
  br i1 %78, label %36, label %..loopexit_crit_edge, !llvm.loop !110

..loopexit_crit_edge:                             ; preds = %73
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %79

79:                                               ; preds = %.loopexit, %29
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
  br i1 %14, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph, %22
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %9, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %18)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %8, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %16, i8 %21)
  br label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds nuw double, ptr %23, i32 1
  store ptr %24, ptr %7, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = icmp ne ptr %25, %26
  br i1 %27, label %15, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %22
  br label %28

28:                                               ; preds = %._crit_edge, %3
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
  br i1 %14, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = load ptr, ptr %6, align 8
  %17 = load double, ptr %16, align 8
  %18 = load ptr, ptr %4, align 8
  store double %17, ptr %18, align 8
  %19 = load ptr, ptr %6, align 8
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %6, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %22)
  br i1 %23, label %15, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %15
  br label %24

24:                                               ; preds = %._crit_edge, %2
  %25 = load double, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8
  store double %25, ptr %26, align 8
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
