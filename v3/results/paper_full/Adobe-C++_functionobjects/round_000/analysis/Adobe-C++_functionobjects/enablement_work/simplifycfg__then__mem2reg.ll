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
  br i1 %8, label %9, label %22

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

22:                                               ; preds = %9, %5
  %23 = load ptr, ptr @results, align 8
  %24 = load i32, ptr @current_test, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.one_result, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw %struct.one_result, ptr %26, i32 0, i32 0
  store double %0, ptr %27, align 8
  %28 = load ptr, ptr @results, align 8
  %29 = load i32, ptr @current_test, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.one_result, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.one_result, ptr %31, i32 0, i32 1
  store ptr %1, ptr %32, align 8
  %33 = load i32, ptr @current_test, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @current_test, align 4
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

10:                                               ; preds = %23, %5
  %.04 = phi i32 [ 0, %5 ], [ %24, %23 ]
  %.0 = phi i32 [ 12, %5 ], [ %.1, %23 ]
  %11 = load i32, ptr @current_test, align 4
  %12 = icmp slt i32 %.04, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load ptr, ptr @results, align 8
  %15 = sext i32 %.04 to i64
  %16 = getelementptr inbounds %struct.one_result, ptr %14, i64 %15
  %17 = getelementptr inbounds nuw %struct.one_result, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef %18) #15
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, %.0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %13, %22
  %.1 = phi i32 [ %20, %22 ], [ %.0, %13 ]
  %24 = add nsw i32 %.04, 1
  br label %10, !llvm.loop !7

25:                                               ; preds = %10
  %26 = sub nsw i32 %.0, 12
  %27 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %26, ptr noundef @.str.2)
  %28 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %.0, ptr noundef @.str.2)
  br label %29

29:                                               ; preds = %32, %25
  %.15 = phi i32 [ 0, %25 ], [ %69, %32 ]
  %30 = load i32, ptr @current_test, align 4
  %31 = icmp slt i32 %.15, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = sext i32 %.0 to i64
  %34 = load ptr, ptr @results, align 8
  %35 = sext i32 %.15 to i64
  %36 = getelementptr inbounds %struct.one_result, ptr %34, i64 %35
  %37 = getelementptr inbounds nuw %struct.one_result, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 @strlen(ptr noundef %38) #15
  %40 = sub i64 %33, %39
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr @results, align 8
  %43 = sext i32 %.15 to i64
  %44 = getelementptr inbounds %struct.one_result, ptr %42, i64 %43
  %45 = getelementptr inbounds nuw %struct.one_result, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr @results, align 8
  %48 = sext i32 %.15 to i64
  %49 = getelementptr inbounds %struct.one_result, ptr %47, i64 %48
  %50 = getelementptr inbounds nuw %struct.one_result, ptr %49, i32 0, i32 0
  %51 = load double, ptr %50, align 8
  %52 = load ptr, ptr @results, align 8
  %53 = sext i32 %.15 to i64
  %54 = getelementptr inbounds %struct.one_result, ptr %52, i64 %53
  %55 = getelementptr inbounds nuw %struct.one_result, ptr %54, i32 0, i32 0
  %56 = load double, ptr %55, align 8
  %57 = fdiv double %9, %56
  %58 = load ptr, ptr @results, align 8
  %59 = sext i32 %.15 to i64
  %60 = getelementptr inbounds %struct.one_result, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw %struct.one_result, ptr %60, i32 0, i32 0
  %62 = load double, ptr %61, align 8
  %63 = load ptr, ptr @results, align 8
  %64 = getelementptr inbounds %struct.one_result, ptr %63, i64 0
  %65 = getelementptr inbounds nuw %struct.one_result, ptr %64, i32 0, i32 0
  %66 = load double, ptr %65, align 8
  %67 = fdiv double %62, %66
  %68 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %.15, i32 noundef %41, ptr noundef @.str.5, ptr noundef %46, double noundef %51, double noundef %57, double noundef %67)
  %69 = add nsw i32 %.15, 1
  br label %29, !llvm.loop !9

70:                                               ; preds = %29
  br label %71

71:                                               ; preds = %74, %70
  %.2 = phi i32 [ 0, %70 ], [ %81, %74 ]
  %.03 = phi double [ 0.000000e+00, %70 ], [ %80, %74 ]
  %72 = load i32, ptr @current_test, align 4
  %73 = icmp slt i32 %.2, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load ptr, ptr @results, align 8
  %76 = sext i32 %.2 to i64
  %77 = getelementptr inbounds %struct.one_result, ptr %75, i64 %76
  %78 = getelementptr inbounds nuw %struct.one_result, ptr %77, i32 0, i32 0
  %79 = load double, ptr %78, align 8
  %80 = fadd double %.03, %79
  %81 = add nsw i32 %.2, 1
  br label %71, !llvm.loop !10

82:                                               ; preds = %71
  %83 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %.03)
  %84 = load i32, ptr @current_test, align 4
  %85 = icmp sgt i32 %84, 1
  %86 = icmp ne i32 %4, 0
  %or.cond = select i1 %85, i1 %86, i1 false
  br i1 %or.cond, label %87, label %112

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %91, %87
  %.3 = phi i32 [ 1, %87 ], [ %104, %91 ]
  %.02 = phi double [ 0.000000e+00, %87 ], [ %103, %91 ]
  %89 = load i32, ptr @current_test, align 4
  %90 = icmp slt i32 %.3, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load ptr, ptr @results, align 8
  %93 = sext i32 %.3 to i64
  %94 = getelementptr inbounds %struct.one_result, ptr %92, i64 %93
  %95 = getelementptr inbounds nuw %struct.one_result, ptr %94, i32 0, i32 0
  %96 = load double, ptr %95, align 8
  %97 = load ptr, ptr @results, align 8
  %98 = getelementptr inbounds %struct.one_result, ptr %97, i64 0
  %99 = getelementptr inbounds nuw %struct.one_result, ptr %98, i32 0, i32 0
  %100 = load double, ptr %99, align 8
  %101 = fdiv double %96, %100
  %102 = call double @log(double noundef %101) #15
  %103 = fadd double %.02, %102
  %104 = add nsw i32 %.3, 1
  br label %88, !llvm.loop !11

105:                                              ; preds = %88
  %106 = load i32, ptr @current_test, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %.02, %108
  %110 = call double @exp(double noundef %109) #15
  %111 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %110)
  br label %112

