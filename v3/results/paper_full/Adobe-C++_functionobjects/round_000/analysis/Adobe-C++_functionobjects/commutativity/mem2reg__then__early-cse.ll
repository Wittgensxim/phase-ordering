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
  br i1 %8, label %9, label %21

9:                                                ; preds = %5, %2
  %10 = load i32, ptr @allocated_results, align 4
  %11 = add nsw i32 %10, 10
  store i32 %11, ptr @allocated_results, align 4
  %12 = load ptr, ptr @results, align 8
  %13 = sext i32 %11 to i64
  %14 = mul i64 %13, 16
  %15 = call ptr @realloc(ptr noundef %12, i64 noundef %14) #13
  store ptr %15, ptr @results, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, ptr @allocated_results, align 4
  %19 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str, i32 noundef %18)
  call void @exit(i32 noundef -1) #14
  unreachable

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %5
  %22 = load ptr, ptr @results, align 8
  %23 = load i32, ptr @current_test, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.one_result, ptr %22, i64 %24
  store double %0, ptr %25, align 8
  %26 = load ptr, ptr @results, align 8
  %27 = load i32, ptr @current_test, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.one_result, ptr %26, i64 %28
  %30 = getelementptr inbounds nuw %struct.one_result, ptr %29, i32 0, i32 1
  store ptr %1, ptr %30, align 8
  %31 = load i32, ptr @current_test, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @current_test, align 4
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

10:                                               ; preds = %24, %5
  %.03 = phi i32 [ 0, %5 ], [ %25, %24 ]
  %.0 = phi i32 [ 12, %5 ], [ %.1, %24 ]
  %11 = load i32, ptr @current_test, align 4
  %12 = icmp slt i32 %.03, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load ptr, ptr @results, align 8
  %15 = sext i32 %.03 to i64
  %16 = getelementptr inbounds %struct.one_result, ptr %14, i64 %15
  %17 = getelementptr inbounds nuw %struct.one_result, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef %18) #15
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, %.0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %13
  %.1 = phi i32 [ %20, %22 ], [ %.0, %13 ]
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %.03, 1
  br label %10, !llvm.loop !7

26:                                               ; preds = %10
  %27 = sub nsw i32 %.0, 12
  %28 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %27, ptr noundef @.str.2)
  %29 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %.0, ptr noundef @.str.2)
  br label %30

30:                                               ; preds = %52, %26
  %.14 = phi i32 [ 0, %26 ], [ %53, %52 ]
  %31 = load i32, ptr @current_test, align 4
  %32 = icmp slt i32 %.14, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = sext i32 %.0 to i64
  %35 = load ptr, ptr @results, align 8
  %36 = sext i32 %.14 to i64
  %37 = getelementptr inbounds %struct.one_result, ptr %35, i64 %36
  %38 = getelementptr inbounds nuw %struct.one_result, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 @strlen(ptr noundef %39) #15
  %41 = sub i64 %34, %40
  %42 = trunc i64 %41 to i32
  %43 = load ptr, ptr @results, align 8
  %44 = getelementptr inbounds %struct.one_result, ptr %43, i64 %36
  %45 = getelementptr inbounds nuw %struct.one_result, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = load double, ptr %44, align 8
  %48 = fdiv double %9, %47
  %49 = load double, ptr %43, align 8
  %50 = fdiv double %47, %49
  %51 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %.14, i32 noundef %42, ptr noundef @.str.5, ptr noundef %46, double noundef %47, double noundef %48, double noundef %50)
  br label %52

52:                                               ; preds = %33
  %53 = add nsw i32 %.14, 1
  br label %30, !llvm.loop !9

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %64, %54
  %.2 = phi i32 [ 0, %54 ], [ %65, %64 ]
  %.02 = phi double [ 0.000000e+00, %54 ], [ %63, %64 ]
  %56 = load i32, ptr @current_test, align 4
  %57 = icmp slt i32 %.2, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load ptr, ptr @results, align 8
  %60 = sext i32 %.2 to i64
  %61 = getelementptr inbounds %struct.one_result, ptr %59, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = fadd double %.02, %62
  br label %64

64:                                               ; preds = %58
  %65 = add nsw i32 %.2, 1
  br label %55, !llvm.loop !10

66:                                               ; preds = %55
  %67 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %.02)
  %68 = load i32, ptr @current_test, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = icmp ne i32 %4, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %85, %72
  %.3 = phi i32 [ 1, %72 ], [ %86, %85 ]
  %.01 = phi double [ 0.000000e+00, %72 ], [ %84, %85 ]
  %74 = load i32, ptr @current_test, align 4
  %75 = icmp slt i32 %.3, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load ptr, ptr @results, align 8
  %78 = sext i32 %.3 to i64
  %79 = getelementptr inbounds %struct.one_result, ptr %77, i64 %78
  %80 = load double, ptr %79, align 8
  %81 = load double, ptr %77, align 8
  %82 = fdiv double %80, %81
  %83 = call double @log(double noundef %82) #15
  %84 = fadd double %.01, %83
  br label %85

85:                                               ; preds = %76
  %86 = add nsw i32 %.3, 1
  br label %73, !llvm.loop !11

87:                                               ; preds = %73
  %88 = sub nsw i32 %74, 1
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %.01, %89
  %91 = call double @exp(double noundef %90) #15
  %92 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %91)
  br label %93

93:                                               ; preds = %87, %70, %66
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

3:                                                ; preds = %17, %2
  %.02 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.0 = phi i32 [ 12, %2 ], [ %.1, %17 ]
  %4 = load i32, ptr @current_test, align 4
  %5 = icmp slt i32 %.02, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load ptr, ptr @results, align 8
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds %struct.one_result, ptr %7, i64 %8
  %10 = getelementptr inbounds nuw %struct.one_result, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i64 @strlen(ptr noundef %11) #15
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, %.0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15, %6
  %.1 = phi i32 [ %13, %15 ], [ %.0, %6 ]
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %.02, 1
  br label %3, !llvm.loop !12

