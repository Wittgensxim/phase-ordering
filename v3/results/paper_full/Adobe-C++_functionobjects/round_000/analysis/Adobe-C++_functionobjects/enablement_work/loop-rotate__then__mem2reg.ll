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
  %10 = load i32, ptr @current_test, align 4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %23
  %.014 = phi i32 [ 0, %.lr.ph ], [ %24, %23 ]
  %.0 = phi i32 [ 12, %.lr.ph ], [ %.2, %23 ]
  %13 = load ptr, ptr @results, align 8
  %14 = sext i32 %.014 to i64
  %15 = getelementptr inbounds %struct.one_result, ptr %13, i64 %14
  %16 = getelementptr inbounds nuw %struct.one_result, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i64 @strlen(ptr noundef %17) #15
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %19, %.0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %12
  %.2 = phi i32 [ %19, %21 ], [ %.0, %12 ]
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.014, 1
  %25 = load i32, ptr @current_test, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge, %5
  %.1 = phi i32 [ %.2, %._crit_edge ], [ 12, %5 ]
  %28 = sub nsw i32 %.1, 12
  %29 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %28, ptr noundef @.str.2)
  %30 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %.1, ptr noundef @.str.2)
  %31 = load i32, ptr @current_test, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %.lr.ph2, label %74

.lr.ph2:                                          ; preds = %27
  br label %33

33:                                               ; preds = %.lr.ph2, %70
  %.115 = phi i32 [ 0, %.lr.ph2 ], [ %71, %70 ]
  %34 = sext i32 %.1 to i64
  %35 = load ptr, ptr @results, align 8
  %36 = sext i32 %.115 to i64
  %37 = getelementptr inbounds %struct.one_result, ptr %35, i64 %36
  %38 = getelementptr inbounds nuw %struct.one_result, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 @strlen(ptr noundef %39) #15
  %41 = sub i64 %34, %40
  %42 = trunc i64 %41 to i32
  %43 = load ptr, ptr @results, align 8
  %44 = sext i32 %.115 to i64
  %45 = getelementptr inbounds %struct.one_result, ptr %43, i64 %44
  %46 = getelementptr inbounds nuw %struct.one_result, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr @results, align 8
  %49 = sext i32 %.115 to i64
  %50 = getelementptr inbounds %struct.one_result, ptr %48, i64 %49
  %51 = getelementptr inbounds nuw %struct.one_result, ptr %50, i32 0, i32 0
  %52 = load double, ptr %51, align 8
  %53 = load ptr, ptr @results, align 8
  %54 = sext i32 %.115 to i64
  %55 = getelementptr inbounds %struct.one_result, ptr %53, i64 %54
  %56 = getelementptr inbounds nuw %struct.one_result, ptr %55, i32 0, i32 0
  %57 = load double, ptr %56, align 8
  %58 = fdiv double %9, %57
  %59 = load ptr, ptr @results, align 8
  %60 = sext i32 %.115 to i64
  %61 = getelementptr inbounds %struct.one_result, ptr %59, i64 %60
  %62 = getelementptr inbounds nuw %struct.one_result, ptr %61, i32 0, i32 0
  %63 = load double, ptr %62, align 8
  %64 = load ptr, ptr @results, align 8
  %65 = getelementptr inbounds %struct.one_result, ptr %64, i64 0
  %66 = getelementptr inbounds nuw %struct.one_result, ptr %65, i32 0, i32 0
  %67 = load double, ptr %66, align 8
  %68 = fdiv double %63, %67
  %69 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %.115, i32 noundef %42, ptr noundef @.str.5, ptr noundef %47, double noundef %52, double noundef %58, double noundef %68)
  br label %70

70:                                               ; preds = %33
  %71 = add nsw i32 %.115, 1
  %72 = load i32, ptr @current_test, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %33, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %70
  br label %74

74:                                               ; preds = %._crit_edge3, %27
  %75 = load i32, ptr @current_test, align 4
  %76 = icmp slt i32 0, %75
  br i1 %76, label %.lr.ph5, label %88

.lr.ph5:                                          ; preds = %74
  br label %77

77:                                               ; preds = %.lr.ph5, %84
  %.216 = phi i32 [ 0, %.lr.ph5 ], [ %85, %84 ]
  %.012 = phi double [ 0.000000e+00, %.lr.ph5 ], [ %83, %84 ]
  %78 = load ptr, ptr @results, align 8
  %79 = sext i32 %.216 to i64
  %80 = getelementptr inbounds %struct.one_result, ptr %78, i64 %79
  %81 = getelementptr inbounds nuw %struct.one_result, ptr %80, i32 0, i32 0
  %82 = load double, ptr %81, align 8
  %83 = fadd double %.012, %82
  br label %84

84:                                               ; preds = %77
  %85 = add nsw i32 %.216, 1
  %86 = load i32, ptr @current_test, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %77, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %84
  br label %88

88:                                               ; preds = %._crit_edge6, %74
  %.113 = phi double [ %83, %._crit_edge6 ], [ 0.000000e+00, %74 ]
  %89 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %.113)
  %90 = load i32, ptr @current_test, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = icmp ne i32 %4, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %92
  %95 = load i32, ptr @current_test, align 4
  %96 = icmp slt i32 1, %95
  br i1 %96, label %.lr.ph8, label %114

.lr.ph8:                                          ; preds = %94
  br label %97

97:                                               ; preds = %.lr.ph8, %110
  %.3 = phi i32 [ 1, %.lr.ph8 ], [ %111, %110 ]
  %.010 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %109, %110 ]
  %98 = load ptr, ptr @results, align 8
  %99 = sext i32 %.3 to i64
  %100 = getelementptr inbounds %struct.one_result, ptr %98, i64 %99
  %101 = getelementptr inbounds nuw %struct.one_result, ptr %100, i32 0, i32 0
  %102 = load double, ptr %101, align 8
  %103 = load ptr, ptr @results, align 8
  %104 = getelementptr inbounds %struct.one_result, ptr %103, i64 0
  %105 = getelementptr inbounds nuw %struct.one_result, ptr %104, i32 0, i32 0
  %106 = load double, ptr %105, align 8
  %107 = fdiv double %102, %106
  %108 = call double @log(double noundef %107) #15
  %109 = fadd double %.010, %108
  br label %110

110:                                              ; preds = %97
  %111 = add nsw i32 %.3, 1
  %112 = load i32, ptr @current_test, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %97, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %110
  br label %114

114:                                              ; preds = %._crit_edge9, %94
  %.111 = phi double [ %109, %._crit_edge9 ], [ 0.000000e+00, %94 ]
  %115 = load i32, ptr @current_test, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %.111, %117
  %119 = call double @exp(double noundef %118) #15
  %120 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %119)
  br label %121

121:                                              ; preds = %114, %92, %88
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
  %3 = load i32, ptr @current_test, align 4
  %4 = icmp slt i32 0, %3
  br i1 %4, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %5