112:                                              ; preds = %105, %82
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

3:                                                ; preds = %16, %2
  %.02 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.0 = phi i32 [ 12, %2 ], [ %.1, %16 ]
  %4 = load i32, ptr @current_test, align 4
  %5 = icmp slt i32 %.02, %4
  br i1 %5, label %6, label %18

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

16:                                               ; preds = %6, %15
  %.1 = phi i32 [ %13, %15 ], [ %.0, %6 ]
  %17 = add nsw i32 %.02, 1
  br label %3, !llvm.loop !12

18:                                               ; preds = %3
  %19 = sub nsw i32 %.0, 12
  %20 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %19, ptr noundef @.str.2)
  %21 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %.0, ptr noundef @.str.2)
  br label %22

22:                                               ; preds = %25, %18
  %.13 = phi i32 [ 0, %18 ], [ %46, %25 ]
  %23 = load i32, ptr @current_test, align 4
  %24 = icmp slt i32 %.13, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = sext i32 %.0 to i64
  %27 = load ptr, ptr @results, align 8
  %28 = sext i32 %.13 to i64
  %29 = getelementptr inbounds %struct.one_result, ptr %27, i64 %28
  %30 = getelementptr inbounds nuw %struct.one_result, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = call i64 @strlen(ptr noundef %31) #15
  %33 = sub i64 %26, %32
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr @results, align 8
  %36 = sext i32 %.13 to i64
  %37 = getelementptr inbounds %struct.one_result, ptr %35, i64 %36
  %38 = getelementptr inbounds nuw %struct.one_result, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr @results, align 8
  %41 = sext i32 %.13 to i64
  %42 = getelementptr inbounds %struct.one_result, ptr %40, i64 %41
  %43 = getelementptr inbounds nuw %struct.one_result, ptr %42, i32 0, i32 0
  %44 = load double, ptr %43, align 8
  %45 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %.13, i32 noundef %34, ptr noundef @.str.5, ptr noundef %39, double noundef %44)
  %46 = add nsw i32 %.13, 1
  br label %22, !llvm.loop !13

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %51, %47
  %.2 = phi i32 [ 0, %47 ], [ %58, %51 ]
  %.01 = phi double [ 0.000000e+00, %47 ], [ %57, %51 ]
  %49 = load i32, ptr @current_test, align 4
  %50 = icmp slt i32 %.2, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load ptr, ptr @results, align 8
  %53 = sext i32 %.2 to i64
  %54 = getelementptr inbounds %struct.one_result, ptr %52, i64 %53
  %55 = getelementptr inbounds nuw %struct.one_result, ptr %54, i32 0, i32 0
  %56 = load double, ptr %55, align 8
  %57 = fadd double %.01, %56
  %58 = add nsw i32 %.2, 1
  br label %48, !llvm.loop !14

59:                                               ; preds = %48
  %60 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %.01)
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
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %25, %9
  %.01 = phi ptr [ %0, %9 ], [ %.12, %25 ]
  %.0 = phi ptr [ %1, %9 ], [ %13, %25 ]
  br label %12

12:                                               ; preds = %12, %11
  %.1 = phi ptr [ %.0, %11 ], [ %13, %12 ]
  %13 = getelementptr inbounds double, ptr %.1, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %12, label %16, !llvm.loop !15

16:                                               ; preds = %12
  %17 = icmp ult ptr %.01, %13
  br i1 %17, label %18, label %28

18:                                               ; preds = %16, %21
  %.12 = phi ptr [ %.01, %16 ], [ %22, %21 ]
  %19 = load double, ptr %.12, align 8
  %20 = call noundef zeroext i1 %2(double noundef %19, double noundef %10)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %18, !llvm.loop !16

23:                                               ; preds = %18
  %24 = icmp ult ptr %.12, %13
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load double, ptr %13, align 8
  %27 = load double, ptr %.12, align 8
  store double %27, ptr %13, align 8
  store double %26, ptr %.12, align 8
  br label %11, !llvm.loop !17

28:                                               ; preds = %23, %16
  %29 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %29, ptr noundef %2)
  %30 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %30, ptr noundef %1, ptr noundef %2)
  br label %31

31:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %25, %9
  %.01 = phi ptr [ %0, %9 ], [ %.12, %25 ]
  %.0 = phi ptr [ %1, %9 ], [ %13, %25 ]
  br label %12

12:                                               ; preds = %12, %11
  %.1 = phi ptr [ %.0, %11 ], [ %13, %12 ]
  %13 = getelementptr inbounds double, ptr %.1, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %12, label %16, !llvm.loop !18

16:                                               ; preds = %12
  %17 = icmp ult ptr %.01, %13
  br i1 %17, label %18, label %28

18:                                               ; preds = %16, %21
  %.12 = phi ptr [ %.01, %16 ], [ %22, %21 ]
  %19 = load double, ptr %.12, align 8
  %20 = call noundef zeroext i1 %2(double noundef %19, double noundef %10)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %18, !llvm.loop !19

23:                                               ; preds = %18
  %24 = icmp ult ptr %.12, %13
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load double, ptr %13, align 8
  %27 = load double, ptr %.12, align 8
  store double %27, ptr %13, align 8
  store double %26, ptr %.12, align 8
  br label %11, !llvm.loop !20

28:                                               ; preds = %23, %16
  %29 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %29, ptr noundef %2)
  %30 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %30, ptr noundef %1, ptr noundef %2)
  br label %31

31:                                               ; preds = %28, %3
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
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi i32 [ %13, %10 ], [ 300, %2 ]
  %16 = icmp slt i32 2, %0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %1, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @atoi(ptr noundef %19)
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi i32 [ %20, %17 ], [ 10000, %14 ]
  %23 = add nsw i32 %22, 123
  call void @srand(i32 noundef %23)
  %24 = sext i32 %22 to i64
  %25 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %24, i64 8)
  %26 = extractvalue { i64, i1 } %25, 1
  %27 = extractvalue { i64, i1 } %25, 0
  %28 = select i1 %26, i64 -1, i64 %27
  %29 = call noalias noundef nonnull ptr @_Znay(i64 noundef %28) #16
  br label %30