19:                                               ; preds = %3
  %20 = sub nsw i32 %.0, 12
  %21 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %20, ptr noundef @.str.2)
  %22 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %.0, ptr noundef @.str.2)
  br label %23

23:                                               ; preds = %42, %19
  %.13 = phi i32 [ 0, %19 ], [ %43, %42 ]
  %24 = load i32, ptr @current_test, align 4
  %25 = icmp slt i32 %.13, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = sext i32 %.0 to i64
  %28 = load ptr, ptr @results, align 8
  %29 = sext i32 %.13 to i64
  %30 = getelementptr inbounds %struct.one_result, ptr %28, i64 %29
  %31 = getelementptr inbounds nuw %struct.one_result, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 @strlen(ptr noundef %32) #15
  %34 = sub i64 %27, %33
  %35 = trunc i64 %34 to i32
  %36 = load ptr, ptr @results, align 8
  %37 = getelementptr inbounds %struct.one_result, ptr %36, i64 %29
  %38 = getelementptr inbounds nuw %struct.one_result, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load double, ptr %37, align 8
  %41 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %.13, i32 noundef %35, ptr noundef @.str.5, ptr noundef %39, double noundef %40)
  br label %42

42:                                               ; preds = %26
  %43 = add nsw i32 %.13, 1
  br label %23, !llvm.loop !13

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %54, %44
  %.2 = phi i32 [ 0, %44 ], [ %55, %54 ]
  %.01 = phi double [ 0.000000e+00, %44 ], [ %53, %54 ]
  %46 = load i32, ptr @current_test, align 4
  %47 = icmp slt i32 %.2, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load ptr, ptr @results, align 8
  %50 = sext i32 %.2 to i64
  %51 = getelementptr inbounds %struct.one_result, ptr %49, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = fadd double %.01, %52
  br label %54

54:                                               ; preds = %48
  %55 = add nsw i32 %.2, 1
  br label %45, !llvm.loop !14

56:                                               ; preds = %45
  %57 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %.01)
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
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.01 = phi ptr [ %0, %9 ], [ %.12, %29 ]
  %.0 = phi ptr [ %1, %9 ], [ %13, %29 ]
  br label %12

12:                                               ; preds = %16, %11
  %.1 = phi ptr [ %.0, %11 ], [ %13, %16 ]
  %13 = getelementptr inbounds double, ptr %.1, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12, !llvm.loop !15

17:                                               ; preds = %12
  %18 = icmp ult ptr %.01, %13
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %32

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %24, %20
  %.12 = phi ptr [ %.01, %20 ], [ %25, %24 ]
  %22 = load double, ptr %.12, align 8
  %23 = call noundef zeroext i1 %2(double noundef %22, double noundef %10)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %21, !llvm.loop !16

26:                                               ; preds = %21
  %27 = icmp ult ptr %.12, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.12, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.12, align 8
  br label %11, !llvm.loop !17

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %33, ptr noundef %1, ptr noundef %2)
  br label %34

34:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.01 = phi ptr [ %0, %9 ], [ %.12, %29 ]
  %.0 = phi ptr [ %1, %9 ], [ %13, %29 ]
  br label %12

12:                                               ; preds = %16, %11
  %.1 = phi ptr [ %.0, %11 ], [ %13, %16 ]
  %13 = getelementptr inbounds double, ptr %.1, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12, !llvm.loop !18

17:                                               ; preds = %12
  %18 = icmp ult ptr %.01, %13
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %32

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %24, %20
  %.12 = phi ptr [ %.01, %20 ], [ %25, %24 ]
  %22 = load double, ptr %.12, align 8
  %23 = call noundef zeroext i1 %2(double noundef %22, double noundef %10)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %21, !llvm.loop !19

26:                                               ; preds = %21
  %27 = icmp ult ptr %.12, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.12, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.12, align 8
  br label %11, !llvm.loop !20

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %33, ptr noundef %1, ptr noundef %2)
  br label %34

34:                                               ; preds = %32, %3
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

32:                                               ; preds = %39, %23
  %.0 = phi i32 [ 0, %23 ], [ %40, %39 ]
  %33 = icmp slt i32 %.0, %24
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = call i32 @rand()
  %36 = sitofp i32 %35 to double
  %37 = sext i32 %.0 to i64
  %38 = getelementptr inbounds double, ptr %31, i64 %37
  store double %36, ptr %38, align 8
  br label %39

39:                                               ; preds = %34
  %40 = add nsw i32 %.0, 1
  br label %32, !llvm.loop !21

41:                                               ; preds = %32
  %42 = call noalias noundef nonnull ptr @_Znay(i64 noundef %30) #16
  br label %43

43:                                               ; preds = %49, %41
  %.01 = phi i32 [ 0, %41 ], [ %50, %49 ]
  %44 = icmp slt i32 %.01, %16
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = getelementptr inbounds double, ptr %31, i64 %26
  %47 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %46, ptr noundef %42)
  call void @qsort(ptr noundef %42, i64 noundef %26, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %48 = getelementptr inbounds double, ptr %42, i64 %26
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %48)
  br label %49

49:                                               ; preds = %45
  %50 = add nsw i32 %.01, 1
  br label %43, !llvm.loop !22

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %58, %51
  %.1 = phi i32 [ 0, %51 ], [ %59, %58 ]
  %53 = icmp slt i32 %.1, %16
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = getelementptr inbounds double, ptr %31, i64 %26
  %56 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %55, ptr noundef %42)
  %57 = getelementptr inbounds double, ptr %42, i64 %26
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %42, ptr noundef %57, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %57)
  br label %58