5:                                                ; preds = %.lr.ph, %16
  %.09 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %.0 = phi i32 [ 12, %.lr.ph ], [ %.2, %16 ]
  %6 = load ptr, ptr @results, align 8
  %7 = sext i32 %.09 to i64
  %8 = getelementptr inbounds %struct.one_result, ptr %6, i64 %7
  %9 = getelementptr inbounds nuw %struct.one_result, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @strlen(ptr noundef %10) #15
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, %.0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %5
  %.2 = phi i32 [ %12, %14 ], [ %.0, %5 ]
  br label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %.09, 1
  %18 = load i32, ptr @current_test, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.1 = phi i32 [ %.2, %._crit_edge ], [ 12, %2 ]
  %21 = sub nsw i32 %.1, 12
  %22 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %21, ptr noundef @.str.2)
  %23 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %.1, ptr noundef @.str.2)
  %24 = load i32, ptr @current_test, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %.lr.ph2, label %51

.lr.ph2:                                          ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph2, %47
  %.110 = phi i32 [ 0, %.lr.ph2 ], [ %48, %47 ]
  %27 = sext i32 %.1 to i64
  %28 = load ptr, ptr @results, align 8
  %29 = sext i32 %.110 to i64
  %30 = getelementptr inbounds %struct.one_result, ptr %28, i64 %29
  %31 = getelementptr inbounds nuw %struct.one_result, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 @strlen(ptr noundef %32) #15
  %34 = sub i64 %27, %33
  %35 = trunc i64 %34 to i32
  %36 = load ptr, ptr @results, align 8
  %37 = sext i32 %.110 to i64
  %38 = getelementptr inbounds %struct.one_result, ptr %36, i64 %37
  %39 = getelementptr inbounds nuw %struct.one_result, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr @results, align 8
  %42 = sext i32 %.110 to i64
  %43 = getelementptr inbounds %struct.one_result, ptr %41, i64 %42
  %44 = getelementptr inbounds nuw %struct.one_result, ptr %43, i32 0, i32 0
  %45 = load double, ptr %44, align 8
  %46 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %.110, i32 noundef %35, ptr noundef @.str.5, ptr noundef %40, double noundef %45)
  br label %47

47:                                               ; preds = %26
  %48 = add nsw i32 %.110, 1
  %49 = load i32, ptr @current_test, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %26, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %47
  br label %51

51:                                               ; preds = %._crit_edge3, %20
  %52 = load i32, ptr @current_test, align 4
  %53 = icmp slt i32 0, %52
  br i1 %53, label %.lr.ph5, label %65

.lr.ph5:                                          ; preds = %51
  br label %54

54:                                               ; preds = %.lr.ph5, %61
  %.211 = phi i32 [ 0, %.lr.ph5 ], [ %62, %61 ]
  %.07 = phi double [ 0.000000e+00, %.lr.ph5 ], [ %60, %61 ]
  %55 = load ptr, ptr @results, align 8
  %56 = sext i32 %.211 to i64
  %57 = getelementptr inbounds %struct.one_result, ptr %55, i64 %56
  %58 = getelementptr inbounds nuw %struct.one_result, ptr %57, i32 0, i32 0
  %59 = load double, ptr %58, align 8
  %60 = fadd double %.07, %59
  br label %61

61:                                               ; preds = %54
  %62 = add nsw i32 %.211, 1
  %63 = load i32, ptr @current_test, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %54, label %._crit_edge6, !llvm.loop !14

._crit_edge6:                                     ; preds = %61
  br label %65

65:                                               ; preds = %._crit_edge6, %51
  %.18 = phi double [ %60, %._crit_edge6 ], [ 0.000000e+00, %51 ]
  %66 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %.18)
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
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.01 = phi ptr [ %0, %9 ], [ %.2, %29 ]
  %.0 = phi ptr [ %1, %9 ], [ %13, %29 ]
  br label %12

12:                                               ; preds = %12, %11
  %.1 = phi ptr [ %.0, %11 ], [ %13, %12 ]
  %13 = getelementptr inbounds double, ptr %.1, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %12, label %16, !llvm.loop !15

16:                                               ; preds = %12
  %17 = icmp ult ptr %.01, %13
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %32

19:                                               ; preds = %16
  %20 = load double, ptr %.01, align 8
  %21 = call noundef zeroext i1 %2(double noundef %20, double noundef %10)
  br i1 %21, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %19
  br label %22

22:                                               ; preds = %.lr.ph, %22
  %.12 = phi ptr [ %.01, %.lr.ph ], [ %23, %22 ]
  %23 = getelementptr inbounds nuw double, ptr %.12, i32 1
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %24, double noundef %10)
  br i1 %25, label %22, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge, %19
  %.2 = phi ptr [ %23, %._crit_edge ], [ %.01, %19 ]
  %27 = icmp ult ptr %.2, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.2, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.2, align 8
  br label %11, !llvm.loop !17

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  %34 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %34, ptr noundef %1, ptr noundef %2)
  br label %35

35:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.01 = phi ptr [ %0, %9 ], [ %.2, %29 ]
  %.0 = phi ptr [ %1, %9 ], [ %13, %29 ]
  br label %12

12:                                               ; preds = %12, %11
  %.1 = phi ptr [ %.0, %11 ], [ %13, %12 ]
  %13 = getelementptr inbounds double, ptr %.1, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %12, label %16, !llvm.loop !18

16:                                               ; preds = %12
  %17 = icmp ult ptr %.01, %13
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %32

19:                                               ; preds = %16
  %20 = load double, ptr %.01, align 8
  %21 = call noundef zeroext i1 %2(double noundef %20, double noundef %10)
  br i1 %21, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %19
  br label %22

22:                                               ; preds = %.lr.ph, %22
  %.12 = phi ptr [ %.01, %.lr.ph ], [ %23, %22 ]
  %23 = getelementptr inbounds nuw double, ptr %.12, i32 1
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %24, double noundef %10)
  br i1 %25, label %22, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge, %19
  %.2 = phi ptr [ %23, %._crit_edge ], [ %.01, %19 ]
  %27 = icmp ult ptr %.2, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.2, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.2, align 8
  br label %11, !llvm.loop !20

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  %34 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %34, ptr noundef %1, ptr noundef %2)
  br label %35

35:                                               ; preds = %32, %3
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
  %32 = icmp slt i32 0, %24
  br i1 %32, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %23
  br label %33

33:                                               ; preds = %.lr.ph, %38
  %.0 = phi i32 [ 0, %.lr.ph ], [ %39, %38 ]
  %34 = call i32 @rand()
  %35 = sitofp i32 %34 to double
  %36 = sext i32 %.0 to i64
  %37 = getelementptr inbounds double, ptr %31, i64 %36
  store double %35, ptr %37, align 8
  br label %38

38:                                               ; preds = %33
  %39 = add nsw i32 %.0, 1
  %40 = icmp slt i32 %39, %24
  br i1 %40, label %33, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %38
  br label %41