30:                                               ; preds = %32, %21
  %.0 = phi i32 [ 0, %21 ], [ %37, %32 ]
  %31 = icmp slt i32 %.0, %22
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = call i32 @rand()
  %34 = sitofp i32 %33 to double
  %35 = sext i32 %.0 to i64
  %36 = getelementptr inbounds double, ptr %29, i64 %35
  store double %34, ptr %36, align 8
  %37 = add nsw i32 %.0, 1
  br label %30, !llvm.loop !21

38:                                               ; preds = %30
  %39 = sext i32 %22 to i64
  %40 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %39, i64 8)
  %41 = extractvalue { i64, i1 } %40, 1
  %42 = extractvalue { i64, i1 } %40, 0
  %43 = select i1 %41, i64 -1, i64 %42
  %44 = call noalias noundef nonnull ptr @_Znay(i64 noundef %43) #16
  br label %45

45:                                               ; preds = %47, %38
  %.01 = phi i32 [ 0, %38 ], [ %54, %47 ]
  %46 = icmp slt i32 %.01, %15
  br i1 %46, label %47, label %55

47:                                               ; preds = %45
  %48 = sext i32 %22 to i64
  %49 = getelementptr inbounds double, ptr %29, i64 %48
  %50 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %49, ptr noundef %44)
  %51 = sext i32 %22 to i64
  call void @qsort(ptr noundef %44, i64 noundef %51, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %52 = sext i32 %22 to i64
  %53 = getelementptr inbounds double, ptr %44, i64 %52
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %53)
  %54 = add nsw i32 %.01, 1
  br label %45, !llvm.loop !22

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %58, %55
  %.1 = phi i32 [ 0, %55 ], [ %66, %58 ]
  %57 = icmp slt i32 %.1, %15
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  %59 = sext i32 %22 to i64
  %60 = getelementptr inbounds double, ptr %29, i64 %59
  %61 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %60, ptr noundef %44)
  %62 = sext i32 %22 to i64
  %63 = getelementptr inbounds double, ptr %44, i64 %62
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %44, ptr noundef %63, ptr noundef @_Z19less_than_function2dd)
  %64 = sext i32 %22 to i64
  %65 = getelementptr inbounds double, ptr %44, i64 %64
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %65)
  %66 = add nsw i32 %.1, 1
  br label %56, !llvm.loop !23

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %70, %67
  %.2 = phi i32 [ 0, %67 ], [ %78, %70 ]
  %69 = icmp slt i32 %.2, %15
  br i1 %69, label %70, label %79

70:                                               ; preds = %68
  %71 = sext i32 %22 to i64
  %72 = getelementptr inbounds double, ptr %29, i64 %71
  %73 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %72, ptr noundef %44)
  %74 = sext i32 %22 to i64
  %75 = getelementptr inbounds double, ptr %44, i64 %74
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %44, ptr noundef %75, ptr noundef @_Z19less_than_function2dd)
  %76 = sext i32 %22 to i64
  %77 = getelementptr inbounds double, ptr %44, i64 %76
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %77)
  %78 = add nsw i32 %.2, 1
  br label %68, !llvm.loop !24

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %82, %79
  %.3 = phi i32 [ 0, %79 ], [ %90, %82 ]
  %81 = icmp slt i32 %.3, %15
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = sext i32 %22 to i64
  %84 = getelementptr inbounds double, ptr %29, i64 %83
  %85 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %84, ptr noundef %44)
  %86 = sext i32 %22 to i64
  %87 = getelementptr inbounds double, ptr %44, i64 %86
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %44, ptr noundef %87)
  %88 = sext i32 %22 to i64
  %89 = getelementptr inbounds double, ptr %44, i64 %88
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %89)
  %90 = add nsw i32 %.3, 1
  br label %80, !llvm.loop !25

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %94, %91
  %.4 = phi i32 [ 0, %91 ], [ %102, %94 ]
  %93 = icmp slt i32 %.4, %15
  br i1 %93, label %94, label %103

94:                                               ; preds = %92
  %95 = sext i32 %22 to i64
  %96 = getelementptr inbounds double, ptr %29, i64 %95
  %97 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %96, ptr noundef %44)
  %98 = sext i32 %22 to i64
  %99 = getelementptr inbounds double, ptr %44, i64 %98
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %44, ptr noundef %99, ptr noundef @_Z19less_than_function2dd)
  %100 = sext i32 %22 to i64
  %101 = getelementptr inbounds double, ptr %44, i64 %100
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %101)
  %102 = add nsw i32 %.4, 1
  br label %92, !llvm.loop !26

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %106, %103
  %.5 = phi i32 [ 0, %103 ], [ %116, %106 ]
  %105 = icmp slt i32 %.5, %15
  br i1 %105, label %106, label %117

106:                                              ; preds = %104
  %107 = sext i32 %22 to i64
  %108 = getelementptr inbounds double, ptr %29, i64 %107
  %109 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %108, ptr noundef %44)
  %110 = sext i32 %22 to i64
  %111 = getelementptr inbounds double, ptr %44, i64 %110
  %112 = getelementptr inbounds nuw %struct.less_than_functor, ptr %3, i32 0, i32 0
  %113 = load i8, ptr %112, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef %111, i8 %113)
  %114 = sext i32 %22 to i64
  %115 = getelementptr inbounds double, ptr %44, i64 %114
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %115)
  %116 = add nsw i32 %.5, 1
  br label %104, !llvm.loop !27

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %120, %117
  %.6 = phi i32 [ 0, %117 ], [ %130, %120 ]
  %119 = icmp slt i32 %.6, %15
  br i1 %119, label %120, label %131

120:                                              ; preds = %118
  %121 = sext i32 %22 to i64
  %122 = getelementptr inbounds double, ptr %44, i64 %121
  %123 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  %124 = load i8, ptr %123, align 1
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef %122, i8 %124)
  %125 = sext i32 %22 to i64
  %126 = getelementptr inbounds double, ptr %44, i64 %125
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %126)
  %127 = sext i32 %22 to i64
  %128 = getelementptr inbounds double, ptr %29, i64 %127
  %129 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %128, ptr noundef %44)
  %130 = add nsw i32 %.6, 1
  br label %118, !llvm.loop !28

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %134, %131
  %.7 = phi i32 [ 0, %131 ], [ %144, %134 ]
  %133 = icmp slt i32 %.7, %15
  br i1 %133, label %134, label %145