58:                                               ; preds = %54
  %59 = add nsw i32 %.1, 1
  br label %52, !llvm.loop !23

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %67, %60
  %.2 = phi i32 [ 0, %60 ], [ %68, %67 ]
  %62 = icmp slt i32 %.2, %16
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = getelementptr inbounds double, ptr %31, i64 %26
  %65 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %64, ptr noundef %42)
  %66 = getelementptr inbounds double, ptr %42, i64 %26
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %42, ptr noundef %66, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %66)
  br label %67

67:                                               ; preds = %63
  %68 = add nsw i32 %.2, 1
  br label %61, !llvm.loop !24

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %76, %69
  %.3 = phi i32 [ 0, %69 ], [ %77, %76 ]
  %71 = icmp slt i32 %.3, %16
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = getelementptr inbounds double, ptr %31, i64 %26
  %74 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %73, ptr noundef %42)
  %75 = getelementptr inbounds double, ptr %42, i64 %26
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %42, ptr noundef %75)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %75)
  br label %76

76:                                               ; preds = %72
  %77 = add nsw i32 %.3, 1
  br label %70, !llvm.loop !25

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %85, %78
  %.4 = phi i32 [ 0, %78 ], [ %86, %85 ]
  %80 = icmp slt i32 %.4, %16
  br i1 %80, label %81, label %87

81:                                               ; preds = %79
  %82 = getelementptr inbounds double, ptr %31, i64 %26
  %83 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %82, ptr noundef %42)
  %84 = getelementptr inbounds double, ptr %42, i64 %26
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %42, ptr noundef %84, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %84)
  br label %85

85:                                               ; preds = %81
  %86 = add nsw i32 %.4, 1
  br label %79, !llvm.loop !26

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %95, %87
  %.5 = phi i32 [ 0, %87 ], [ %96, %95 ]
  %89 = icmp slt i32 %.5, %16
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = getelementptr inbounds double, ptr %31, i64 %26
  %92 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %91, ptr noundef %42)
  %93 = getelementptr inbounds double, ptr %42, i64 %26
  %94 = load i8, ptr %3, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %42, ptr noundef %93, i8 %94)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %93)
  br label %95

95:                                               ; preds = %90
  %96 = add nsw i32 %.5, 1
  br label %88, !llvm.loop !27

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %105, %97
  %.6 = phi i32 [ 0, %97 ], [ %106, %105 ]
  %99 = icmp slt i32 %.6, %16
  br i1 %99, label %100, label %107

100:                                              ; preds = %98
  %101 = getelementptr inbounds double, ptr %42, i64 %26
  %102 = load i8, ptr %4, align 1
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %42, ptr noundef %101, i8 %102)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %101)
  %103 = getelementptr inbounds double, ptr %31, i64 %26
  %104 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %103, ptr noundef %42)
  br label %105

105:                                              ; preds = %100
  %106 = add nsw i32 %.6, 1
  br label %98, !llvm.loop !28

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %115, %107
  %.7 = phi i32 [ 0, %107 ], [ %116, %115 ]
  %109 = icmp slt i32 %.7, %16
  br i1 %109, label %110, label %117

110:                                              ; preds = %108
  %111 = getelementptr inbounds double, ptr %31, i64 %26
  %112 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %111, ptr noundef %42)
  %113 = getelementptr inbounds double, ptr %42, i64 %26
  %114 = load i8, ptr %5, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %42, ptr noundef %113, i8 %114)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %113)
  br label %115

115:                                              ; preds = %110
  %116 = add nsw i32 %.7, 1
  br label %108, !llvm.loop !29

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %125, %117
  %.8 = phi i32 [ 0, %117 ], [ %126, %125 ]
  %119 = icmp slt i32 %.8, %16
  br i1 %119, label %120, label %127

120:                                              ; preds = %118
  %121 = getelementptr inbounds double, ptr %31, i64 %26
  %122 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %121, ptr noundef %42)
  %123 = getelementptr inbounds double, ptr %42, i64 %26
  %124 = load i8, ptr %6, align 1
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %42, ptr noundef %123, i8 %124)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %123)
  br label %125

125:                                              ; preds = %120
  %126 = add nsw i32 %.8, 1
  br label %118, !llvm.loop !30

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %135, %127
  %.9 = phi i32 [ 0, %127 ], [ %136, %135 ]
  %129 = icmp slt i32 %.9, %16
  br i1 %129, label %130, label %137

130:                                              ; preds = %128
  %131 = getelementptr inbounds double, ptr %31, i64 %26
  %132 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %131, ptr noundef %42)
  %133 = getelementptr inbounds double, ptr %42, i64 %26
  %134 = load i8, ptr %7, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %42, ptr noundef %133, i8 %134)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %133)
  br label %135

135:                                              ; preds = %130
  %136 = add nsw i32 %.9, 1
  br label %128, !llvm.loop !31

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %145, %137
  %.10 = phi i32 [ 0, %137 ], [ %146, %145 ]
  %139 = icmp slt i32 %.10, %16
  br i1 %139, label %140, label %147

140:                                              ; preds = %138
  %141 = getelementptr inbounds double, ptr %31, i64 %26
  %142 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %141, ptr noundef %42)
  %143 = getelementptr inbounds double, ptr %42, i64 %26
  %144 = load i8, ptr %8, align 1
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %42, ptr noundef %143, i8 %144)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %143)
  br label %145

145:                                              ; preds = %140
  %146 = add nsw i32 %.10, 1
  br label %138, !llvm.loop !32

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %154, %147
  %.11 = phi i32 [ 0, %147 ], [ %155, %154 ]
  %149 = icmp slt i32 %.11, %16
  br i1 %149, label %150, label %156