41:                                               ; preds = %._crit_edge, %23
  %42 = sext i32 %24 to i64
  %43 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %42, i64 8)
  %44 = extractvalue { i64, i1 } %43, 1
  %45 = extractvalue { i64, i1 } %43, 0
  %46 = select i1 %44, i64 -1, i64 %45
  %47 = call noalias noundef nonnull ptr @_Znay(i64 noundef %46) #16
  %48 = icmp slt i32 0, %16
  br i1 %48, label %.lr.ph2, label %59

.lr.ph2:                                          ; preds = %41
  br label %49

49:                                               ; preds = %.lr.ph2, %56
  %.040 = phi i32 [ 0, %.lr.ph2 ], [ %57, %56 ]
  %50 = sext i32 %24 to i64
  %51 = getelementptr inbounds double, ptr %31, i64 %50
  %52 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %51, ptr noundef %47)
  %53 = sext i32 %24 to i64
  call void @qsort(ptr noundef %47, i64 noundef %53, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %54 = sext i32 %24 to i64
  %55 = getelementptr inbounds double, ptr %47, i64 %54
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %55)
  br label %56

56:                                               ; preds = %49
  %57 = add nsw i32 %.040, 1
  %58 = icmp slt i32 %57, %16
  br i1 %58, label %49, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %56
  br label %59

59:                                               ; preds = %._crit_edge3, %41
  %60 = icmp slt i32 0, %16
  br i1 %60, label %.lr.ph5, label %72

.lr.ph5:                                          ; preds = %59
  br label %61

61:                                               ; preds = %.lr.ph5, %69
  %.1 = phi i32 [ 0, %.lr.ph5 ], [ %70, %69 ]
  %62 = sext i32 %24 to i64
  %63 = getelementptr inbounds double, ptr %31, i64 %62
  %64 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %63, ptr noundef %47)
  %65 = sext i32 %24 to i64
  %66 = getelementptr inbounds double, ptr %47, i64 %65
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %47, ptr noundef %66, ptr noundef @_Z19less_than_function2dd)
  %67 = sext i32 %24 to i64
  %68 = getelementptr inbounds double, ptr %47, i64 %67
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %68)
  br label %69

69:                                               ; preds = %61
  %70 = add nsw i32 %.1, 1
  %71 = icmp slt i32 %70, %16
  br i1 %71, label %61, label %._crit_edge6, !llvm.loop !23

._crit_edge6:                                     ; preds = %69
  br label %72

72:                                               ; preds = %._crit_edge6, %59
  %73 = icmp slt i32 0, %16
  br i1 %73, label %.lr.ph8, label %85

.lr.ph8:                                          ; preds = %72
  br label %74

74:                                               ; preds = %.lr.ph8, %82
  %.2 = phi i32 [ 0, %.lr.ph8 ], [ %83, %82 ]
  %75 = sext i32 %24 to i64
  %76 = getelementptr inbounds double, ptr %31, i64 %75
  %77 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %76, ptr noundef %47)
  %78 = sext i32 %24 to i64
  %79 = getelementptr inbounds double, ptr %47, i64 %78
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %47, ptr noundef %79, ptr noundef @_Z19less_than_function2dd)
  %80 = sext i32 %24 to i64
  %81 = getelementptr inbounds double, ptr %47, i64 %80
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %81)
  br label %82

82:                                               ; preds = %74
  %83 = add nsw i32 %.2, 1
  %84 = icmp slt i32 %83, %16
  br i1 %84, label %74, label %._crit_edge9, !llvm.loop !24

._crit_edge9:                                     ; preds = %82
  br label %85

85:                                               ; preds = %._crit_edge9, %72
  %86 = icmp slt i32 0, %16
  br i1 %86, label %.lr.ph11, label %98

.lr.ph11:                                         ; preds = %85
  br label %87

87:                                               ; preds = %.lr.ph11, %95
  %.3 = phi i32 [ 0, %.lr.ph11 ], [ %96, %95 ]
  %88 = sext i32 %24 to i64
  %89 = getelementptr inbounds double, ptr %31, i64 %88
  %90 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %89, ptr noundef %47)
  %91 = sext i32 %24 to i64
  %92 = getelementptr inbounds double, ptr %47, i64 %91
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %47, ptr noundef %92)
  %93 = sext i32 %24 to i64
  %94 = getelementptr inbounds double, ptr %47, i64 %93
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %94)
  br label %95

95:                                               ; preds = %87
  %96 = add nsw i32 %.3, 1
  %97 = icmp slt i32 %96, %16
  br i1 %97, label %87, label %._crit_edge12, !llvm.loop !25

._crit_edge12:                                    ; preds = %95
  br label %98

98:                                               ; preds = %._crit_edge12, %85
  %99 = icmp slt i32 0, %16
  br i1 %99, label %.lr.ph14, label %111

.lr.ph14:                                         ; preds = %98
  br label %100

100:                                              ; preds = %.lr.ph14, %108
  %.4 = phi i32 [ 0, %.lr.ph14 ], [ %109, %108 ]
  %101 = sext i32 %24 to i64
  %102 = getelementptr inbounds double, ptr %31, i64 %101
  %103 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %102, ptr noundef %47)
  %104 = sext i32 %24 to i64
  %105 = getelementptr inbounds double, ptr %47, i64 %104
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %47, ptr noundef %105, ptr noundef @_Z19less_than_function2dd)
  %106 = sext i32 %24 to i64
  %107 = getelementptr inbounds double, ptr %47, i64 %106
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %107)
  br label %108

108:                                              ; preds = %100
  %109 = add nsw i32 %.4, 1
  %110 = icmp slt i32 %109, %16
  br i1 %110, label %100, label %._crit_edge15, !llvm.loop !26

._crit_edge15:                                    ; preds = %108
  br label %111

111:                                              ; preds = %._crit_edge15, %98
  %112 = icmp slt i32 0, %16
  br i1 %112, label %.lr.ph17, label %126

.lr.ph17:                                         ; preds = %111
  br label %113

113:                                              ; preds = %.lr.ph17, %123
  %.5 = phi i32 [ 0, %.lr.ph17 ], [ %124, %123 ]
  %114 = sext i32 %24 to i64
  %115 = getelementptr inbounds double, ptr %31, i64 %114
  %116 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %115, ptr noundef %47)
  %117 = sext i32 %24 to i64
  %118 = getelementptr inbounds double, ptr %47, i64 %117
  %119 = getelementptr inbounds nuw %struct.less_than_functor, ptr %3, i32 0, i32 0
  %120 = load i8, ptr %119, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %47, ptr noundef %118, i8 %120)
  %121 = sext i32 %24 to i64
  %122 = getelementptr inbounds double, ptr %47, i64 %121
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %122)
  br label %123

123:                                              ; preds = %113
  %124 = add nsw i32 %.5, 1
  %125 = icmp slt i32 %124, %16
  br i1 %125, label %113, label %._crit_edge18, !llvm.loop !27