134:                                              ; preds = %132
  %135 = sext i32 %22 to i64
  %136 = getelementptr inbounds double, ptr %29, i64 %135
  %137 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %136, ptr noundef %44)
  %138 = sext i32 %22 to i64
  %139 = getelementptr inbounds double, ptr %44, i64 %138
  %140 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %5, i32 0, i32 0
  %141 = load i8, ptr %140, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef %139, i8 %141)
  %142 = sext i32 %22 to i64
  %143 = getelementptr inbounds double, ptr %44, i64 %142
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %143)
  %144 = add nsw i32 %.7, 1
  br label %132, !llvm.loop !29

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %148, %145
  %.8 = phi i32 [ 0, %145 ], [ %158, %148 ]
  %147 = icmp slt i32 %.8, %15
  br i1 %147, label %148, label %159

148:                                              ; preds = %146
  %149 = sext i32 %22 to i64
  %150 = getelementptr inbounds double, ptr %29, i64 %149
  %151 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %150, ptr noundef %44)
  %152 = sext i32 %22 to i64
  %153 = getelementptr inbounds double, ptr %44, i64 %152
  %154 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %6, i32 0, i32 0
  %155 = load i8, ptr %154, align 1
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef %153, i8 %155)
  %156 = sext i32 %22 to i64
  %157 = getelementptr inbounds double, ptr %44, i64 %156
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %157)
  %158 = add nsw i32 %.8, 1
  br label %146, !llvm.loop !30

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %162, %159
  %.9 = phi i32 [ 0, %159 ], [ %172, %162 ]
  %161 = icmp slt i32 %.9, %15
  br i1 %161, label %162, label %173

162:                                              ; preds = %160
  %163 = sext i32 %22 to i64
  %164 = getelementptr inbounds double, ptr %29, i64 %163
  %165 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %164, ptr noundef %44)
  %166 = sext i32 %22 to i64
  %167 = getelementptr inbounds double, ptr %44, i64 %166
  %168 = getelementptr inbounds nuw %"struct.std::less", ptr %7, i32 0, i32 0
  %169 = load i8, ptr %168, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %44, ptr noundef %167, i8 %169)
  %170 = sext i32 %22 to i64
  %171 = getelementptr inbounds double, ptr %44, i64 %170
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %171)
  %172 = add nsw i32 %.9, 1
  br label %160, !llvm.loop !31

173:                                              ; preds = %160
  br label %174

174:                                              ; preds = %176, %173
  %.10 = phi i32 [ 0, %173 ], [ %186, %176 ]
  %175 = icmp slt i32 %.10, %15
  br i1 %175, label %176, label %187

176:                                              ; preds = %174
  %177 = sext i32 %22 to i64
  %178 = getelementptr inbounds double, ptr %29, i64 %177
  %179 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %178, ptr noundef %44)
  %180 = sext i32 %22 to i64
  %181 = getelementptr inbounds double, ptr %44, i64 %180
  %182 = getelementptr inbounds nuw %"struct.std::less", ptr %8, i32 0, i32 0
  %183 = load i8, ptr %182, align 1
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %44, ptr noundef %181, i8 %183)
  %184 = sext i32 %22 to i64
  %185 = getelementptr inbounds double, ptr %44, i64 %184
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %185)
  %186 = add nsw i32 %.10, 1
  br label %174, !llvm.loop !32

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %190, %187
  %.11 = phi i32 [ 0, %187 ], [ %198, %190 ]
  %189 = icmp slt i32 %.11, %15
  br i1 %189, label %190, label %199

190:                                              ; preds = %188
  %191 = sext i32 %22 to i64
  %192 = getelementptr inbounds double, ptr %29, i64 %191
  %193 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %192, ptr noundef %44)
  %194 = sext i32 %22 to i64
  %195 = getelementptr inbounds double, ptr %44, i64 %194
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %44, ptr noundef %195)
  %196 = sext i32 %22 to i64
  %197 = getelementptr inbounds double, ptr %44, i64 %196
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %197)
  %198 = add nsw i32 %.11, 1
  br label %188, !llvm.loop !33

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %202, %199
  %.12 = phi i32 [ 0, %199 ], [ %210, %202 ]
  %201 = icmp slt i32 %.12, %15
  br i1 %201, label %202, label %211

202:                                              ; preds = %200
  %203 = sext i32 %22 to i64
  %204 = getelementptr inbounds double, ptr %29, i64 %203
  %205 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %29, ptr noundef %204, ptr noundef %44)
  %206 = sext i32 %22 to i64
  %207 = getelementptr inbounds double, ptr %44, i64 %206
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %44, ptr noundef %207)
  %208 = sext i32 %22 to i64
  %209 = getelementptr inbounds double, ptr %44, i64 %208
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %44, ptr noundef %209)
  %210 = add nsw i32 %.12, 1
  br label %200, !llvm.loop !34

211:                                              ; preds = %200
  %212 = icmp eq ptr %44, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %211
  call void @_ZdaPv(ptr noundef %44) #17
  br label %214

214:                                              ; preds = %213, %211
  %215 = icmp eq ptr %29, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %214
  call void @_ZdaPv(ptr noundef %29) #17
  br label %217

217:                                              ; preds = %216, %214
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

4:                                                ; preds = %6, %2
  %.01 = phi ptr [ %0, %2 ], [ %9, %6 ]
  %.0 = phi ptr [ %3, %2 ], [ %7, %6 ]
  %5 = icmp ne ptr %.0, %1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %8 = load double, ptr %.0, align 8
  %9 = getelementptr inbounds nuw double, ptr %.01, i32 1
  %10 = load double, ptr %.01, align 8
  %11 = fcmp olt double %8, %10
  br i1 %11, label %12, label %4, !llvm.loop !35

12:                                               ; preds = %6
  %13 = load i32, ptr @current_test, align 4
  %14 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %24, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12, %24 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %24 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds double, ptr %.1, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %9, double noundef %13)
  br i1 %14, label %11, label %15, !llvm.loop !36

15:                                               ; preds = %11
  %16 = icmp ult ptr %.01, %12
  br i1 %16, label %17, label %27

17:                                               ; preds = %15, %20
  %.12 = phi ptr [ %.01, %15 ], [ %21, %20 ]
  %18 = load double, ptr %.12, align 8
  %19 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %18, double noundef %9)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %17, !llvm.loop !37