150:                                              ; preds = %148
  %151 = getelementptr inbounds double, ptr %31, i64 %26
  %152 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %151, ptr noundef %42)
  %153 = getelementptr inbounds double, ptr %42, i64 %26
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %42, ptr noundef %153)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %153)
  br label %154

154:                                              ; preds = %150
  %155 = add nsw i32 %.11, 1
  br label %148, !llvm.loop !33

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %163, %156
  %.12 = phi i32 [ 0, %156 ], [ %164, %163 ]
  %158 = icmp slt i32 %.12, %16
  br i1 %158, label %159, label %165

159:                                              ; preds = %157
  %160 = getelementptr inbounds double, ptr %31, i64 %26
  %161 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %160, ptr noundef %42)
  %162 = getelementptr inbounds double, ptr %42, i64 %26
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %42, ptr noundef %162)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %42, ptr noundef %162)
  br label %163

163:                                              ; preds = %159
  %164 = add nsw i32 %.12, 1
  br label %157, !llvm.loop !34

165:                                              ; preds = %157
  br i1 false, label %167, label %166

166:                                              ; preds = %165
  call void @_ZdaPv(ptr noundef %42) #17
  br label %167

167:                                              ; preds = %166, %165
  br i1 false, label %169, label %168

168:                                              ; preds = %167
  call void @_ZdaPv(ptr noundef %31) #17
  br label %169

169:                                              ; preds = %168, %167
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

4:                                                ; preds = %15, %2
  %.01 = phi ptr [ %0, %2 ], [ %9, %15 ]
  %.0 = phi ptr [ %3, %2 ], [ %7, %15 ]
  %5 = icmp ne ptr %.0, %1
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %8 = load double, ptr %.0, align 8
  %9 = getelementptr inbounds nuw double, ptr %.01, i32 1
  %10 = load double, ptr %.01, align 8
  %11 = fcmp olt double %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load i32, ptr @current_test, align 4
  %14 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %13)
  br label %16

15:                                               ; preds = %6
  br label %4, !llvm.loop !35

16:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %28 ]
  br label %11

11:                                               ; preds = %15, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %15 ]
  %12 = getelementptr inbounds double, ptr %.1, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %9, double noundef %13)
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11, !llvm.loop !36

16:                                               ; preds = %11
  %17 = icmp ult ptr %.01, %12
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %31

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %.12 = phi ptr [ %.01, %19 ], [ %24, %23 ]
  %21 = load double, ptr %.12, align 8
  %22 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %21, double noundef %9)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %20, !llvm.loop !37

25:                                               ; preds = %20
  %26 = icmp ult ptr %.12, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.12, align 8
  br label %10, !llvm.loop !38

31:                                               ; preds = %27, %18
  %32 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %32, ptr noundef @_Z19less_than_function2dd)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %32, ptr noundef %1, ptr noundef @_Z19less_than_function2dd)
  br label %33

33:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %2)
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %4, align 8
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca double, align 8
  %6 = alloca %struct.less_than_functor, align 1
  %7 = alloca %struct.less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 1
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load double, ptr %0, align 8
  store double %14, ptr %5, align 8
  br label %15

15:                                               ; preds = %31, %13
  %.01 = phi ptr [ %0, %13 ], [ %.12, %31 ]
  %.0 = phi ptr [ %1, %13 ], [ %17, %31 ]
  br label %16

16:                                               ; preds = %19, %15
  %.1 = phi ptr [ %.0, %15 ], [ %17, %19 ]
  %17 = getelementptr inbounds double, ptr %.1, i32 -1
  %18 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %16, !llvm.loop !39

20:                                               ; preds = %16
  %21 = icmp ult ptr %.01, %17
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %34

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %26, %23
  %.12 = phi ptr [ %.01, %23 ], [ %27, %26 ]
  %25 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %24, !llvm.loop !40

28:                                               ; preds = %24
  %29 = icmp ult ptr %.12, %17
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %17, align 8
  %33 = load double, ptr %.12, align 8
  store double %33, ptr %17, align 8
  store double %32, ptr %.12, align 8
  br label %15, !llvm.loop !41

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds double, ptr %17, i64 1
  %36 = load i8, ptr %6, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %35, i8 %36)
  %37 = load i8, ptr %7, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %1, i8 %37)
  br label %38

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %struct.less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  %7 = load i8, ptr %6, align 1
  %8 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %7)
  store i8 %8, ptr %5, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %8)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = alloca double, align 8
  %6 = alloca %struct.inline_less_than_functor, align 1
  %7 = alloca %struct.inline_less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 1
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load double, ptr %0, align 8
  store double %14, ptr %5, align 8
  br label %15

15:                                               ; preds = %31, %13
  %.01 = phi ptr [ %0, %13 ], [ %.12, %31 ]
  %.0 = phi ptr [ %1, %13 ], [ %17, %31 ]
  br label %16

16:                                               ; preds = %19, %15
  %.1 = phi ptr [ %.0, %15 ], [ %17, %19 ]
  %17 = getelementptr inbounds double, ptr %.1, i32 -1
  %18 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %16, !llvm.loop !42

20:                                               ; preds = %16
  %21 = icmp ult ptr %.01, %17
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %34

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %26, %23
  %.12 = phi ptr [ %.01, %23 ], [ %27, %26 ]
  %25 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %24, !llvm.loop !43

28:                                               ; preds = %24
  %29 = icmp ult ptr %.12, %17
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %17, align 8
  %33 = load double, ptr %.12, align 8
  store double %33, ptr %17, align 8
  store double %32, ptr %.12, align 8
  br label %15, !llvm.loop !44

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds double, ptr %17, i64 1
  %36 = load i8, ptr %6, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %35, i8 %36)
  %37 = load i8, ptr %7, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %1, i8 %37)
  br label %38

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %struct.inline_less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  %7 = load i8, ptr %6, align 1
  %8 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %7)
  store i8 %8, ptr %5, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %8)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca double, align 8
  %6 = alloca %"struct.std::less", align 1
  %7 = alloca %"struct.std::less", align 1
  store i8 %2, ptr %4, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 1
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load double, ptr %0, align 8
  store double %14, ptr %5, align 8
  br label %15