._crit_edge18:                                    ; preds = %123
  br label %126

126:                                              ; preds = %._crit_edge18, %111
  %127 = icmp slt i32 0, %16
  br i1 %127, label %.lr.ph20, label %141

.lr.ph20:                                         ; preds = %126
  br label %128

128:                                              ; preds = %.lr.ph20, %138
  %.6 = phi i32 [ 0, %.lr.ph20 ], [ %139, %138 ]
  %129 = sext i32 %24 to i64
  %130 = getelementptr inbounds double, ptr %47, i64 %129
  %131 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  %132 = load i8, ptr %131, align 1
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %47, ptr noundef %130, i8 %132)
  %133 = sext i32 %24 to i64
  %134 = getelementptr inbounds double, ptr %47, i64 %133
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %134)
  %135 = sext i32 %24 to i64
  %136 = getelementptr inbounds double, ptr %31, i64 %135
  %137 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %136, ptr noundef %47)
  br label %138

138:                                              ; preds = %128
  %139 = add nsw i32 %.6, 1
  %140 = icmp slt i32 %139, %16
  br i1 %140, label %128, label %._crit_edge21, !llvm.loop !28

._crit_edge21:                                    ; preds = %138
  br label %141

141:                                              ; preds = %._crit_edge21, %126
  %142 = icmp slt i32 0, %16
  br i1 %142, label %.lr.ph23, label %156

.lr.ph23:                                         ; preds = %141
  br label %143

143:                                              ; preds = %.lr.ph23, %153
  %.7 = phi i32 [ 0, %.lr.ph23 ], [ %154, %153 ]
  %144 = sext i32 %24 to i64
  %145 = getelementptr inbounds double, ptr %31, i64 %144
  %146 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %145, ptr noundef %47)
  %147 = sext i32 %24 to i64
  %148 = getelementptr inbounds double, ptr %47, i64 %147
  %149 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %5, i32 0, i32 0
  %150 = load i8, ptr %149, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %47, ptr noundef %148, i8 %150)
  %151 = sext i32 %24 to i64
  %152 = getelementptr inbounds double, ptr %47, i64 %151
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %152)
  br label %153

153:                                              ; preds = %143
  %154 = add nsw i32 %.7, 1
  %155 = icmp slt i32 %154, %16
  br i1 %155, label %143, label %._crit_edge24, !llvm.loop !29

._crit_edge24:                                    ; preds = %153
  br label %156

156:                                              ; preds = %._crit_edge24, %141
  %157 = icmp slt i32 0, %16
  br i1 %157, label %.lr.ph26, label %171

.lr.ph26:                                         ; preds = %156
  br label %158

158:                                              ; preds = %.lr.ph26, %168
  %.8 = phi i32 [ 0, %.lr.ph26 ], [ %169, %168 ]
  %159 = sext i32 %24 to i64
  %160 = getelementptr inbounds double, ptr %31, i64 %159
  %161 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %160, ptr noundef %47)
  %162 = sext i32 %24 to i64
  %163 = getelementptr inbounds double, ptr %47, i64 %162
  %164 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %6, i32 0, i32 0
  %165 = load i8, ptr %164, align 1
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %47, ptr noundef %163, i8 %165)
  %166 = sext i32 %24 to i64
  %167 = getelementptr inbounds double, ptr %47, i64 %166
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %167)
  br label %168

168:                                              ; preds = %158
  %169 = add nsw i32 %.8, 1
  %170 = icmp slt i32 %169, %16
  br i1 %170, label %158, label %._crit_edge27, !llvm.loop !30

._crit_edge27:                                    ; preds = %168
  br label %171

171:                                              ; preds = %._crit_edge27, %156
  %172 = icmp slt i32 0, %16
  br i1 %172, label %.lr.ph29, label %186

.lr.ph29:                                         ; preds = %171
  br label %173

173:                                              ; preds = %.lr.ph29, %183
  %.9 = phi i32 [ 0, %.lr.ph29 ], [ %184, %183 ]
  %174 = sext i32 %24 to i64
  %175 = getelementptr inbounds double, ptr %31, i64 %174
  %176 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %175, ptr noundef %47)
  %177 = sext i32 %24 to i64
  %178 = getelementptr inbounds double, ptr %47, i64 %177
  %179 = getelementptr inbounds nuw %"struct.std::less", ptr %7, i32 0, i32 0
  %180 = load i8, ptr %179, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %47, ptr noundef %178, i8 %180)
  %181 = sext i32 %24 to i64
  %182 = getelementptr inbounds double, ptr %47, i64 %181
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %182)
  br label %183

183:                                              ; preds = %173
  %184 = add nsw i32 %.9, 1
  %185 = icmp slt i32 %184, %16
  br i1 %185, label %173, label %._crit_edge30, !llvm.loop !31

._crit_edge30:                                    ; preds = %183
  br label %186

186:                                              ; preds = %._crit_edge30, %171
  %187 = icmp slt i32 0, %16
  br i1 %187, label %.lr.ph32, label %201

.lr.ph32:                                         ; preds = %186
  br label %188

188:                                              ; preds = %.lr.ph32, %198
  %.10 = phi i32 [ 0, %.lr.ph32 ], [ %199, %198 ]
  %189 = sext i32 %24 to i64
  %190 = getelementptr inbounds double, ptr %31, i64 %189
  %191 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %190, ptr noundef %47)
  %192 = sext i32 %24 to i64
  %193 = getelementptr inbounds double, ptr %47, i64 %192
  %194 = getelementptr inbounds nuw %"struct.std::less", ptr %8, i32 0, i32 0
  %195 = load i8, ptr %194, align 1
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %47, ptr noundef %193, i8 %195)
  %196 = sext i32 %24 to i64
  %197 = getelementptr inbounds double, ptr %47, i64 %196
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %197)
  br label %198

198:                                              ; preds = %188
  %199 = add nsw i32 %.10, 1
  %200 = icmp slt i32 %199, %16
  br i1 %200, label %188, label %._crit_edge33, !llvm.loop !32

._crit_edge33:                                    ; preds = %198
  br label %201

201:                                              ; preds = %._crit_edge33, %186
  %202 = icmp slt i32 0, %16
  br i1 %202, label %.lr.ph35, label %214

.lr.ph35:                                         ; preds = %201
  br label %203

203:                                              ; preds = %.lr.ph35, %211
  %.11 = phi i32 [ 0, %.lr.ph35 ], [ %212, %211 ]
  %204 = sext i32 %24 to i64
  %205 = getelementptr inbounds double, ptr %31, i64 %204
  %206 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %205, ptr noundef %47)
  %207 = sext i32 %24 to i64
  %208 = getelementptr inbounds double, ptr %47, i64 %207
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %47, ptr noundef %208)
  %209 = sext i32 %24 to i64
  %210 = getelementptr inbounds double, ptr %47, i64 %209
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %210)
  br label %211