22:                                               ; preds = %17
  %23 = icmp ult ptr %.12, %12
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load double, ptr %12, align 8
  %26 = load double, ptr %.12, align 8
  store double %26, ptr %12, align 8
  store double %25, ptr %.12, align 8
  br label %10, !llvm.loop !38

27:                                               ; preds = %22, %15
  %28 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %28, ptr noundef @_Z19less_than_function2dd)
  %29 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %29, ptr noundef %1, ptr noundef @_Z19less_than_function2dd)
  br label %30

30:                                               ; preds = %27, %2
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
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %28, %14
  %.01 = phi ptr [ %0, %14 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %14 ], [ %18, %28 ]
  br label %17

17:                                               ; preds = %17, %16
  %.1 = phi ptr [ %.0, %16 ], [ %18, %17 ]
  %18 = getelementptr inbounds double, ptr %.1, i32 -1
  %19 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %19, label %17, label %20, !llvm.loop !39

20:                                               ; preds = %17
  %21 = icmp ult ptr %.01, %18
  br i1 %21, label %22, label %31

22:                                               ; preds = %20, %24
  %.12 = phi ptr [ %.01, %20 ], [ %25, %24 ]
  %23 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %22, !llvm.loop !40

26:                                               ; preds = %22
  %27 = icmp ult ptr %.12, %18
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load double, ptr %18, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %18, align 8
  store double %29, ptr %.12, align 8
  br label %16, !llvm.loop !41

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds double, ptr %18, i64 1
  %33 = getelementptr inbounds nuw %struct.less_than_functor, ptr %6, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %32, i8 %34)
  %35 = getelementptr inbounds double, ptr %18, i64 1
  %36 = getelementptr inbounds nuw %struct.less_than_functor, ptr %7, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %1, i8 %37)
  br label %38

38:                                               ; preds = %31, %3
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
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %28, %14
  %.01 = phi ptr [ %0, %14 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %14 ], [ %18, %28 ]
  br label %17

17:                                               ; preds = %17, %16
  %.1 = phi ptr [ %.0, %16 ], [ %18, %17 ]
  %18 = getelementptr inbounds double, ptr %.1, i32 -1
  %19 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %19, label %17, label %20, !llvm.loop !42

20:                                               ; preds = %17
  %21 = icmp ult ptr %.01, %18
  br i1 %21, label %22, label %31

22:                                               ; preds = %20, %24
  %.12 = phi ptr [ %.01, %20 ], [ %25, %24 ]
  %23 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %22, !llvm.loop !43

26:                                               ; preds = %22
  %27 = icmp ult ptr %.12, %18
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load double, ptr %18, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %18, align 8
  store double %29, ptr %.12, align 8
  br label %16, !llvm.loop !44

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds double, ptr %18, i64 1
  %33 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %6, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %32, i8 %34)
  %35 = getelementptr inbounds double, ptr %18, i64 1
  %36 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %7, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %1, i8 %37)
  br label %38

38:                                               ; preds = %31, %3
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
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %28, %14
  %.01 = phi ptr [ %0, %14 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %14 ], [ %18, %28 ]
  br label %17

17:                                               ; preds = %17, %16
  %.1 = phi ptr [ %.0, %16 ], [ %18, %17 ]
  %18 = getelementptr inbounds double, ptr %.1, i32 -1
  %19 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %19, label %17, label %20, !llvm.loop !45

20:                                               ; preds = %17
  %21 = icmp ult ptr %.01, %18
  br i1 %21, label %22, label %31

22:                                               ; preds = %20, %24
  %.12 = phi ptr [ %.01, %20 ], [ %25, %24 ]
  %23 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %22, !llvm.loop !46

26:                                               ; preds = %22
  %27 = icmp ult ptr %.12, %18
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load double, ptr %18, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %18, align 8
  store double %29, ptr %.12, align 8
  br label %16, !llvm.loop !47

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds double, ptr %18, i64 1
  %33 = getelementptr inbounds nuw %"struct.std::less", ptr %6, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %32, i8 %34)
  %35 = getelementptr inbounds double, ptr %18, i64 1
  %36 = getelementptr inbounds nuw %"struct.std::less", ptr %7, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %35, ptr noundef %1, i8 %37)
  br label %38

38:                                               ; preds = %31, %3
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
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %24, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12, %24 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %24 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds double, ptr %.1, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = fcmp olt double %9, %13
  br i1 %14, label %11, label %15, !llvm.loop !48

15:                                               ; preds = %11
  %16 = icmp ult ptr %.01, %12
  br i1 %16, label %17, label %27

17:                                               ; preds = %15, %20
  %.12 = phi ptr [ %.01, %15 ], [ %21, %20 ]
  %18 = load double, ptr %.12, align 8
  %19 = fcmp olt double %18, %9
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw double, ptr %.12, i32 1
  br label %17, !llvm.loop !49

22:                                               ; preds = %17
  %23 = icmp ult ptr %.12, %12
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load double, ptr %12, align 8
  %26 = load double, ptr %.12, align 8
  store double %26, ptr %12, align 8
  store double %25, ptr %.12, align 8
  br label %10, !llvm.loop !50

27:                                               ; preds = %22, %15
  %28 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %28)
  %29 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %29, ptr noundef %1)
  br label %30

30:                                               ; preds = %27, %2
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
  br label %17

12:                                               ; preds = %3
  %13 = icmp eq i64 %7, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load double, ptr %0, align 8
  store double %15, ptr %2, align 8
  %16 = getelementptr inbounds nuw double, ptr %2, i32 1
  br label %17

17:                                               ; preds = %12, %14, %9
  %.0 = phi ptr [ %11, %9 ], [ %16, %14 ], [ %2, %12 ]
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
  br label %11

11:                                               ; preds = %23, %4
  %.01 = phi ptr [ %1, %4 ], [ %28, %23 ]
  %.0 = phi i64 [ %2, %4 ], [ %24, %23 ]
  %12 = ptrtoint ptr %.01 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = icmp sgt i64 %15, 16
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = icmp eq i64 %.0, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %5, i64 8, i1 false)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %21 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i64 %22)
  br label %32