15:                                               ; preds = %31, %13
  %.01 = phi ptr [ %0, %13 ], [ %.12, %31 ]
  %.0 = phi ptr [ %1, %13 ], [ %17, %31 ]
  br label %16

16:                                               ; preds = %19, %15
  %.1 = phi ptr [ %.0, %15 ], [ %17, %19 ]
  %17 = getelementptr inbounds double, ptr %.1, i32 -1
  %18 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %16, !llvm.loop !45

20:                                               ; preds = %16
  %21 = icmp ult ptr %.01, %17
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %34

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %26, %23
  %.12 = phi ptr [ %.01, %23 ], [ %27, %26 ]
  %25 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %24, !llvm.loop !46

28:                                               ; preds = %24
  %29 = icmp ult ptr %.12, %17
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %17, align 8
  %33 = load double, ptr %.12, align 8
  store double %33, ptr %17, align 8
  store double %32, ptr %.12, align 8
  br label %15, !llvm.loop !47

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds double, ptr %17, i64 1
  %36 = load i8, ptr %6, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %35, i8 %36)
  %37 = load i8, ptr %7, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %35, ptr noundef %1, i8 %37)
  br label %38

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.std::less", align 1
  store i8 %2, ptr %4, align 1
  %7 = load i8, ptr %6, align 1
  %8 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %7)
  store i8 %8, ptr %5, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %8)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %28 ]
  br label %11

11:                                               ; preds = %15, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %15 ]
  %12 = getelementptr inbounds double, ptr %.1, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = fcmp olt double %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11, !llvm.loop !48

16:                                               ; preds = %11
  %17 = icmp ult ptr %.01, %12
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %30

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %.12 = phi ptr [ %.01, %19 ], [ %24, %23 ]
  %21 = load double, ptr %.12, align 8
  %22 = fcmp olt double %21, %9
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %20, !llvm.loop !49

25:                                               ; preds = %20
  %26 = icmp ult ptr %.12, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %30

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  store double %21, ptr %12, align 8
  store double %29, ptr %.12, align 8
  br label %10, !llvm.loop !50

30:                                               ; preds = %27, %18
  %31 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %31)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %31, ptr noundef %1)
  br label %32

32:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = call i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  %5 = load i8, ptr %3, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %5)
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
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  %10 = getelementptr inbounds double, ptr %2, i64 %7
  br label %17

11:                                               ; preds = %3
  %12 = icmp eq i64 %7, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load double, ptr %0, align 8
  store double %14, ptr %2, align 8
  %15 = getelementptr inbounds nuw double, ptr %2, i32 1
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = mul nsw i64 %14, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %4, i64 8, i1 false)
  %16 = load ptr, ptr %5, align 8
  %17 = ptrtoint ptr %16 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %15, i64 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %18 = load ptr, ptr %6, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %19)
  br label %20

20:                                               ; preds = %9, %3
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
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = inttoptr i64 %3 to ptr
  store ptr %9, ptr %5, align 8
  br label %10

10:                                               ; preds = %21, %4
  %.01 = phi ptr [ %1, %4 ], [ %25, %21 ]
  %.0 = phi i64 [ %2, %4 ], [ %22, %21 ]
  %11 = ptrtoint ptr %.01 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 16
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = icmp eq i64 %.0, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %5, i64 8, i1 false)
  %19 = load ptr, ptr %6, align 8
  %20 = ptrtoint ptr %19 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i64 %20)
  br label %28

21:                                               ; preds = %16
  %22 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 8, i1 false)
  %23 = load ptr, ptr %7, align 8
  %24 = ptrtoint ptr %23 to i64
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i64 %24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 8, i1 false)
  %26 = load ptr, ptr %8, align 8
  %27 = ptrtoint ptr %26 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %25, ptr noundef %.01, i64 noundef %22, i64 %27)
  br label %10, !llvm.loop !51

28:                                               ; preds = %18, %10
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
  %8 = inttoptr i64 %2 to ptr
  store ptr %8, ptr %4, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 16
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %4, i64 8, i1 false)
  %16 = load ptr, ptr %5, align 8
  %17 = ptrtoint ptr %16 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %15, i64 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %18 = load ptr, ptr %6, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %15, ptr noundef %1, i64 %19)
  br label %23

20:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %21 = load ptr, ptr %7, align 8
  %22 = ptrtoint ptr %21 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %22)
  br label %23

23:                                               ; preds = %20, %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = inttoptr i64 %3 to ptr
  store ptr %7, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %5, i64 8, i1 false)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %8 to i64
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %9)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds double, ptr %0, i64 %12
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %4, i64 8, i1 false)
  %16 = load ptr, ptr %5, align 8
  %17 = ptrtoint ptr %16 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %14, ptr noundef %13, ptr noundef %15, i64 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %18 = load ptr, ptr %6, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %14, ptr noundef %1, ptr noundef %0, i64 %19)
  ret ptr %20
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %7

7:                                                ; preds = %13, %4
  %.0 = phi ptr [ %1, %4 ], [ %14, %13 ]
  %8 = icmp ult ptr %.0, %2
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !52

15:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %4, !llvm.loop !53

12:                                               ; preds = %4
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
  br label %23

11:                                               ; preds = %3
  %12 = sub nsw i64 %8, 2
  %13 = sdiv i64 %12, 2
  br label %14

14:                                               ; preds = %21, %11
  %.0 = phi i64 [ %13, %11 ], [ %22, %21 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %2, i64 8, i1 false)
  %17 = load ptr, ptr %4, align 8
  %18 = ptrtoint ptr %17 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %8, double noundef %16, i64 %18)
  %19 = icmp eq i64 %.0, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %23