211:                                              ; preds = %203
  %212 = add nsw i32 %.11, 1
  %213 = icmp slt i32 %212, %16
  br i1 %213, label %203, label %._crit_edge36, !llvm.loop !33

._crit_edge36:                                    ; preds = %211
  br label %214

214:                                              ; preds = %._crit_edge36, %201
  %215 = icmp slt i32 0, %16
  br i1 %215, label %.lr.ph38, label %227

.lr.ph38:                                         ; preds = %214
  br label %216

216:                                              ; preds = %.lr.ph38, %224
  %.12 = phi i32 [ 0, %.lr.ph38 ], [ %225, %224 ]
  %217 = sext i32 %24 to i64
  %218 = getelementptr inbounds double, ptr %31, i64 %217
  %219 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %31, ptr noundef %218, ptr noundef %47)
  %220 = sext i32 %24 to i64
  %221 = getelementptr inbounds double, ptr %47, i64 %220
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %47, ptr noundef %221)
  %222 = sext i32 %24 to i64
  %223 = getelementptr inbounds double, ptr %47, i64 %222
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %47, ptr noundef %223)
  br label %224

224:                                              ; preds = %216
  %225 = add nsw i32 %.12, 1
  %226 = icmp slt i32 %225, %16
  br i1 %226, label %216, label %._crit_edge39, !llvm.loop !34

._crit_edge39:                                    ; preds = %224
  br label %227

227:                                              ; preds = %._crit_edge39, %214
  %228 = icmp eq ptr %47, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %227
  call void @_ZdaPv(ptr noundef %47) #17
  br label %230

230:                                              ; preds = %229, %227
  %231 = icmp eq ptr %31, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %230
  call void @_ZdaPv(ptr noundef %31) #17
  br label %233

233:                                              ; preds = %232, %230
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
  %4 = icmp ne ptr %3, %1
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  br label %7

5:                                                ; preds = %7
  %6 = icmp ne ptr %8, %1
  br i1 %6, label %7, label %..loopexit_crit_edge, !llvm.loop !35

7:                                                ; preds = %.lr.ph, %5
  %.01 = phi ptr [ %0, %.lr.ph ], [ %10, %5 ]
  %.0 = phi ptr [ %3, %.lr.ph ], [ %8, %5 ]
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %9 = load double, ptr %.0, align 8
  %10 = getelementptr inbounds nuw double, ptr %.01, i32 1
  %11 = load double, ptr %.01, align 8
  %12 = fcmp olt double %9, %11
  br i1 %12, label %13, label %5

13:                                               ; preds = %7
  %14 = load i32, ptr @current_test, align 4
  %15 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %14)
  br label %16

..loopexit_crit_edge:                             ; preds = %5
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  br label %16

16:                                               ; preds = %.loopexit, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.2, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %28 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds double, ptr %.1, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %9, double noundef %13)
  br i1 %14, label %11, label %15, !llvm.loop !36

15:                                               ; preds = %11
  %16 = icmp ult ptr %.01, %12
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  br label %31

18:                                               ; preds = %15
  %19 = load double, ptr %.01, align 8
  %20 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %19, double noundef %9)
  br i1 %20, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %.12 = phi ptr [ %.01, %.lr.ph ], [ %22, %21 ]
  %22 = getelementptr inbounds nuw double, ptr %.12, i32 1
  %23 = load double, ptr %22, align 8
  %24 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %23, double noundef %9)
  br i1 %24, label %21, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %21
  br label %25

25:                                               ; preds = %._crit_edge, %18
  %.2 = phi ptr [ %22, %._crit_edge ], [ %.01, %18 ]
  %26 = icmp ult ptr %.2, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.2, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.2, align 8
  br label %10, !llvm.loop !38

31:                                               ; preds = %27, %17
  %32 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %32, ptr noundef @_Z19less_than_function2dd)
  %33 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %33, ptr noundef %1, ptr noundef @_Z19less_than_function2dd)
  br label %34

34:                                               ; preds = %31, %2
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
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %31, %14
  %.01 = phi ptr [ %0, %14 ], [ %.2, %31 ]
  %.0 = phi ptr [ %1, %14 ], [ %18, %31 ]
  br label %17

17:                                               ; preds = %17, %16
  %.1 = phi ptr [ %.0, %16 ], [ %18, %17 ]
  %18 = getelementptr inbounds double, ptr %.1, i32 -1
  %19 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %19, label %17, label %20, !llvm.loop !39

20:                                               ; preds = %17
  %21 = icmp ult ptr %.01, %18
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %34

23:                                               ; preds = %20
  %24 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.01, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %24, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %23
  br label %25

25:                                               ; preds = %.lr.ph, %25
  %.12 = phi ptr [ %.01, %.lr.ph ], [ %26, %25 ]
  %26 = getelementptr inbounds nuw double, ptr %.12, i32 1
  %27 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %27, label %25, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %25
  br label %28

28:                                               ; preds = %._crit_edge, %23
  %.2 = phi ptr [ %26, %._crit_edge ], [ %.01, %23 ]
  %29 = icmp ult ptr %.2, %18
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %18, align 8
  %33 = load double, ptr %.2, align 8
  store double %33, ptr %18, align 8
  store double %32, ptr %.2, align 8
  br label %16, !llvm.loop !41

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds double, ptr %18, i64 1
  %36 = getelementptr inbounds nuw %struct.less_than_functor, ptr %6, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %35, i8 %37)
  %38 = getelementptr inbounds double, ptr %18, i64 1
  %39 = getelementptr inbounds nuw %struct.less_than_functor, ptr %7, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %38, ptr noundef %1, i8 %40)
  br label %41

41:                                               ; preds = %34, %3
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
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %31, %14
  %.01 = phi ptr [ %0, %14 ], [ %.2, %31 ]
  %.0 = phi ptr [ %1, %14 ], [ %18, %31 ]
  br label %17

17:                                               ; preds = %17, %16
  %.1 = phi ptr [ %.0, %16 ], [ %18, %17 ]
  %18 = getelementptr inbounds double, ptr %.1, i32 -1
  %19 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %19, label %17, label %20, !llvm.loop !42

20:                                               ; preds = %17
  %21 = icmp ult ptr %.01, %18
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %34

23:                                               ; preds = %20
  %24 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.01, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %24, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %23
  br label %25

25:                                               ; preds = %.lr.ph, %25
  %.12 = phi ptr [ %.01, %.lr.ph ], [ %26, %25 ]
  %26 = getelementptr inbounds nuw double, ptr %.12, i32 1
  %27 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %27, label %25, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %25
  br label %28

28:                                               ; preds = %._crit_edge, %23
  %.2 = phi ptr [ %26, %._crit_edge ], [ %.01, %23 ]
  %29 = icmp ult ptr %.2, %18
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %18, align 8
  %33 = load double, ptr %.2, align 8
  store double %33, ptr %18, align 8
  store double %32, ptr %.2, align 8
  br label %16, !llvm.loop !44

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds double, ptr %18, i64 1
  %36 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %6, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %35, i8 %37)
  %38 = getelementptr inbounds double, ptr %18, i64 1
  %39 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %7, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %38, ptr noundef %1, i8 %40)
  br label %41