23:                                               ; preds = %17
  %24 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 8, i1 false)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %7, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i64
  %28 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i64 %27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 8, i1 false)
  %29 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %8, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %28, ptr noundef %.01, i64 noundef %24, i64 %31)
  br label %11, !llvm.loop !51

32:                                               ; preds = %19, %11
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

8:                                                ; preds = %13, %4
  %.0 = phi ptr [ %1, %4 ], [ %14, %13 ]
  %9 = icmp ult ptr %.0, %2
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %13

13:                                               ; preds = %10, %12
  %14 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %8, !llvm.loop !52

15:                                               ; preds = %8
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
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %24, %10
  %.0 = phi i64 [ %16, %10 ], [ %25, %24 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %2, i64 8, i1 false)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %21 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i64 %22)
  %23 = icmp eq i64 %.0, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !54

26:                                               ; preds = %17, %3
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
  br label %10

10:                                               ; preds = %23, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %23 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %23 ]
  %11 = sub nsw i64 %2, 1
  %12 = sdiv i64 %11, 2
  %13 = icmp slt i64 %.0, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = add nsw i64 %.0, 1
  %16 = mul nsw i64 2, %15
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = sub nsw i64 %16, 1
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %17, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = add nsw i64 %16, -1
  br label %23

23:                                               ; preds = %21, %14
  %.1 = phi i64 [ %22, %21 ], [ %16, %14 ]
  %24 = getelementptr inbounds double, ptr %0, i64 %.1
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %25, ptr %26, align 8
  br label %10, !llvm.loop !55

27:                                               ; preds = %10
  %28 = and i64 %2, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = sub nsw i64 %2, 2
  %32 = sdiv i64 %31, 2
  %33 = icmp eq i64 %.0, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = add nsw i64 %.0, 1
  %36 = mul nsw i64 2, %35
  %37 = sub nsw i64 %36, 1
  %38 = getelementptr inbounds double, ptr %0, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %39, ptr %40, align 8
  %41 = sub nsw i64 %36, 1
  br label %42

42:                                               ; preds = %34, %30, %27
  %.12 = phi i64 [ %41, %34 ], [ %.01, %30 ], [ %.01, %27 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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

9:                                                ; preds = %14, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %14 ]
  %.0 = phi i64 [ %8, %5 ], [ %19, %14 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %13, label %14, label %.critedge

14:                                               ; preds = %11
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %16, ptr %17, align 8
  %18 = sub nsw i64 %.0, 1
  %19 = sdiv i64 %18, 2
  br label %9, !llvm.loop !56

.critedge:                                        ; preds = %9, %11
  %20 = load double, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %20, ptr %21, align 8
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
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %24

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %24

16:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %24

17:                                               ; preds = %5
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %24

20:                                               ; preds = %17
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %24

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %24

24:                                               ; preds = %19, %23, %22, %12, %16, %15
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
  %.01 = phi ptr [ %1, %4 ], [ %.12, %22 ]
  %.0 = phi ptr [ %0, %4 ], [ %23, %22 ]
  br label %9

9:                                                ; preds = %11, %8
  %.1 = phi ptr [ %.0, %8 ], [ %12, %11 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %9, !llvm.loop !57

13:                                               ; preds = %9
  %14 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %15

15:                                               ; preds = %17, %13
  %.12 = phi ptr [ %14, %13 ], [ %18, %17 ]
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %15, !llvm.loop !58

19:                                               ; preds = %15
  %20 = icmp ult ptr %.1, %.12
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  ret ptr %.1

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %23 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  br i1 %9, label %34, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  br label %12

12:                                               ; preds = %32, %10
  %.0 = phi ptr [ %11, %10 ], [ %33, %32 ]
  %13 = icmp ne ptr %.0, %1
  br i1 %13, label %14, label %34

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

32:                                               ; preds = %16, %22
  %33 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %12, !llvm.loop !60

34:                                               ; preds = %3, %12
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
  br label %9

9:                                                ; preds = %11, %3
  %.0 = phi ptr [ %0, %3 ], [ %21, %11 ]
  %10 = icmp ne ptr %.0, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %12 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i64
  %15 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %14)
  %16 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %17 = inttoptr i64 %15 to ptr
  store ptr %17, ptr %16, align 8
  %18 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %5, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %20)
  %21 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %9, !llvm.loop !61

22:                                               ; preds = %9
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

9:                                                ; preds = %11, %2
  %.01 = phi ptr [ %8, %2 ], [ %13, %11 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %11 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = load double, ptr %.01, align 8
  store double %12, ptr %.0, align 8
  %13 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %9, !llvm.loop !62

14:                                               ; preds = %9
  %15 = load double, ptr %4, align 8
  store double %15, ptr %.0, align 8
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
  br label %19

14:                                               ; preds = %3
  %15 = icmp eq i64 %8, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load double, ptr %0, align 8
  %18 = load ptr, ptr %4, align 8
  store double %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %14, %16, %11
  %20 = load ptr, ptr %4, align 8
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  %5 = getelementptr inbounds nuw %"struct.std::random_access_iterator_tag", ptr %4, i32 0, i32 0
  store i8 %2, ptr %5, align 1
  %6 = call i1 @llvm.is.constant.i64(i64 %1)
  %7 = icmp eq i64 %1, 1
  %or.cond = select i1 %6, i1 %7, i1 false
  br i1 %or.cond, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds nuw double, ptr %9, i32 1
  store ptr %10, ptr %0, align 8
  br label %20

11:                                               ; preds = %3
  %12 = call i1 @llvm.is.constant.i64(i64 %1)
  %13 = icmp eq i64 %1, -1
  %or.cond3 = select i1 %12, i1 %13, i1 false
  br i1 %or.cond3, label %14, label %17

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %0, align 8
  br label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds double, ptr %18, i64 %1
  store ptr %19, ptr %0, align 8
  br label %20

20:                                               ; preds = %14, %17, %8
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %20)
  br label %28

21:                                               ; preds = %16
  %22 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %7, i32 0, i32 0
  %24 = load i8, ptr %23, align 1
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %25, ptr noundef %.01, i64 noundef %22, i8 %27)
  br label %10, !llvm.loop !63

28:                                               ; preds = %18, %10
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

7:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %8 = icmp ult ptr %.0, %2
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !64

14:                                               ; preds = %7
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
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %10
  %.0 = phi i64 [ %16, %10 ], [ %24, %23 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 %21)
  %22 = icmp eq i64 %.0, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !66