21:                                               ; preds = %14
  %22 = add nsw i64 %.0, -1
  br label %14, !llvm.loop !54

23:                                               ; preds = %20, %10
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
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = load double, ptr %2, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %2, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %3, i64 8, i1 false)
  %12 = load ptr, ptr %5, align 8
  %13 = ptrtoint ptr %12 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i64 %13)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i64 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %8 = inttoptr i64 %4 to ptr
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %22, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %22 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %22 ]
  %10 = sub nsw i64 %2, 1
  %11 = sdiv i64 %10, 2
  %12 = icmp slt i64 %.0, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = add nsw i64 %.0, 1
  %15 = mul nsw i64 2, %14
  %16 = getelementptr inbounds double, ptr %0, i64 %15
  %17 = sub nsw i64 %15, 1
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %16, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %15, -1
  br label %22

22:                                               ; preds = %20, %13
  %.1 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds double, ptr %0, i64 %.1
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %24, ptr %25, align 8
  br label %9, !llvm.loop !55

26:                                               ; preds = %9
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = sub nsw i64 %2, 2
  %31 = sdiv i64 %30, 2
  %32 = icmp eq i64 %.0, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = add nsw i64 %.0, 1
  %35 = mul nsw i64 2, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds double, ptr %0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %33, %29, %26
  %.12 = phi i64 [ %36, %33 ], [ %.01, %29 ], [ %.01, %26 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %16, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !56

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
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

7:                                                ; preds = %21, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi ptr [ %.0, %7 ], [ %11, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %8, !llvm.loop !57

12:                                               ; preds = %8
  %13 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %14, !llvm.loop !58

18:                                               ; preds = %14
  %19 = icmp ult ptr %.1, %.12
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.1

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %30

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  br label %12

12:                                               ; preds = %28, %10
  %.0 = phi ptr [ %11, %10 ], [ %29, %28 ]
  %13 = icmp ne ptr %.0, %1
  br i1 %13, label %14, label %30

14:                                               ; preds = %12
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load double, ptr %.0, align 8
  %18 = getelementptr inbounds double, ptr %.0, i64 1
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %21 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %19, ptr noundef %20, ptr noundef %18)
  store double %17, ptr %0, align 8
  br label %27

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %23 = load ptr, ptr %6, align 8
  %24 = ptrtoint ptr %23 to i64
  %25 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %24)
  %26 = inttoptr i64 %25 to ptr
  store ptr %26, ptr %5, align 8
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %25)
  br label %27

27:                                               ; preds = %22, %16
  br label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %12, !llvm.loop !60

30:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  br label %8

8:                                                ; preds = %15, %3
  %.0 = phi ptr [ %0, %3 ], [ %16, %15 ]
  %9 = icmp ne ptr %.0, %1
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %11 to i64
  %13 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %12)
  %14 = inttoptr i64 %13 to ptr
  store ptr %14, ptr %5, align 8
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %13)
  br label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %8, !llvm.loop !61

17:                                               ; preds = %8
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
  %7 = getelementptr inbounds double, ptr %0, i32 -1
  br label %8

8:                                                ; preds = %10, %2
  %.01 = phi ptr [ %7, %2 ], [ %12, %10 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load double, ptr %.01, align 8
  store double %11, ptr %.0, align 8
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %8, !llvm.loop !62

13:                                               ; preds = %8
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.0, align 8
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
  %8 = sdiv exact i64 %7, 8
  %9 = sub nsw i64 0, %8
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %9, i8 undef)
  %10 = icmp sgt i64 %8, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %12, ptr align 8 %0, i64 %7, i1 false)
  br label %19

13:                                               ; preds = %3
  %14 = icmp eq i64 %8, 1
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
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8 %2, ptr %4, align 1
  %5 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds nuw double, ptr %9, i32 1
  store ptr %10, ptr %0, align 8
  br label %22

11:                                               ; preds = %6, %3
  %12 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = icmp eq i64 %1, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  store ptr %17, ptr %0, align 8
  br label %21

18:                                               ; preds = %13, %11
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 %1
  store ptr %20, ptr %0, align 8
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %21, %8
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %7 = icmp ne ptr %0, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = mul nsw i64 %13, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %16)
  br label %17

17:                                               ; preds = %8, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  br label %9

9:                                                ; preds = %19, %4
  %.01 = phi ptr [ %1, %4 ], [ %22, %19 ]
  %.0 = phi i64 [ %2, %4 ], [ %20, %19 ]
  %10 = ptrtoint ptr %.01 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %18 = load i8, ptr %6, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %18)
  br label %24

19:                                               ; preds = %15
  %20 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %21 = load i8, ptr %7, align 1
  %22 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %23 = load i8, ptr %8, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %22, ptr noundef %.01, i64 noundef %20, i8 %23)
  br label %9, !llvm.loop !63

24:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %14, ptr noundef %1, i8 %16)
  br label %19

17:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %7 = load i8, ptr %6, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %7)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds double, ptr %0, i64 %11
  %13 = getelementptr inbounds double, ptr %0, i64 1
  %14 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %13, ptr noundef %12, ptr noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %13, ptr noundef %1, ptr noundef %0, i8 %16)
  ret ptr %17
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !64

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !65

12:                                               ; preds = %4
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
  br label %22

11:                                               ; preds = %3
  %12 = sub nsw i64 %8, 2
  %13 = sdiv i64 %12, 2
  br label %14

14:                                               ; preds = %20, %11
  %.0 = phi i64 [ %13, %11 ], [ %21, %20 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %17 = load i8, ptr %4, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %8, double noundef %16, i8 %17)
  %18 = icmp eq i64 %.0, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = add nsw i64 %.0, -1
  br label %14, !llvm.loop !66