41:                                               ; preds = %34, %3
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
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %31, %14
  %.01 = phi ptr [ %0, %14 ], [ %.2, %31 ]
  %.0 = phi ptr [ %1, %14 ], [ %18, %31 ]
  br label %17

17:                                               ; preds = %17, %16
  %.1 = phi ptr [ %.0, %16 ], [ %18, %17 ]
  %18 = getelementptr inbounds double, ptr %.1, i32 -1
  %19 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %19, label %17, label %20, !llvm.loop !45

20:                                               ; preds = %17
  %21 = icmp ult ptr %.01, %18
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %34

23:                                               ; preds = %20
  %24 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.01, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %24, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %23
  br label %25

25:                                               ; preds = %.lr.ph, %25
  %.12 = phi ptr [ %.01, %.lr.ph ], [ %26, %25 ]
  %26 = getelementptr inbounds nuw double, ptr %.12, i32 1
  %27 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %27, label %25, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %25
  br label %28

28:                                               ; preds = %._crit_edge, %23
  %.2 = phi ptr [ %26, %._crit_edge ], [ %.01, %23 ]
  %29 = icmp ult ptr %.2, %18
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  br label %34

31:                                               ; preds = %28
  %32 = load double, ptr %18, align 8
  %33 = load double, ptr %.2, align 8
  store double %33, ptr %18, align 8
  store double %32, ptr %.2, align 8
  br label %16, !llvm.loop !47

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds double, ptr %18, i64 1
  %36 = getelementptr inbounds nuw %"struct.std::less", ptr %6, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %35, i8 %37)
  %38 = getelementptr inbounds double, ptr %18, i64 1
  %39 = getelementptr inbounds nuw %"struct.std::less", ptr %7, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %38, ptr noundef %1, i8 %40)
  br label %41

41:                                               ; preds = %34, %3
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
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.2, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %28 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds double, ptr %.1, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = fcmp olt double %9, %13
  br i1 %14, label %11, label %15, !llvm.loop !48

15:                                               ; preds = %11
  %16 = icmp ult ptr %.01, %12
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  br label %31

18:                                               ; preds = %15
  %19 = load double, ptr %.01, align 8
  %20 = fcmp olt double %19, %9
  br i1 %20, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %.12 = phi ptr [ %.01, %.lr.ph ], [ %22, %21 ]
  %22 = getelementptr inbounds nuw double, ptr %.12, i32 1
  %23 = load double, ptr %22, align 8
  %24 = fcmp olt double %23, %9
  br i1 %24, label %21, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %21
  br label %25

25:                                               ; preds = %._crit_edge, %18
  %.2 = phi ptr [ %22, %._crit_edge ], [ %.01, %18 ]
  %26 = icmp ult ptr %.2, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.2, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.2, align 8
  br label %10, !llvm.loop !50

31:                                               ; preds = %27, %17
  %32 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %32)
  %33 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %33, ptr noundef %1)
  br label %34

34:                                               ; preds = %31, %2
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
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 16
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %16

16:                                               ; preds = %.lr.ph, %22
  %.01 = phi ptr [ %1, %.lr.ph ], [ %27, %22 ]
  %.0 = phi i64 [ %2, %.lr.ph ], [ %23, %22 ]
  %17 = icmp eq i64 %.0, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %5, i64 8, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i64 %21)
  br label %36

22:                                               ; preds = %16
  %23 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 8, i1 false)
  %24 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %25 to i64
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i64 %26)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 8, i1 false)
  %28 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %8, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %29 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %27, ptr noundef %.01, i64 noundef %23, i64 %30)
  %31 = ptrtoint ptr %27 to i64
  %32 = ptrtoint ptr %0 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = icmp sgt i64 %34, 16
  br i1 %35, label %16, label %..loopexit_crit_edge, !llvm.loop !51

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %36

36:                                               ; preds = %.loopexit, %18
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
  %8 = icmp ult ptr %1, %2
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %13
  %.0 = phi ptr [ %1, %.lr.ph ], [ %14, %13 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %15 = icmp ult ptr %14, %2
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %13
  br label %16

16:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %28

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  br label %18

18:                                               ; preds = %26, %11
  %.0 = phi i64 [ %17, %11 ], [ %27, %26 ]
  %19 = getelementptr inbounds double, ptr %0, i64 %.0
  %20 = load double, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %2, i64 8, i1 false)
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %22 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %15, double noundef %20, i64 %23)
  %24 = icmp eq i64 %.0, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %28

26:                                               ; preds = %18
  %27 = add nsw i64 %.0, -1
  br label %18, !llvm.loop !54

28:                                               ; preds = %25, %10
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
  %12 = icmp slt i64 %1, %11
  br i1 %12, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %5
  br label %13

13:                                               ; preds = %.lr.ph, %22
  %.01 = phi i64 [ %1, %.lr.ph ], [ %.2, %22 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %22 ]
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
  %.2 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds double, ptr %0, i64 %.2
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %24, ptr %25, align 8
  %26 = sub nsw i64 %2, 1
  %27 = sdiv i64 %26, 2
  %28 = icmp slt i64 %.2, %27
  br i1 %28, label %13, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %22
  br label %29

29:                                               ; preds = %._crit_edge, %5
  %.12 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = sub nsw i64 %2, 2
  %34 = sdiv i64 %33, 2
  %35 = icmp eq i64 %.1, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = add nsw i64 %.1, 1
  %38 = mul nsw i64 2, %37
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds double, ptr %0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %0, i64 %.12
  store double %41, ptr %42, align 8
  %43 = sub nsw i64 %38, 1
  br label %44

44:                                               ; preds = %36, %32, %29
  %.23 = phi i64 [ %43, %36 ], [ %.12, %32 ], [ %.12, %29 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.23, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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

8:                                                ; preds = %22, %4
  %.04 = phi ptr [ %1, %4 ], [ %.26, %22 ]
  %.0 = phi ptr [ %0, %4 ], [ %23, %22 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %9, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %8
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %11, %10 ]
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %10, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %8
  %.2 = phi ptr [ %11, %._crit_edge ], [ %.0, %8 ]
  %14 = getelementptr inbounds double, ptr %.04, i32 -1
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %14)
  br i1 %15, label %.lr.ph2, label %19

.lr.ph2:                                          ; preds = %13
  br label %16

16:                                               ; preds = %.lr.ph2, %16
  %.15 = phi ptr [ %14, %.lr.ph2 ], [ %17, %16 ]
  %17 = getelementptr inbounds double, ptr %.15, i32 -1
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %17)
  br i1 %18, label %16, label %._crit_edge3, !llvm.loop !58