25:                                               ; preds = %17, %3
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
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %18)
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
  br label %9, !llvm.loop !67

26:                                               ; preds = %9
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = sub nsw i64 %2, 2
  %31 = sdiv i64 %30, 2
  %32 = icmp eq i64 %.0, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = add nsw i64 %.0, 1
  %35 = mul nsw i64 2, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds double, ptr %0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %38, ptr %39, align 8
  %40 = sub nsw i64 %35, 1
  br label %41

41:                                               ; preds = %33, %29, %26
  %.12 = phi i64 [ %40, %33 ], [ %.01, %29 ], [ %.01, %26 ]
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

9:                                                ; preds = %14, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %14 ]
  %.0 = phi i64 [ %8, %5 ], [ %19, %14 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %13, label %14, label %.critedge

14:                                               ; preds = %11
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %16, ptr %17, align 8
  %18 = sub nsw i64 %.0, 1
  %19 = sdiv i64 %18, 2
  br label %9, !llvm.loop !68

.critedge:                                        ; preds = %9, %11
  %20 = load double, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %20, ptr %21, align 8
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
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

16:                                               ; preds = %5
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

23:                                               ; preds = %18, %22, %21, %11, %15, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi ptr [ %.0, %7 ], [ %11, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %8, !llvm.loop !69

12:                                               ; preds = %8
  %13 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %14, !llvm.loop !70

18:                                               ; preds = %14
  %19 = icmp ult ptr %.1, %.12
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.1

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %28, %9
  %.0 = phi ptr [ %10, %9 ], [ %29, %28 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %30

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

28:                                               ; preds = %15, %21
  %29 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !72

30:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  br label %8

8:                                                ; preds = %10, %3
  %.0 = phi ptr [ %0, %3 ], [ %17, %10 ]
  %9 = icmp ne ptr %.0, %1
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %12)
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %5, i32 0, i32 0
  %16 = load i8, ptr %15, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %16)
  %17 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %8, !llvm.loop !73

18:                                               ; preds = %8
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

8:                                                ; preds = %10, %2
  %.01 = phi ptr [ %7, %2 ], [ %12, %10 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load double, ptr %.01, align 8
  store double %11, ptr %.0, align 8
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %8, !llvm.loop !74

13:                                               ; preds = %8
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.0, align 8
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %20)
  br label %28

21:                                               ; preds = %16
  %22 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %7, i32 0, i32 0
  %24 = load i8, ptr %23, align 1
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %25, ptr noundef %.01, i64 noundef %22, i8 %27)
  br label %10, !llvm.loop !75

28:                                               ; preds = %18, %10
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

7:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %8 = icmp ult ptr %.0, %2
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !76

14:                                               ; preds = %7
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
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %10
  %.0 = phi i64 [ %16, %10 ], [ %24, %23 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 %21)
  %22 = icmp eq i64 %.0, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !78

25:                                               ; preds = %17, %3
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
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %18)
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
  br label %9, !llvm.loop !79

26:                                               ; preds = %9
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = sub nsw i64 %2, 2
  %31 = sdiv i64 %30, 2
  %32 = icmp eq i64 %.0, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = add nsw i64 %.0, 1
  %35 = mul nsw i64 2, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds double, ptr %0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %38, ptr %39, align 8
  %40 = sub nsw i64 %35, 1
  br label %41

41:                                               ; preds = %33, %29, %26
  %.12 = phi i64 [ %40, %33 ], [ %.01, %29 ], [ %.01, %26 ]
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

9:                                                ; preds = %14, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %14 ]
  %.0 = phi i64 [ %8, %5 ], [ %19, %14 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %13, label %14, label %.critedge

14:                                               ; preds = %11
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %16, ptr %17, align 8
  %18 = sub nsw i64 %.0, 1
  %19 = sdiv i64 %18, 2
  br label %9, !llvm.loop !80

.critedge:                                        ; preds = %9, %11
  %20 = load double, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %20, ptr %21, align 8
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
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

16:                                               ; preds = %5
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

23:                                               ; preds = %18, %22, %21, %11, %15, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi ptr [ %.0, %7 ], [ %11, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %8, !llvm.loop !81

12:                                               ; preds = %8
  %13 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %14, !llvm.loop !82

18:                                               ; preds = %14
  %19 = icmp ult ptr %.1, %.12
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.1

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %28, %9
  %.0 = phi ptr [ %10, %9 ], [ %29, %28 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %30

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

28:                                               ; preds = %15, %21
  %29 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !84

30:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  br label %8

8:                                                ; preds = %10, %3
  %.0 = phi ptr [ %0, %3 ], [ %17, %10 ]
  %9 = icmp ne ptr %.0, %1
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %12)
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %5, i32 0, i32 0
  %16 = load i8, ptr %15, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %16)
  %17 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %8, !llvm.loop !85

18:                                               ; preds = %8
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

8:                                                ; preds = %10, %2
  %.01 = phi ptr [ %7, %2 ], [ %12, %10 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load double, ptr %.01, align 8
  store double %11, ptr %.0, align 8
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %8, !llvm.loop !86

13:                                               ; preds = %8
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.0, align 8
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 1, i1 false)
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %20)
  br label %28

21:                                               ; preds = %16
  %22 = add nsw i64 %.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %5, i64 1, i1 false)
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %7, i32 0, i32 0
  %24 = load i8, ptr %23, align 1
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i8 %24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %5, i64 1, i1 false)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %25, ptr noundef %.01, i64 noundef %22, i8 %27)
  br label %10, !llvm.loop !87

28:                                               ; preds = %18, %10
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

7:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %8 = icmp ult ptr %.0, %2
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !88

14:                                               ; preds = %7
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
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %10
  %.0 = phi i64 [ %16, %10 ], [ %24, %23 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %2, i64 1, i1 false)
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 %21)
  %22 = icmp eq i64 %.0, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !90

25:                                               ; preds = %17, %3
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
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %16, ptr noundef %18)
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
  br label %9, !llvm.loop !91

26:                                               ; preds = %9
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = sub nsw i64 %2, 2
  %31 = sdiv i64 %30, 2
  %32 = icmp eq i64 %.0, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = add nsw i64 %.0, 1
  %35 = mul nsw i64 2, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds double, ptr %0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %38, ptr %39, align 8
  %40 = sub nsw i64 %35, 1
  br label %41