22:                                               ; preds = %19, %10
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
  %12 = load i8, ptr %5, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %12)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = add nsw i64 %.0, 1
  %14 = mul nsw i64 2, %13
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = sub nsw i64 %14, 1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !67

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = sub nsw i64 %2, 2
  %30 = sdiv i64 %29, 2
  %31 = icmp eq i64 %.0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add nsw i64 %.0, 1
  %34 = mul nsw i64 2, %33
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %35, %32 ], [ %.01, %28 ], [ %.01, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %16, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !68

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
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

6:                                                ; preds = %20, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !69

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.12 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %13, !llvm.loop !70

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.12
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %25, %9
  %.0 = phi ptr [ %10, %9 ], [ %26, %25 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %27

13:                                               ; preds = %11
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %24

21:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %22 = load i8, ptr %6, align 1
  %23 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %22)
  store i8 %23, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %23)
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !72

27:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  br label %7

7:                                                ; preds = %12, %3
  %.0 = phi ptr [ %0, %3 ], [ %13, %12 ]
  %8 = icmp ne ptr %.0, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %10 = load i8, ptr %6, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %10)
  store i8 %11, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %11)
  br label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !73

14:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.01 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %7, !llvm.loop !74

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.0, align 8
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
  %3 = alloca %struct.less_than_functor, align 1
  store i8 %1, ptr %3, align 1
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %7 = icmp ne ptr %0, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = mul nsw i64 %13, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %16)
  br label %17

17:                                               ; preds = %8, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  br label %9

9:                                                ; preds = %19, %4
  %.01 = phi ptr [ %1, %4 ], [ %22, %19 ]
  %.0 = phi i64 [ %2, %4 ], [ %20, %19 ]
  %10 = ptrtoint ptr %.01 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %18 = load i8, ptr %6, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %18)
  br label %24

19:                                               ; preds = %15
  %20 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %21 = load i8, ptr %7, align 1
  %22 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %23 = load i8, ptr %8, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %22, ptr noundef %.01, i64 noundef %20, i8 %23)
  br label %9, !llvm.loop !75

24:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %14, ptr noundef %1, i8 %16)
  br label %19

17:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %7 = load i8, ptr %6, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %7)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds double, ptr %0, i64 %11
  %13 = getelementptr inbounds double, ptr %0, i64 1
  %14 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %13, ptr noundef %12, ptr noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %13, ptr noundef %1, ptr noundef %0, i8 %16)
  ret ptr %17
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !76

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !77

12:                                               ; preds = %4
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
  br label %22

11:                                               ; preds = %3
  %12 = sub nsw i64 %8, 2
  %13 = sdiv i64 %12, 2
  br label %14

14:                                               ; preds = %20, %11
  %.0 = phi i64 [ %13, %11 ], [ %21, %20 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %17 = load i8, ptr %4, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %8, double noundef %16, i8 %17)
  %18 = icmp eq i64 %.0, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = add nsw i64 %.0, -1
  br label %14, !llvm.loop !78

22:                                               ; preds = %19, %10
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
  %12 = load i8, ptr %5, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %12)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.4", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = add nsw i64 %.0, 1
  %14 = mul nsw i64 2, %13
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = sub nsw i64 %14, 1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !79

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = sub nsw i64 %2, 2
  %30 = sdiv i64 %29, 2
  %31 = icmp eq i64 %.0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add nsw i64 %.0, 1
  %34 = mul nsw i64 2, %33
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %35, %32 ], [ %.01, %28 ], [ %.01, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %16, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !80

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
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

6:                                                ; preds = %20, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !81

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.12 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %13, !llvm.loop !82

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.12
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %25, %9
  %.0 = phi ptr [ %10, %9 ], [ %26, %25 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %27

13:                                               ; preds = %11
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %24

21:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %22 = load i8, ptr %6, align 1
  %23 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %22)
  store i8 %23, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %23)
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !84

27:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  br label %7

7:                                                ; preds = %12, %3
  %.0 = phi ptr [ %0, %3 ], [ %13, %12 ]
  %8 = icmp ne ptr %.0, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %10 = load i8, ptr %6, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %10)
  store i8 %11, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %11)
  br label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !85

14:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.01 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %7, !llvm.loop !86

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.0, align 8
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
  %3 = alloca %struct.inline_less_than_functor, align 1
  store i8 %1, ptr %3, align 1
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
  store i8 %2, ptr %4, align 1
  %7 = icmp ne ptr %0, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = mul nsw i64 %13, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %16)
  br label %17

17:                                               ; preds = %8, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  br label %9

9:                                                ; preds = %19, %4
  %.01 = phi ptr [ %1, %4 ], [ %22, %19 ]
  %.0 = phi i64 [ %2, %4 ], [ %20, %19 ]
  %10 = ptrtoint ptr %.01 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %18 = load i8, ptr %6, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %18)
  br label %24

19:                                               ; preds = %15
  %20 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %21 = load i8, ptr %7, align 1
  %22 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i8 %21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %23 = load i8, ptr %8, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %22, ptr noundef %.01, i64 noundef %20, i8 %23)
  br label %9, !llvm.loop !87

24:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %14, ptr noundef %1, i8 %16)
  br label %19

17:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %7 = load i8, ptr %6, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %7)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds double, ptr %0, i64 %11
  %13 = getelementptr inbounds double, ptr %0, i64 1
  %14 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %5, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %13, ptr noundef %12, ptr noundef %14, i8 %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %16 = load i8, ptr %6, align 1
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %13, ptr noundef %1, ptr noundef %0, i8 %16)
  ret ptr %17
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !88

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !89

12:                                               ; preds = %4
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
  br label %22