._crit_edge3:                                     ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge3, %13
  %.26 = phi ptr [ %17, %._crit_edge3 ], [ %14, %13 ]
  %20 = icmp ult ptr %.2, %.26
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  ret ptr %.2

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.26)
  %23 = getelementptr inbounds nuw double, ptr %.2, i32 1
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %8 = inttoptr i64 %2 to ptr
  store ptr %8, ptr %7, align 8
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %36

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = icmp ne ptr %12, %1
  br i1 %13, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %11
  br label %14

14:                                               ; preds = %.lr.ph, %33
  %.0 = phi ptr [ %12, %.lr.ph ], [ %34, %33 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load double, ptr %.0, align 8
  %18 = getelementptr inbounds double, ptr %.0, i64 1
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %21 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %19, ptr noundef %20, ptr noundef %18)
  store double %17, ptr %0, align 8
  br label %32

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %24 to i64
  %26 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %25)
  %27 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %28 = inttoptr i64 %26 to ptr
  store ptr %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %31)
  br label %32

32:                                               ; preds = %22, %16
  br label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %35 = icmp ne ptr %34, %1
  br i1 %35, label %14, label %..loopexit_crit_edge, !llvm.loop !60

..loopexit_crit_edge:                             ; preds = %33
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %11
  br label %36

36:                                               ; preds = %.loopexit, %10
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
  %9 = icmp ne ptr %0, %1
  br i1 %9, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %3
  br label %10

10:                                               ; preds = %.lr.ph, %20
  %.0 = phi ptr [ %0, %.lr.ph ], [ %21, %20 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %12 to i64
  %14 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %13)
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %16 = inttoptr i64 %14 to ptr
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %19)
  br label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %22 = icmp ne ptr %21, %1
  br i1 %22, label %10, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge, %3
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
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8)
  br i1 %9, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %.01 = phi ptr [ %8, %.lr.ph ], [ %12, %10 ]
  %.0 = phi ptr [ %0, %.lr.ph ], [ %.01, %10 ]
  %11 = load double, ptr %.01, align 8
  store double %11, ptr %.0, align 8
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12)
  br i1 %13, label %10, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %10
  br label %14

14:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.01, %._crit_edge ], [ %0, %2 ]
  %15 = load double, ptr %4, align 8
  store double %15, ptr %.1, align 8
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
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %15

15:                                               ; preds = %.lr.ph, %20
  %.01 = phi ptr [ %1, %.lr.ph ], [ %24, %20 ]
  %.0 = phi i64 [ %2, %.lr.ph ], [ %21, %20 ]
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %19)
  br label %32

20:                                               ; preds = %15
  %21 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %8, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %24, ptr noundef %.01, i64 noundef %21, i8 %26)
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %0 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = icmp sgt i64 %30, 16
  br i1 %31, label %15, label %..loopexit_crit_edge, !llvm.loop !63

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %32

32:                                               ; preds = %.loopexit, %17
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
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %27

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  br label %18

18:                                               ; preds = %25, %11
  %.0 = phi i64 [ %17, %11 ], [ %26, %25 ]
  %19 = getelementptr inbounds double, ptr %0, i64 %.0
  %20 = load double, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  %22 = load i8, ptr %21, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %15, double noundef %20, i8 %22)
  %23 = icmp eq i64 %.0, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %27

25:                                               ; preds = %18
  %26 = add nsw i64 %.0, -1
  br label %18, !llvm.loop !66

27:                                               ; preds = %24, %10
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
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.01 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
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
  %.2 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.2
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  %25 = sub nsw i64 %2, 1
  %26 = sdiv i64 %25, 2
  %27 = icmp slt i64 %.2, %26
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %5
  %.12 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %.1, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = add nsw i64 %.1, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %0, i64 %.12
  store double %40, ptr %41, align 8
  %42 = sub nsw i64 %37, 1
  br label %43

43:                                               ; preds = %35, %31, %28
  %.23 = phi i64 [ %42, %35 ], [ %.12, %31 ], [ %.12, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.23, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

7:                                                ; preds = %21, %4
  %.04 = phi ptr [ %1, %4 ], [ %.26, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.04, i32 -1
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.15 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.15, i32 -1
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !70

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.26 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.26
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.26)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %10
  br label %13

13:                                               ; preds = %.lr.ph, %29
  %.0 = phi ptr [ %11, %.lr.ph ], [ %30, %29 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %28

21:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %23)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %27)
  br label %28

28:                                               ; preds = %21, %15
  br label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %31 = icmp ne ptr %30, %1
  br i1 %31, label %13, label %..loopexit_crit_edge, !llvm.loop !72

..loopexit_crit_edge:                             ; preds = %29
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %32

32:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %16
  %.0 = phi ptr [ %0, %.lr.ph ], [ %17, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %11)
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %15)
  br label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %18 = icmp ne ptr %17, %1
  br i1 %18, label %9, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %3
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
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.01 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %.lr.ph ], [ %.01, %9 ]
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.01, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
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
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %15

15:                                               ; preds = %.lr.ph, %20
  %.01 = phi ptr [ %1, %.lr.ph ], [ %24, %20 ]
  %.0 = phi i64 [ %2, %.lr.ph ], [ %21, %20 ]
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %19)
  br label %32

20:                                               ; preds = %15
  %21 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %8, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %24, ptr noundef %.01, i64 noundef %21, i8 %26)
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %0 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = icmp sgt i64 %30, 16
  br i1 %31, label %15, label %..loopexit_crit_edge, !llvm.loop !75

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %32

32:                                               ; preds = %.loopexit, %17
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
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %27

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  br label %18

18:                                               ; preds = %25, %11
  %.0 = phi i64 [ %17, %11 ], [ %26, %25 ]
  %19 = getelementptr inbounds double, ptr %0, i64 %.0
  %20 = load double, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  %22 = load i8, ptr %21, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %15, double noundef %20, i8 %22)
  %23 = icmp eq i64 %.0, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %27

25:                                               ; preds = %18
  %26 = add nsw i64 %.0, -1
  br label %18, !llvm.loop !78

27:                                               ; preds = %24, %10
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
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.01 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
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
  %.2 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.2
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  %25 = sub nsw i64 %2, 1
  %26 = sdiv i64 %25, 2
  %27 = icmp slt i64 %.2, %26
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %5
  %.12 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %.1, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = add nsw i64 %.1, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %0, i64 %.12
  store double %40, ptr %41, align 8
  %42 = sub nsw i64 %37, 1
  br label %43

43:                                               ; preds = %35, %31, %28
  %.23 = phi i64 [ %42, %35 ], [ %.12, %31 ], [ %.12, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.23, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

7:                                                ; preds = %21, %4
  %.04 = phi ptr [ %1, %4 ], [ %.26, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.04, i32 -1
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.15 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.15, i32 -1
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !82

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.26 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.26
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.26)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %10
  br label %13

13:                                               ; preds = %.lr.ph, %29
  %.0 = phi ptr [ %11, %.lr.ph ], [ %30, %29 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %28

21:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %23)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %27)
  br label %28