41:                                               ; preds = %33, %29, %26
  %.12 = phi i64 [ %40, %33 ], [ %.01, %29 ], [ %.01, %26 ]
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

9:                                                ; preds = %14, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %14 ]
  %.0 = phi i64 [ %8, %5 ], [ %19, %14 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %13, label %14, label %.critedge

14:                                               ; preds = %11
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %16, ptr %17, align 8
  %18 = sub nsw i64 %.0, 1
  %19 = sdiv i64 %18, 2
  br label %9, !llvm.loop !92

.critedge:                                        ; preds = %9, %11
  %20 = load double, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %20, ptr %21, align 8
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
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

16:                                               ; preds = %5
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

23:                                               ; preds = %18, %22, %21, %11, %15, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi ptr [ %.0, %7 ], [ %11, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %8, !llvm.loop !93

12:                                               ; preds = %8
  %13 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %14, !llvm.loop !94

18:                                               ; preds = %14
  %19 = icmp ult ptr %.1, %.12
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.1

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %28, %9
  %.0 = phi ptr [ %10, %9 ], [ %29, %28 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %30

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

28:                                               ; preds = %15, %21
  %29 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !96

30:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  br label %8

8:                                                ; preds = %10, %3
  %.0 = phi ptr [ %0, %3 ], [ %17, %10 ]
  %9 = icmp ne ptr %.0, %1
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %4, i64 1, i1 false)
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %12)
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %5, i32 0, i32 0
  %16 = load i8, ptr %15, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %16)
  %17 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %8, !llvm.loop !97

18:                                               ; preds = %8
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

8:                                                ; preds = %10, %2
  %.01 = phi ptr [ %7, %2 ], [ %12, %10 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load double, ptr %.01, align 8
  store double %11, ptr %.0, align 8
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %8, !llvm.loop !98

13:                                               ; preds = %8
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.0, align 8
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
  %19 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %20)
  br label %28

21:                                               ; preds = %16
  %22 = add nsw i64 %.0, -1
  %23 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %7, i32 0, i32 0
  %24 = load i8, ptr %23, align 1
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, i8 %24)
  %26 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %25, ptr noundef %.01, i64 noundef %22, i8 %27)
  br label %10, !llvm.loop !99

28:                                               ; preds = %18, %10
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

7:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %8 = icmp ult ptr %.0, %2
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !100

14:                                               ; preds = %7
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
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %10
  %.0 = phi i64 [ %16, %10 ], [ %24, %23 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 %21)
  %22 = icmp eq i64 %.0, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !102

25:                                               ; preds = %17, %3
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
  br label %10

10:                                               ; preds = %23, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %23 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %23 ]
  %11 = sub nsw i64 %2, 1
  %12 = sdiv i64 %11, 2
  %13 = icmp slt i64 %.0, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = add nsw i64 %.0, 1
  %16 = mul nsw i64 2, %15
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = sub nsw i64 %16, 1
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %17, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = add nsw i64 %16, -1
  br label %23

23:                                               ; preds = %21, %14
  %.1 = phi i64 [ %22, %21 ], [ %16, %14 ]
  %24 = getelementptr inbounds double, ptr %0, i64 %.1
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %25, ptr %26, align 8
  br label %10, !llvm.loop !103

27:                                               ; preds = %10
  %28 = and i64 %2, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = sub nsw i64 %2, 2
  %32 = sdiv i64 %31, 2
  %33 = icmp eq i64 %.0, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = add nsw i64 %.0, 1
  %36 = mul nsw i64 2, %35
  %37 = sub nsw i64 %36, 1
  %38 = getelementptr inbounds double, ptr %0, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %39, ptr %40, align 8
  %41 = sub nsw i64 %36, 1
  br label %42

42:                                               ; preds = %34, %30, %27
  %.12 = phi i64 [ %41, %34 ], [ %.01, %30 ], [ %.01, %27 ]
  %43 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %8, i32 0, i32 0
  %44 = load i8, ptr %43, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 %44)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %14, %5
  %.01 = phi i64 [ %1, %5 ], [ %.0, %14 ]
  %.0 = phi i64 [ %8, %5 ], [ %19, %14 ]
  %10 = icmp sgt i64 %.01, %2
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %13, label %14, label %.critedge

14:                                               ; preds = %11
  %15 = getelementptr inbounds double, ptr %0, i64 %.0
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %16, ptr %17, align 8
  %18 = sub nsw i64 %.0, 1
  %19 = sdiv i64 %18, 2
  br label %9, !llvm.loop !104

.critedge:                                        ; preds = %9, %11
  %20 = load double, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %0, i64 %.01
  store double %20, ptr %21, align 8
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
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

16:                                               ; preds = %5
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

23:                                               ; preds = %18, %22, %21, %11, %15, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi ptr [ %.0, %7 ], [ %11, %10 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %8, !llvm.loop !105

12:                                               ; preds = %8
  %13 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.12)
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %.12, i32 -1
  br label %14, !llvm.loop !106

18:                                               ; preds = %14
  %19 = icmp ult ptr %.1, %.12
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.1

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.12)
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  br label %11

11:                                               ; preds = %27, %9
  %.0 = phi ptr [ %10, %9 ], [ %28, %27 ]
  %12 = icmp ne ptr %.0, %1
  br i1 %12, label %13, label %29

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
  br label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %23)
  %25 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %5, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 %26)
  br label %27

27:                                               ; preds = %15, %21
  %28 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %11, !llvm.loop !108

29:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  br label %8

8:                                                ; preds = %10, %3
  %.0 = phi ptr [ %0, %3 ], [ %16, %10 ]
  %9 = icmp ne ptr %.0, %1
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %12)
  %14 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %5, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 %15)
  %16 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %8, !llvm.loop !109

17:                                               ; preds = %8
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

8:                                                ; preds = %10, %2
  %.01 = phi ptr [ %7, %2 ], [ %12, %10 ]
  %.0 = phi ptr [ %0, %2 ], [ %.01, %10 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.01)
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load double, ptr %.01, align 8
  store double %11, ptr %.0, align 8
  %12 = getelementptr inbounds double, ptr %.01, i32 -1
  br label %8, !llvm.loop !110

13:                                               ; preds = %8
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.0, align 8
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