11:                                               ; preds = %3
  %12 = sub nsw i64 %8, 2
  %13 = sdiv i64 %12, 2
  br label %14

14:                                               ; preds = %20, %11
  %.0 = phi i64 [ %13, %11 ], [ %21, %20 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %17 = load i8, ptr %4, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %8, double noundef %16, i8 %17)
  %18 = icmp eq i64 %.0, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = add nsw i64 %.0, -1
  br label %14, !llvm.loop !90

22:                                               ; preds = %19, %10
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
  %12 = load i8, ptr %5, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %12)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.7", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = add nsw i64 %.0, 1
  %14 = mul nsw i64 2, %13
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = sub nsw i64 %14, 1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !91

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = sub nsw i64 %2, 2
  %30 = sdiv i64 %29, 2
  %31 = icmp eq i64 %.0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add nsw i64 %.0, 1
  %34 = mul nsw i64 2, %33
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %35, %32 ], [ %.01, %28 ], [ %.01, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %16, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !92

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
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

6:                                                ; preds = %20, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !93

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.12 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %13, !llvm.loop !94

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.12
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %25, %9
  %.0 = phi ptr [ %10, %9 ], [ %26, %25 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %27

13:                                               ; preds = %11
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %24

21:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %22 = load i8, ptr %6, align 1
  %23 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %22)
  store i8 %23, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %23)
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !96

27:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  br label %7

7:                                                ; preds = %12, %3
  %.0 = phi ptr [ %0, %3 ], [ %13, %12 ]
  %8 = icmp ne ptr %.0, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %10 = load i8, ptr %6, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %10)
  store i8 %11, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %11)
  br label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !97

14:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.01 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %7, !llvm.loop !98

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.0, align 8
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
  %3 = alloca %"struct.std::less", align 1
  store i8 %1, ptr %3, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %7 = icmp ne ptr %0, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = mul nsw i64 %13, 2
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %14, i8 %15)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %16)
  br label %17

17:                                               ; preds = %8, %3
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
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  br label %9

9:                                                ; preds = %19, %4
  %.01 = phi ptr [ %1, %4 ], [ %22, %19 ]
  %.0 = phi i64 [ %2, %4 ], [ %20, %19 ]
  %10 = ptrtoint ptr %.01 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = load i8, ptr %6, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %18)
  br label %24

19:                                               ; preds = %15
  %20 = add nsw i64 %.0, -1
  %21 = load i8, ptr %7, align 1
  %22 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, i8 %21)
  %23 = load i8, ptr %8, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %22, ptr noundef %.01, i64 noundef %20, i8 %23)
  br label %9, !llvm.loop !99

24:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds double, ptr %0, i64 16
  %15 = load i8, ptr %5, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %14, i8 %15)
  %16 = load i8, ptr %6, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %14, ptr noundef %1, i8 %16)
  br label %19

17:                                               ; preds = %3
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  %7 = load i8, ptr %6, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %7)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds double, ptr %0, i64 %11
  %13 = getelementptr inbounds double, ptr %0, i64 1
  %14 = getelementptr inbounds double, ptr %1, i64 -1
  %15 = load i8, ptr %5, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %13, ptr noundef %12, ptr noundef %14, i8 %15)
  %16 = load i8, ptr %6, align 1
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %13, ptr noundef %1, ptr noundef %0, i8 %16)
  ret ptr %17
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !100

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !101

12:                                               ; preds = %4
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
  br label %22

11:                                               ; preds = %3
  %12 = sub nsw i64 %8, 2
  %13 = sdiv i64 %12, 2
  br label %14

14:                                               ; preds = %20, %11
  %.0 = phi i64 [ %13, %11 ], [ %21, %20 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  %17 = load i8, ptr %4, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %8, double noundef %16, i8 %17)
  %18 = icmp eq i64 %.0, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = add nsw i64 %.0, -1
  br label %14, !llvm.loop !102

22:                                               ; preds = %19, %10
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
  %12 = load i8, ptr %5, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 %12)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %4, ptr %6, align 1
  br label %9

9:                                                ; preds = %22, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %22 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %22 ]
  %10 = sub nsw i64 %2, 1
  %11 = sdiv i64 %10, 2
  %12 = icmp slt i64 %.0, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = add nsw i64 %.0, 1
  %15 = mul nsw i64 2, %14
  %16 = getelementptr inbounds double, ptr %0, i64 %15
  %17 = sub nsw i64 %15, 1
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %15, -1
  br label %22

22:                                               ; preds = %20, %13
  %.1 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds double, ptr %0, i64 %.1
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %24, ptr %25, align 8
  br label %9, !llvm.loop !103

26:                                               ; preds = %9
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = sub nsw i64 %2, 2
  %31 = sdiv i64 %30, 2
  %32 = icmp eq i64 %.0, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = add nsw i64 %.0, 1
  %35 = mul nsw i64 2, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds double, ptr %0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %33, %29, %26
  %.12 = phi i64 [ %36, %33 ], [ %.01, %29 ], [ %.01, %26 ]
  %41 = load i8, ptr %8, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 %41)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %1, ptr %3, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca double, align 8
  store double %3, ptr %6, align 8
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %16, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !104

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
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

6:                                                ; preds = %20, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !105

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.12 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %13, !llvm.loop !106

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.12
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %26, %9
  %.0 = phi ptr [ %10, %9 ], [ %27, %26 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load i8, ptr %6, align 1
  %23 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %22)
  %24 = load i8, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 %24)
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !108

28:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  br label %7

7:                                                ; preds = %13, %3
  %.0 = phi ptr [ %0, %3 ], [ %14, %13 ]
  %8 = icmp ne ptr %.0, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load i8, ptr %6, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %10)
  %12 = load i8, ptr %5, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 %12)
  br label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !109

15:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.01 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %9 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %7, !llvm.loop !110

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.0, align 8
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