28:                                               ; preds = %21, %15
  br label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %31 = icmp ne ptr %30, %1
  br i1 %31, label %13, label %..loopexit_crit_edge, !llvm.loop !84

..loopexit_crit_edge:                             ; preds = %29
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %32

32:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %16
  %.0 = phi ptr [ %0, %.lr.ph ], [ %17, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %11)
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %15)
  br label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %18 = icmp ne ptr %17, %1
  br i1 %18, label %9, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %3
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
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.01 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %.lr.ph ], [ %.01, %9 ]
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.01, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
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
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %15

15:                                               ; preds = %.lr.ph, %20
  %.01 = phi ptr [ %1, %.lr.ph ], [ %24, %20 ]
  %.0 = phi i64 [ %2, %.lr.ph ], [ %21, %20 ]
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %19)
  br label %32

20:                                               ; preds = %15
  %21 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i8 %23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %8, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %24, ptr noundef %.01, i64 noundef %21, i8 %26)
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %0 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = icmp sgt i64 %30, 16
  br i1 %31, label %15, label %..loopexit_crit_edge, !llvm.loop !87

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %32

32:                                               ; preds = %.loopexit, %17
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
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %27

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  br label %18

18:                                               ; preds = %25, %11
  %.0 = phi i64 [ %17, %11 ], [ %26, %25 ]
  %19 = getelementptr inbounds double, ptr %0, i64 %.0
  %20 = load double, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  %22 = load i8, ptr %21, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %15, double noundef %20, i8 %22)
  %23 = icmp eq i64 %.0, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %27

25:                                               ; preds = %18
  %26 = add nsw i64 %.0, -1
  br label %18, !llvm.loop !90

27:                                               ; preds = %24, %10
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
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.01 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
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
  %.2 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.2
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  %25 = sub nsw i64 %2, 1
  %26 = sdiv i64 %25, 2
  %27 = icmp slt i64 %.2, %26
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %5
  %.12 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %.1, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = add nsw i64 %.1, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %0, i64 %.12
  store double %40, ptr %41, align 8
  %42 = sub nsw i64 %37, 1
  br label %43

43:                                               ; preds = %35, %31, %28
  %.23 = phi i64 [ %42, %35 ], [ %.12, %31 ], [ %.12, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.23, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

7:                                                ; preds = %21, %4
  %.04 = phi ptr [ %1, %4 ], [ %.26, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.04, i32 -1
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.15 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.15, i32 -1
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !94

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.26 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.26
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.26)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %10
  br label %13

13:                                               ; preds = %.lr.ph, %29
  %.0 = phi ptr [ %11, %.lr.ph ], [ %30, %29 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %28

21:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %23)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %27)
  br label %28

28:                                               ; preds = %21, %15
  br label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %31 = icmp ne ptr %30, %1
  br i1 %31, label %13, label %..loopexit_crit_edge, !llvm.loop !96

..loopexit_crit_edge:                             ; preds = %29
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %32

32:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %16
  %.0 = phi ptr [ %0, %.lr.ph ], [ %17, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %11)
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %15)
  br label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %18 = icmp ne ptr %17, %1
  br i1 %18, label %9, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %3
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
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.01 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %.lr.ph ], [ %.01, %9 ]
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.01, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
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
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %15

15:                                               ; preds = %.lr.ph, %20
  %.01 = phi ptr [ %1, %.lr.ph ], [ %24, %20 ]
  %.0 = phi i64 [ %2, %.lr.ph ], [ %21, %20 ]
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %19)
  br label %32

20:                                               ; preds = %15
  %21 = add nsw i64 %.0, -1
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, i8 %23)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %24, ptr noundef %.01, i64 noundef %21, i8 %26)
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %0 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = icmp sgt i64 %30, 16
  br i1 %31, label %15, label %..loopexit_crit_edge, !llvm.loop !99

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %32

32:                                               ; preds = %.loopexit, %17
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
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %27

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 2
  %17 = sdiv i64 %16, 2
  br label %18

18:                                               ; preds = %25, %11
  %.0 = phi i64 [ %17, %11 ], [ %26, %25 ]
  %19 = getelementptr inbounds double, ptr %0, i64 %.0
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  %22 = load i8, ptr %21, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %15, double noundef %20, i8 %22)
  %23 = icmp eq i64 %.0, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %27

25:                                               ; preds = %18
  %26 = add nsw i64 %.0, -1
  br label %18, !llvm.loop !102

27:                                               ; preds = %24, %10
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
  %12 = icmp slt i64 %1, %11
  br i1 %12, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %5
  br label %13

13:                                               ; preds = %.lr.ph, %22
  %.01 = phi i64 [ %1, %.lr.ph ], [ %.2, %22 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %22 ]
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
  %.2 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds double, ptr %0, i64 %.2
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %24, ptr %25, align 8
  %26 = sub nsw i64 %2, 1
  %27 = sdiv i64 %26, 2
  %28 = icmp slt i64 %.2, %27
  br i1 %28, label %13, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %22
  br label %29

29:                                               ; preds = %._crit_edge, %5
  %.12 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = sub nsw i64 %2, 2
  %34 = sdiv i64 %33, 2
  %35 = icmp eq i64 %.1, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = add nsw i64 %.1, 1
  %38 = mul nsw i64 2, %37
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds double, ptr %0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %0, i64 %.12
  store double %41, ptr %42, align 8
  %43 = sub nsw i64 %38, 1
  br label %44

44:                                               ; preds = %36, %32, %29
  %.23 = phi i64 [ %43, %36 ], [ %.12, %32 ], [ %.12, %29 ]
  %45 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %46 = load i8, ptr %45, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 %46)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.23, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

7:                                                ; preds = %21, %4
  %.04 = phi ptr [ %1, %4 ], [ %.26, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.04, i32 -1
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.15 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.15, i32 -1
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !106

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.26 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.26
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.26)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %31

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %10
  br label %13

13:                                               ; preds = %.lr.ph, %28
  %.0 = phi ptr [ %11, %.lr.ph ], [ %29, %28 ]
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %23)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %5, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 %26)
  br label %27

27:                                               ; preds = %21, %15
  br label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %30 = icmp ne ptr %29, %1
  br i1 %30, label %13, label %..loopexit_crit_edge, !llvm.loop !108

..loopexit_crit_edge:                             ; preds = %28
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %31

31:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  %8 = icmp ne ptr %0, %1
  br i1 %8, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %15
  %.0 = phi ptr [ %0, %.lr.ph ], [ %16, %15 ]
  %10 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %11)
  %13 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %5, i32 0, i32 0
  %14 = load i8, ptr %13, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 %14)
  br label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %17 = icmp ne ptr %16, %1
  br i1 %17, label %9, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %3
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
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.01 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %.0 = phi ptr [ %0, %.lr.ph ], [ %.01, %9 ]
  %10 = load double, ptr %.01, align 8
  store double %10, ptr %.0, align 8
  %11 = getelementptr inbounds double, ptr %.01, i32 -1
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.01, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
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
