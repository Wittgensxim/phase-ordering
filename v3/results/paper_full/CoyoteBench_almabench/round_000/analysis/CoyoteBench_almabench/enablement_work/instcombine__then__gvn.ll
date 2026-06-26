; ModuleID = 'results\paper_full\CoyoteBench_almabench\CoyoteBench_almabench.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/almabench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@a = internal constant [8 x [3 x double]] [[3 x double] [double f0x3FD8C637FD3B6253, double 0.000000e+00, double 0.000000e+00], [3 x double] [double f0x3FE725849423E3E0, double 0.000000e+00, double 0.000000e+00], [3 x double] [double f0x3FF000011136AEF5, double 0.000000e+00, double 0.000000e+00], [3 x double] [double f0x3FF860FD96F0D223, double 3.000000e-10, double 0.000000e+00], [3 x double] [double f0x4014CF7737365089, double 1.913200e-06, double -3.900000e-09], [3 x double] [double f0x40231C1D0EBB7C0F, double -2.138960e-05, double 4.440000e-08], [3 x double] [double f0x403337EC14C35EFA, double -3.716000e-07, double f0x3E7A47A3038502A4], [3 x double] [double f0x403E1C425059FB17, double -1.663500e-06, double 6.860000e-08]], align 16
@dlm = internal constant [8 x [3 x double]] [[3 x double] [double f0x406F88076B035926, double f0x41F40BBCADEE3CB4, double -1.927890e+00], [3 x double] [double f0x4066BF5A874FEAFA, double f0x41DF6432F5157881, double 5.938100e-01], [3 x double] [double f0x40591DDA6DBF7622, double f0x41D34FC2F3B56502, double -2.044110e+00], [3 x double] [double f0x407636ED90F7B482, double f0x41C4890A4B784DFD, double 9.426400e-01], [3 x double] [double f0x40412CFE90EA1D96, double f0x419A0C7E6F1EA0BA, double f0xC03E9A915379FA98], [3 x double] [double f0x404909E9B1DFE17D, double f0x4184FA9E14756430, double f0x4052E76ED677707A], [3 x double] [double f0x4073A0E14D09C902, double f0x416D6BA57E0EFDCA, double -1.750830e+00], [3 x double] [double f0x4073059422411D82, double f0x415E0127CD46B26C, double 2.110300e-01]], align 16
@e = internal constant [8 x [3 x double]] [[3 x double] [double f0x3FCA52242A37D430, double f0x3F2ABF4B9459E7F4, double -2.834900e-06], [3 x double] [double f0x3F7BBCDE77820827, double f0xBF3F4DAC25FB4BC2, double 9.812700e-06], [3 x double] [double f0x3F911C1175CC9F7B, double f0xBF3B8C8FA536F731, double -1.267340e-05], [3 x double] [double f0x3FB7E91AD74BF5B0, double f0x3F4DA66143B5E407, double -8.064100e-06], [3 x double] [double f0x3FA8D4B857E48742, double f0x3F5ABE2B9A18B7B5, double -4.713660e-05], [3 x double] [double f0x3FAC70CE5FA41E66, double f0xBF6C6594A86FD58E, double -6.436390e-05], [3 x double] [double f0x3FA7BF479022D287, double f0xBF31E2FE6AE927D8, double 7.891300e-06], [3 x double] [double f0x3F835D88E0FE76D8, double 6.032630e-05, double 0.000000e+00]], align 16
@pi = internal constant [8 x [3 x double]] [[3 x double] [double f0x40535D310DE9F882, double f0x40B6571DAB9F559B, double -4.830160e+00], [3 x double] [double f0x40607209DADFB507, double f0x4065EF9096BB98C8, double f0xC07F27B59DDC1E79], [3 x double] [double f0x4059BBFD82CD2461, double f0x40C6AE2D2BD3C361, double f0x404AA34C6E6D9BE5], [3 x double] [double f0x407500F6B7DFD5BE, double f0x40CF363AC3222920, double -6.232800e+01], [3 x double] [double f0x402CA993F265B897, double f0x40BE4EC06AD2DCB1, double f0x40703F599ED7C6FC], [3 x double] [double f0x405743A9C7642D26, double f0x40D3EADFA415F45E, double f0x4067C84DFCE3150E], [3 x double] [double f0x4065A02B58283528, double f0x40A91F1FF04577D9, double f0xC0410BE37DE939EB], [3 x double] [double f0x40480F65305B6785, double f0x40906AE060FE4799, double f0x403B65ACEEE0F3CB]], align 16
@dinc = internal constant [8 x [3 x double]] [[3 x double] [double f0x401C051B1D92B7FE, double f0xC06AC83387160957, double 2.897700e-01], [3 x double] [double f0x400B28447E34386C, double f0xC03ED828A1DFB939, double f0xC0275B52007DD441], [3 x double] [double 0.000000e+00, double f0x407D5F90F51AC9B0, double -3.350530e+00], [3 x double] [double f0x3FFD987ACB2252BB, double f0xC072551355475A32, double -8.118300e+00], [3 x double] [double f0x3FF4DA2E7A10E830, double f0xC051E3C504816F00, double f0x4027E7EBAF102364], [3 x double] [double f0x4003E939471E778F, double f0x4056F686594AF4F1, double f0xC031A989374BC6A8], [3 x double] [double f0x3FE8BE07677D67B5, double f0xC04E5D15DF6555C5, double 1.257590e+00], [3 x double] [double f0x3FFC51B9CE9853F4, double f0x40203F251C193B3A, double 8.135000e-02]], align 16
@omega = internal constant [8 x [3 x double]] [[3 x double] [double f0x40482A5AB400A313, double f0xC0B1A3379F01B867, double f0xC03FCC8605681ECD], [3 x double] [double f0x40532B83CFF8FC2B, double f0xC0C38C3DA31A4BDC, double f0xC049A9BEF49CF56F], [3 x double] [double f0x4065DBF10E4FF9E8, double f0xC0C0F3A29A804966, double f0x402EAF0ED3D859C9], [3 x double] [double f0x4048C76F992A88EB, double f0xC0C4BE7350092CCF, double f0xC06CD25F84CAD57C], [3 x double] [double f0x40591DB8D838BBB3, double f0x40B8DA091DBCA969, double f0x4074685935FC3B4F], [3 x double] [double f0x405C6A9797E1B38F, double f0xC0C20C1986983516, double f0xC0508F320D9945B7], [3 x double] [double f0x405280619982C872, double f0x40A4DA4CF80DC337, double f0x40623E1187E7C06E], [3 x double] [double f0x40607916FEBF632D, double f0xC06BBE2EDBB59DDC, double -7.872800e-01]], align 16
@kp = internal constant [8 x [9 x double]] [[9 x double] [double 6.961300e+04, double 7.564500e+04, double 8.830600e+04, double 5.989900e+04, double 1.574600e+04, double 7.108700e+04, double 1.421730e+05, double 3.086000e+03, double 0.000000e+00], [9 x double] [double 2.186300e+04, double 3.279400e+04, double 2.693400e+04, double 1.093100e+04, double 2.625000e+04, double 4.372500e+04, double 5.386700e+04, double 2.893900e+04, double 0.000000e+00], [9 x double] [double 1.600200e+04, double 2.186300e+04, double 3.200400e+04, double 1.093100e+04, double 1.452900e+04, double 1.636800e+04, double 1.531800e+04, double 3.279400e+04, double 0.000000e+00], [9 x double] [double 6.345000e+03, double 7.818000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 1.416300e+04, double 1.107000e+03, double 4.872000e+03, double 0.000000e+00], [9 x double] [double 1.760000e+03, double 1.454000e+03, double 1.167000e+03, double 8.800000e+02, double 2.870000e+02, double 2.640000e+03, double 1.900000e+01, double 2.047000e+03, double 1.454000e+03], [9 x double] [double 5.740000e+02, double 0.000000e+00, double 8.800000e+02, double 2.870000e+02, double 1.900000e+01, double 1.760000e+03, double 1.167000e+03, double 3.060000e+02, double 5.740000e+02], [9 x double] [double 2.040000e+02, double 0.000000e+00, double 1.770000e+02, double 1.265000e+03, double 4.000000e+00, double 3.850000e+02, double 2.000000e+02, double 2.080000e+02, double 2.040000e+02], [9 x double] [double 0.000000e+00, double 1.020000e+02, double 1.060000e+02, double 4.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 0.000000e+00]], align 16
@kq = internal constant [8 x [10 x double]] [[10 x double] [double 3.086000e+03, double 1.574600e+04, double 6.961300e+04, double 5.989900e+04, double 7.564500e+04, double 8.830600e+04, double 1.266100e+04, double 2.658000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.186300e+04, double 3.279400e+04, double 1.093100e+04, double 7.300000e+01, double 4.387000e+03, double 2.693400e+04, double 1.473000e+03, double 2.157000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 1.600200e+04, double 2.186300e+04, double 1.093100e+04, double 1.473000e+03, double 3.200400e+04, double 4.387000e+03, double 7.300000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 6.345000e+03, double 7.818000e+03, double 1.107000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 5.320000e+02, double 1.000000e+01, double 0.000000e+00], [10 x double] [double 1.900000e+01, double 1.760000e+03, double 1.454000e+03, double 2.870000e+02, double 1.167000e+03, double 8.800000e+02, double 5.740000e+02, double 2.640000e+03, double 1.900000e+01, double 1.454000e+03], [10 x double] [double 1.900000e+01, double 5.740000e+02, double 2.870000e+02, double 3.060000e+02, double 1.760000e+03, double 1.200000e+01, double 3.100000e+01, double 3.800000e+01, double 1.900000e+01, double 5.740000e+02], [10 x double] [double 4.000000e+00, double 2.040000e+02, double 1.770000e+02, double 8.000000e+00, double 3.100000e+01, double 2.000000e+02, double 1.265000e+03, double 1.020000e+02, double 4.000000e+00, double 2.040000e+02], [10 x double] [double 4.000000e+00, double 1.020000e+02, double 1.060000e+02, double 8.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 4.000000e+00, double 1.020000e+02]], align 16
@ca = internal constant [8 x [9 x double]] [[9 x double] [double 4.000000e+00, double -1.300000e+01, double 1.100000e+01, double -9.000000e+00, double -9.000000e+00, double -3.000000e+00, double -1.000000e+00, double 4.000000e+00, double 0.000000e+00], [9 x double] [double -1.560000e+02, double 5.900000e+01, double -4.200000e+01, double 6.000000e+00, double 1.900000e+01, double -2.000000e+01, double -1.000000e+01, double -1.200000e+01, double 0.000000e+00], [9 x double] [double 6.400000e+01, double -1.520000e+02, double 6.200000e+01, double -8.000000e+00, double 3.200000e+01, double -4.100000e+01, double 1.900000e+01, double -1.100000e+01, double 0.000000e+00], [9 x double] [double 1.240000e+02, double 6.210000e+02, double -1.450000e+02, double 2.080000e+02, double 5.400000e+01, double -5.700000e+01, double 3.000000e+01, double 1.500000e+01, double 0.000000e+00], [9 x double] [double -2.343700e+04, double -2.634000e+03, double 6.601000e+03, double 6.259000e+03, double -1.507000e+03, double -1.821000e+03, double 2.620000e+03, double -2.115000e+03, double -1.489000e+03], [9 x double] [double 6.291100e+04, double -1.199190e+05, double 7.933600e+04, double 1.781400e+04, double -2.424100e+04, double 1.206800e+04, double 8.306000e+03, double -4.893000e+03, double 8.902000e+03], [9 x double] [double 3.890610e+05, double -2.621250e+05, double -4.408800e+04, double 8.387000e+03, double -2.297600e+04, double -2.093000e+03, double -6.150000e+02, double -9.720000e+03, double 6.633000e+03], [9 x double] [double -4.122350e+05, double -1.570460e+05, double -3.143000e+04, double 3.781700e+04, double -9.740000e+03, double -1.300000e+01, double -7.449000e+03, double 9.644000e+03, double 0.000000e+00]], align 16
@sa = internal constant [8 x [9 x double]] [[9 x double] [double -2.900000e+01, double -1.000000e+00, double 9.000000e+00, double 6.000000e+00, double -6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 0.000000e+00, double 0.000000e+00], [9 x double] [double -4.800000e+01, double -1.250000e+02, double -2.600000e+01, double -3.700000e+01, double 1.800000e+01, double -1.300000e+01, double -2.000000e+01, double -2.000000e+00, double 0.000000e+00], [9 x double] [double -1.500000e+02, double -4.600000e+01, double 6.800000e+01, double 5.400000e+01, double 1.400000e+01, double 2.400000e+01, double -2.800000e+01, double 2.200000e+01, double 0.000000e+00], [9 x double] [double -6.210000e+02, double 5.320000e+02, double -6.940000e+02, double -2.000000e+01, double 1.920000e+02, double -9.400000e+01, double 7.100000e+01, double -7.300000e+01, double 0.000000e+00], [9 x double] [double -1.461400e+04, double -1.982800e+04, double -5.869000e+03, double 1.881000e+03, double -4.372000e+03, double -2.255000e+03, double 7.820000e+02, double 9.300000e+02, double 9.130000e+02], [9 x double] [double 1.397370e+05, double 0.000000e+00, double 2.466700e+04, double 5.112300e+04, double -5.102000e+03, double 7.429000e+03, double -4.095000e+03, double -1.976000e+03, double -9.566000e+03], [9 x double] [double -1.380810e+05, double 0.000000e+00, double 3.720500e+04, double -4.903900e+04, double -4.190100e+04, double -3.387200e+04, double -2.703700e+04, double -1.247400e+04, double 1.879700e+04], [9 x double] [double 0.000000e+00, double 2.849200e+04, double 1.332360e+05, double 6.965400e+04, double 5.232200e+04, double -4.957700e+04, double -2.643000e+04, double -3.593000e+03, double 0.000000e+00]], align 16
@cl = internal constant [8 x [10 x double]] [[10 x double] [double 2.100000e+01, double -9.500000e+01, double -1.570000e+02, double 4.100000e+01, double -5.000000e+00, double 4.200000e+01, double 2.300000e+01, double 3.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.600000e+02, double -3.130000e+02, double -2.350000e+02, double 6.000000e+01, double -7.400000e+01, double -7.600000e+01, double -2.700000e+01, double 3.400000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -3.250000e+02, double -3.220000e+02, double -7.900000e+01, double 2.320000e+02, double -5.200000e+01, double 9.700000e+01, double 5.500000e+01, double -4.100000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.268000e+03, double -9.790000e+02, double 8.020000e+02, double 6.020000e+02, double -6.680000e+02, double -3.300000e+01, double 3.450000e+02, double 2.010000e+02, double -5.500000e+01, double 0.000000e+00], [10 x double] [double 7.610000e+03, double -4.997000e+03, double -7.689000e+03, double -5.841000e+03, double -2.617000e+03, double 1.115000e+03, double -7.480000e+02, double -6.070000e+02, double 6.074000e+03, double 3.540000e+02], [10 x double] [double -1.854900e+04, double 3.012500e+04, double 2.001200e+04, double -7.300000e+02, double 8.240000e+02, double 2.300000e+01, double 1.289000e+03, double -3.520000e+02, double -1.476700e+04, double -2.062000e+03], [10 x double] [double -1.352450e+05, double -1.459400e+04, double 4.197000e+03, double -4.030000e+03, double -5.630000e+03, double -2.898000e+03, double 2.540000e+03, double -3.060000e+02, double 2.939000e+03, double 1.986000e+03], [10 x double] [double 8.994800e+04, double 2.103000e+03, double 8.963000e+03, double 2.695000e+03, double 3.682000e+03, double 1.648000e+03, double 8.660000e+02, double -1.540000e+02, double -1.963000e+03, double -2.830000e+02]], align 16
@sl = internal constant [8 x [10 x double]] [[10 x double] [double -3.420000e+02, double 1.360000e+02, double -2.300000e+01, double 6.200000e+01, double 6.600000e+01, double -5.200000e+01, double -3.300000e+01, double 1.700000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 5.240000e+02, double -1.490000e+02, double -3.500000e+01, double 1.170000e+02, double 1.510000e+02, double 1.220000e+02, double -7.100000e+01, double -6.200000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.050000e+02, double -1.370000e+02, double 2.580000e+02, double 3.500000e+01, double -1.160000e+02, double -8.800000e+01, double -1.120000e+02, double -8.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 8.540000e+02, double -2.050000e+02, double -9.360000e+02, double -2.400000e+02, double 1.400000e+02, double -3.410000e+02, double -9.700000e+01, double -2.320000e+02, double 5.360000e+02, double 0.000000e+00], [10 x double] [double -5.698000e+04, double 8.016000e+03, double 1.012000e+03, double 1.448000e+03, double -3.024000e+03, double -3.710000e+03, double 3.180000e+02, double 5.030000e+02, double 3.767000e+03, double 5.770000e+02], [10 x double] [double 1.386060e+05, double -1.347800e+04, double -4.964000e+03, double 1.441000e+03, double -1.319000e+03, double -1.482000e+03, double 4.270000e+02, double 1.236000e+03, double -9.167000e+03, double -1.918000e+03], [10 x double] [double 7.123400e+04, double -4.111600e+04, double 5.334000e+03, double -4.935000e+03, double -1.848000e+03, double 6.600000e+01, double 4.340000e+02, double -1.748000e+03, double 3.780000e+03, double -7.010000e+02], [10 x double] [double -4.764500e+04, double 1.164700e+04, double 2.166000e+03, double 3.194000e+03, double 6.790000e+02, double 0.000000e+00, double -2.440000e+02, double -4.190000e+02, double -2.531000e+03, double 4.800000e+01]], align 16
@amas = internal constant [8 x double] [double 6.023600e+06, double f0x4118EF2E00000000, double f0x4114131200000000, double 3.098710e+06, double f0x40905D6B851EB852, double 3.498500e+03, double 2.286900e+04, double 1.931400e+04], align 16
@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @anpm(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %2, align 8
  %4 = call double @fmod(double noundef %0, double noundef f0x401921FB54442D18) #4
  store double %4, ptr %3, align 8
  %5 = call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, f0x400921FB54442D18
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = fcmp olt double %0, 0.000000e+00
  %9 = select i1 %8, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %10 = fsub double %4, %9
  store double %10, ptr %3, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi double [ %10, %7 ], [ %4, %1 ]
  ret double %12
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @planetpv(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  store i32 %1, ptr %4, align 4
  store ptr %2, ptr %5, align 8
  %37 = load double, ptr %0, align 8
  %38 = fadd double %37, f0xC142B42C80000000
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load double, ptr %39, align 8
  %41 = fadd double %38, %40
  %42 = fdiv double %41, 3.652500e+05
  store double %42, ptr %7, align 8
  %43 = sext i32 %1 to i64
  %44 = getelementptr inbounds [24 x i8], ptr @a, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %49 = load double, ptr %48, align 8
  %50 = call double @llvm.fmuladd.f64(double %49, double %42, double %47)
  %51 = call double @llvm.fmuladd.f64(double %50, double %42, double %45)
  store double %51, ptr %8, align 8
  %52 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %43
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %55 = load double, ptr %54, align 8
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %57 = load double, ptr %56, align 8
  %58 = call double @llvm.fmuladd.f64(double %57, double %42, double %55)
  %59 = fmul double %58, %42
  %60 = call double @llvm.fmuladd.f64(double %53, double 3.600000e+03, double %59)
  %61 = fmul double %60, f0x3ED455A5B2FF8F9D
  store double %61, ptr %9, align 8
  %62 = getelementptr inbounds [24 x i8], ptr @e, i64 %43
  %63 = load double, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %65 = load double, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %67 = load double, ptr %66, align 8
  %68 = call double @llvm.fmuladd.f64(double %67, double %42, double %65)
  %69 = call double @llvm.fmuladd.f64(double %68, double %42, double %63)
  store double %69, ptr %10, align 8
  %70 = getelementptr inbounds [24 x i8], ptr @pi, i64 %43
  %71 = load double, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %73 = load double, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 16
  %75 = load double, ptr %74, align 8
  %76 = call double @llvm.fmuladd.f64(double %75, double %42, double %73)
  %77 = fmul double %76, %42
  %78 = call double @llvm.fmuladd.f64(double %71, double 3.600000e+03, double %77)
  %79 = fmul double %78, f0x3ED455A5B2FF8F9D
  %80 = call double @anpm(double noundef %79)
  store double %80, ptr %11, align 8
  %81 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %43
  %82 = load double, ptr %81, align 8
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %84 = load double, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %86 = load double, ptr %85, align 8
  %87 = call double @llvm.fmuladd.f64(double %86, double %42, double %84)
  %88 = fmul double %87, %42
  %89 = call double @llvm.fmuladd.f64(double %82, double 3.600000e+03, double %88)
  %90 = fmul double %89, f0x3ED455A5B2FF8F9D
  store double %90, ptr %12, align 8
  %91 = getelementptr inbounds [24 x i8], ptr @omega, i64 %43
  %92 = load double, ptr %91, align 8
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %94 = load double, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %96 = load double, ptr %95, align 8
  %97 = call double @llvm.fmuladd.f64(double %96, double %42, double %94)
  %98 = fmul double %97, %42
  %99 = call double @llvm.fmuladd.f64(double %92, double 3.600000e+03, double %98)
  %100 = fmul double %99, f0x3ED455A5B2FF8F9D
  %101 = call double @anpm(double noundef %100)
  store double %101, ptr %13, align 8
  %102 = fmul double %42, f0x3FD702A41F2E9970
  store double %102, ptr %14, align 8
  br label %103

103:                                              ; preds = %108, %3
  %104 = phi double [ %61, %3 ], [ %139, %108 ]
  %105 = phi double [ %51, %3 ], [ %128, %108 ]
  %106 = phi i32 [ 0, %3 ], [ %140, %108 ]
  store i32 %106, ptr %6, align 4
  %107 = icmp slt i32 %106, 8
  br i1 %107, label %108, label %141

108:                                              ; preds = %103
  %109 = getelementptr inbounds [72 x i8], ptr @kp, i64 %43
  %110 = sext i32 %106 to i64
  %111 = getelementptr inbounds [8 x i8], ptr %109, i64 %110
  %112 = load double, ptr %111, align 8
  %113 = fmul double %112, %102
  store double %113, ptr %15, align 8
  %114 = getelementptr inbounds [80 x i8], ptr @kq, i64 %43
  %115 = getelementptr inbounds [8 x i8], ptr %114, i64 %110
  %116 = load double, ptr %115, align 8
  %117 = fmul double %116, %102
  store double %117, ptr %16, align 8
  %118 = getelementptr inbounds [72 x i8], ptr @ca, i64 %43
  %119 = getelementptr inbounds [8 x i8], ptr %118, i64 %110
  %120 = load double, ptr %119, align 8
  %121 = call double @cos(double noundef %113) #4
  %122 = getelementptr inbounds [72 x i8], ptr @sa, i64 %43
  %123 = getelementptr inbounds [8 x i8], ptr %122, i64 %110
  %124 = load double, ptr %123, align 8
  %125 = call double @sin(double noundef %113) #4
  %126 = fmul double %124, %125
  %127 = call double @llvm.fmuladd.f64(double %120, double %121, double %126)
  %128 = call double @llvm.fmuladd.f64(double %127, double f0x3E7AD7F29ABCAF48, double %105)
  store double %128, ptr %8, align 8
  %129 = getelementptr inbounds [80 x i8], ptr @cl, i64 %43
  %130 = getelementptr inbounds [8 x i8], ptr %129, i64 %110
  %131 = load double, ptr %130, align 8
  %132 = call double @cos(double noundef %117) #4
  %133 = getelementptr inbounds [80 x i8], ptr @sl, i64 %43
  %134 = getelementptr inbounds [8 x i8], ptr %133, i64 %110
  %135 = load double, ptr %134, align 8
  %136 = call double @sin(double noundef %117) #4
  %137 = fmul double %135, %136
  %138 = call double @llvm.fmuladd.f64(double %131, double %132, double %137)
  %139 = call double @llvm.fmuladd.f64(double %138, double f0x3E7AD7F29ABCAF48, double %104)
  store double %139, ptr %9, align 8
  %140 = add nsw i32 %106, 1
  br label %103, !llvm.loop !7

141:                                              ; preds = %103
  %142 = getelementptr inbounds [72 x i8], ptr @kp, i64 %43
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 64
  %144 = load double, ptr %143, align 8
  %145 = fmul double %144, %102
  store double %145, ptr %15, align 8
  %146 = getelementptr inbounds [72 x i8], ptr @ca, i64 %43
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 64
  %148 = load double, ptr %147, align 8
  %149 = call double @cos(double noundef %145) #4
  %150 = getelementptr inbounds [72 x i8], ptr @sa, i64 %43
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 64
  %152 = load double, ptr %151, align 8
  %153 = call double @sin(double noundef %145) #4
  %154 = fmul double %152, %153
  %155 = call double @llvm.fmuladd.f64(double %148, double %149, double %154)
  %156 = fmul double %42, %155
  %157 = call double @llvm.fmuladd.f64(double %156, double f0x3E7AD7F29ABCAF48, double %105)
  store double %157, ptr %8, align 8
  br label %158

158:                                              ; preds = %162, %141
  %159 = phi double [ %104, %141 ], [ %179, %162 ]
  %160 = phi i32 [ 8, %141 ], [ %180, %162 ]
  store i32 %160, ptr %6, align 4
  %161 = icmp slt i32 %160, 10
  br i1 %161, label %162, label %181

162:                                              ; preds = %158
  %163 = getelementptr inbounds [80 x i8], ptr @kq, i64 %43
  %164 = sext i32 %160 to i64
  %165 = getelementptr inbounds [8 x i8], ptr %163, i64 %164
  %166 = load double, ptr %165, align 8
  %167 = fmul double %166, %102
  store double %167, ptr %16, align 8
  %168 = getelementptr inbounds [80 x i8], ptr @cl, i64 %43
  %169 = getelementptr inbounds [8 x i8], ptr %168, i64 %164
  %170 = load double, ptr %169, align 8
  %171 = call double @cos(double noundef %167) #4
  %172 = getelementptr inbounds [80 x i8], ptr @sl, i64 %43
  %173 = getelementptr inbounds [8 x i8], ptr %172, i64 %164
  %174 = load double, ptr %173, align 8
  %175 = call double @sin(double noundef %167) #4
  %176 = fmul double %174, %175
  %177 = call double @llvm.fmuladd.f64(double %170, double %171, double %176)
  %178 = fmul double %42, %177
  %179 = call double @llvm.fmuladd.f64(double %178, double f0x3E7AD7F29ABCAF48, double %159)
  store double %179, ptr %9, align 8
  %180 = add nsw i32 %160, 1
  br label %158, !llvm.loop !9

181:                                              ; preds = %158
  %182 = call double @fmod(double noundef %159, double noundef f0x401921FB54442D18) #4
  store double %182, ptr %9, align 8
  %183 = fsub double %182, %80
  store double %183, ptr %17, align 8
  %184 = call double @sin(double noundef %183) #4
  %185 = call double @llvm.fmuladd.f64(double %69, double %184, double %183)
  store double %185, ptr %18, align 8
  store i32 0, ptr %6, align 4
  br label %186

186:                                              ; preds = %286, %181
  %187 = phi i32 [ %197, %286 ], [ 0, %181 ]
  %188 = phi double [ %196, %286 ], [ %185, %181 ]
  %189 = fsub double %183, %188
  %190 = call double @sin(double noundef %188) #4
  %191 = call double @llvm.fmuladd.f64(double %69, double %190, double %189)
  %192 = call double @cos(double noundef %188) #4
  %193 = fneg double %69
  %194 = call double @llvm.fmuladd.f64(double %193, double %192, double 1.000000e+00)
  %195 = fdiv double %191, %194
  store double %195, ptr %19, align 8
  %196 = fadd double %188, %195
  store double %196, ptr %18, align 8
  %197 = add nsw i32 %187, 1
  store i32 %197, ptr %6, align 4
  %198 = icmp sgt i32 %187, 8
  br i1 %198, label %202, label %199

199:                                              ; preds = %186
  %200 = call double @llvm.fabs.f64(double %195)
  %201 = fcmp olt double %200, f0x3D719799812DEA11
  br i1 %201, label %202, label %286

202:                                              ; preds = %199, %186
  %203 = fmul double %196, 5.000000e-01
  store double %203, ptr %20, align 8
  %204 = fadd double %69, 1.000000e+00
  %205 = fsub double 1.000000e+00, %69
  %206 = fdiv double %204, %205
  %207 = call double @sqrt(double noundef %206) #4
  %208 = call double @sin(double noundef %203) #4
  %209 = fmul double %207, %208
  %210 = call double @cos(double noundef %203) #4
  %211 = call double @atan2(double noundef %209, double noundef %210) #4
  %212 = fmul double %211, 2.000000e+00
  store double %212, ptr %21, align 8
  %213 = call double @cos(double noundef %196) #4
  %214 = call double @llvm.fmuladd.f64(double %193, double %213, double 1.000000e+00)
  %215 = fmul double %157, %214
  store double %215, ptr %22, align 8
  %216 = getelementptr inbounds [8 x i8], ptr @amas, i64 %43
  %217 = load double, ptr %216, align 8
  %218 = fdiv double 1.000000e+00, %217
  %219 = fadd double %218, 1.000000e+00
  %220 = fmul double %157, %157
  %221 = fmul double %220, %157
  %222 = fdiv double %219, %221
  %223 = call double @sqrt(double noundef %222) #4
  %224 = fmul double %223, f0x3F919D6D51A6B69A
  store double %224, ptr %23, align 8
  %225 = fmul double %90, 5.000000e-01
  %226 = call double @sin(double noundef %225) #4
  %227 = call double @cos(double noundef %101) #4
  %228 = fmul double %226, %227
  store double %228, ptr %24, align 8
  %229 = call double @sin(double noundef %101) #4
  %230 = fmul double %226, %229
  store double %230, ptr %25, align 8
  %231 = fadd double %212, %80
  %232 = call double @sin(double noundef %231) #4
  store double %232, ptr %26, align 8
  %233 = call double @cos(double noundef %231) #4
  store double %233, ptr %27, align 8
  %234 = fneg double %232
  %235 = fmul double %228, %234
  %236 = call double @llvm.fmuladd.f64(double %230, double %233, double %235)
  %237 = fmul double %236, 2.000000e+00
  store double %237, ptr %28, align 8
  %238 = call double @llvm.fmuladd.f64(double %193, double %69, double 1.000000e+00)
  %239 = call double @sqrt(double noundef %238) #4
  %240 = fdiv double %157, %239
  store double %240, ptr %29, align 8
  %241 = call double @cos(double noundef %225) #4
  store double %241, ptr %30, align 8
  %242 = call double @sin(double noundef %80) #4
  %243 = call double @llvm.fmuladd.f64(double %69, double %242, double %232)
  %244 = fmul double %243, %240
  store double %244, ptr %31, align 8
  %245 = call double @cos(double noundef %80) #4
  %246 = call double @llvm.fmuladd.f64(double %69, double %245, double %233)
  %247 = fmul double %246, %240
  store double %247, ptr %32, align 8
  %248 = fmul double %230, 2.000000e+00
  %249 = fmul double %248, %228
  store double %249, ptr %33, align 8
  %250 = fneg double %237
  %251 = call double @llvm.fmuladd.f64(double %250, double %230, double %233)
  %252 = fmul double %215, %251
  store double %252, ptr %34, align 8
  %253 = call double @llvm.fmuladd.f64(double %237, double %228, double %232)
  %254 = fmul double %215, %253
  store double %254, ptr %35, align 8
  %255 = fmul double %241, %250
  %256 = fmul double %215, %255
  store double %256, ptr %36, align 8
  store double %252, ptr %2, align 8
  %257 = fmul double %256, f0xBFD9752E50F4B399
  %258 = call double @llvm.fmuladd.f64(double %254, double f0x3FED5C0357681EF3, double %257)
  %259 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %258, ptr %259, align 8
  %260 = fmul double %256, f0x3FED5C0357681EF3
  %261 = call double @llvm.fmuladd.f64(double %254, double f0x3FD9752E50F4B399, double %260)
  %262 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %261, ptr %262, align 8
  %263 = call double @llvm.fmuladd.f64(double %248, double %230, double -1.000000e+00)
  %264 = fmul double %249, %247
  %265 = call double @llvm.fmuladd.f64(double %263, double %244, double %264)
  %266 = fmul double %224, %265
  store double %266, ptr %34, align 8
  %267 = fmul double %228, -2.000000e+00
  %268 = call double @llvm.fmuladd.f64(double %267, double %228, double 1.000000e+00)
  %269 = fneg double %244
  %270 = fmul double %249, %269
  %271 = call double @llvm.fmuladd.f64(double %268, double %247, double %270)
  %272 = fmul double %224, %271
  store double %272, ptr %35, align 8
  %273 = fmul double %241, 2.000000e+00
  %274 = fmul double %228, %247
  %275 = call double @llvm.fmuladd.f64(double %230, double %244, double %274)
  %276 = fmul double %273, %275
  %277 = fmul double %224, %276
  store double %277, ptr %36, align 8
  %278 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %266, ptr %278, align 8
  %279 = fmul double %277, f0xBFD9752E50F4B399
  %280 = call double @llvm.fmuladd.f64(double %272, double f0x3FED5C0357681EF3, double %279)
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %280, ptr %281, align 8
  %282 = fmul double %277, f0x3FED5C0357681EF3
  %283 = call double @llvm.fmuladd.f64(double %272, double f0x3FD9752E50F4B399, double %282)
  %284 = load ptr, ptr %5, align 8
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 40
  store double %283, ptr %285, align 8
  ret void

286:                                              ; preds = %199
  br label %186
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @radecdist(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load double, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8
  %8 = fmul double %7, %7
  %9 = call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8
  %12 = call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = call double @sqrt(double noundef %12) #4
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %13, ptr %14, align 8
  %15 = load double, ptr %6, align 8
  %16 = load double, ptr %0, align 8
  %17 = call double @atan2(double noundef %15, double noundef %16) #4
  %18 = fmul double %17, f0x400E8EC8A4AEACC4
  store double %18, ptr %1, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = fadd double %18, 2.400000e+01
  store double %21, ptr %1, align 8
  br label %22

22:                                               ; preds = %20, %2
  %23 = load double, ptr %10, align 8
  %24 = load double, ptr %14, align 8
  %25 = fdiv double %23, %24
  %26 = call double @asin(double noundef %25) #4
  %27 = fmul double %26, f0x404CA5DC1A63C1F8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %27, ptr %28, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x double], align 16
  %9 = alloca [2 x [3 x double]], align 16
  %10 = alloca [8 x [3 x double]], align 16
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %21, %12
  %14 = phi i32 [ 1, %12 ], [ %22, %21 ]
  store i32 %14, ptr %5, align 4
  %15 = icmp slt i32 %14, %0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %20, label %21

20:                                               ; preds = %16
  br label %23

21:                                               ; preds = %16
  %22 = add nsw i32 %14, 1
  br label %13, !llvm.loop !10

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %2
  br label %25

25:                                               ; preds = %45, %24
  %26 = phi i32 [ 0, %24 ], [ %46, %45 ]
  store i32 %26, ptr %5, align 4
  %27 = icmp slt i32 %26, 20
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  store double f0x4142B42C80000000, ptr %8, align 16
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double 0.000000e+00, ptr %29, align 8
  br label %30

30:                                               ; preds = %43, %28
  %31 = phi i32 [ 0, %28 ], [ %44, %43 ]
  store i32 %31, ptr %6, align 4
  %32 = icmp slt i32 %31, 36525
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load double, ptr %8, align 16
  %35 = fadd double %34, 1.000000e+00
  store double %35, ptr %8, align 16
  br label %36

36:                                               ; preds = %39, %33
  %37 = phi i32 [ 0, %33 ], [ %42, %39 ]
  store i32 %37, ptr %7, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  call void @planetpv(ptr noundef nonnull %8, i32 noundef %37, ptr noundef nonnull %9)
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [24 x i8], ptr %10, i64 %40
  call void @radecdist(ptr noundef nonnull %9, ptr noundef nonnull %41)
  %42 = add nsw i32 %37, 1
  br label %36, !llvm.loop !11

43:                                               ; preds = %36
  %44 = add nsw i32 %31, 1
  br label %30, !llvm.loop !12

45:                                               ; preds = %30
  %46 = add nsw i32 %26, 1
  br label %25, !llvm.loop !13

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %51, %47
  %49 = phi i32 [ 0, %47 ], [ %60, %51 ]
  store i32 %49, ptr %7, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds [24 x i8], ptr %10, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %58 = load double, ptr %57, align 8
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %54, double noundef %56, double noundef %58) #4
  %60 = add nsw i32 %49, 1
  br label %48, !llvm.loop !14

61:                                               ; preds = %48
  %62 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %63 = call i32 @fflush(ptr noundef %62) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #3

declare dso_local i32 @fflush(ptr noundef) #3

declare dllimport ptr @__acrt_iob_func(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/almabench.c", directory: "E:/Phase Ordering/v3")
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
