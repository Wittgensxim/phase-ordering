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
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load double, ptr %3, align 8
  %9 = load double, ptr %2, align 8
  %10 = fcmp olt double %9, 0.000000e+00
  %11 = select i1 %10, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %12 = fsub double %8, %11
  store double %12, ptr %3, align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = load double, ptr %3, align 8
  ret double %14
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
  %43 = load i32, ptr %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [24 x i8], ptr @a, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = sext i32 %43 to i64
  %48 = getelementptr inbounds [24 x i8], ptr @a, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %50 = load double, ptr %49, align 8
  %51 = load i32, ptr %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [24 x i8], ptr @a, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %55 = load double, ptr %54, align 8
  %56 = load double, ptr %7, align 8
  %57 = call double @llvm.fmuladd.f64(double %55, double %56, double %50)
  %58 = call double @llvm.fmuladd.f64(double %57, double %56, double %46)
  store double %58, ptr %8, align 8
  %59 = load i32, ptr %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %66 = load double, ptr %65, align 8
  %67 = load i32, ptr %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %71 = load double, ptr %70, align 8
  %72 = load double, ptr %7, align 8
  %73 = call double @llvm.fmuladd.f64(double %71, double %72, double %66)
  %74 = fmul double %73, %72
  %75 = call double @llvm.fmuladd.f64(double %62, double 3.600000e+03, double %74)
  %76 = fmul double %75, f0x3ED455A5B2FF8F9D
  store double %76, ptr %9, align 8
  %77 = load i32, ptr %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [24 x i8], ptr @e, i64 %78
  %80 = load double, ptr %79, align 8
  %81 = sext i32 %77 to i64
  %82 = getelementptr inbounds [24 x i8], ptr @e, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %84 = load double, ptr %83, align 8
  %85 = load i32, ptr %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [24 x i8], ptr @e, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %89 = load double, ptr %88, align 8
  %90 = load double, ptr %7, align 8
  %91 = call double @llvm.fmuladd.f64(double %89, double %90, double %84)
  %92 = call double @llvm.fmuladd.f64(double %91, double %90, double %80)
  store double %92, ptr %10, align 8
  %93 = load i32, ptr %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [24 x i8], ptr @pi, i64 %94
  %96 = load double, ptr %95, align 8
  %97 = sext i32 %93 to i64
  %98 = getelementptr inbounds [24 x i8], ptr @pi, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %100 = load double, ptr %99, align 8
  %101 = load i32, ptr %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [24 x i8], ptr @pi, i64 %102
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %105 = load double, ptr %104, align 8
  %106 = load double, ptr %7, align 8
  %107 = call double @llvm.fmuladd.f64(double %105, double %106, double %100)
  %108 = fmul double %107, %106
  %109 = call double @llvm.fmuladd.f64(double %96, double 3.600000e+03, double %108)
  %110 = fmul double %109, f0x3ED455A5B2FF8F9D
  %111 = call double @anpm(double noundef %110)
  store double %111, ptr %11, align 8
  %112 = load i32, ptr %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %113
  %115 = load double, ptr %114, align 8
  %116 = sext i32 %112 to i64
  %117 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %116
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 8
  %119 = load double, ptr %118, align 8
  %120 = load i32, ptr %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %121
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 16
  %124 = load double, ptr %123, align 8
  %125 = load double, ptr %7, align 8
  %126 = call double @llvm.fmuladd.f64(double %124, double %125, double %119)
  %127 = fmul double %126, %125
  %128 = call double @llvm.fmuladd.f64(double %115, double 3.600000e+03, double %127)
  %129 = fmul double %128, f0x3ED455A5B2FF8F9D
  store double %129, ptr %12, align 8
  %130 = load i32, ptr %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [24 x i8], ptr @omega, i64 %131
  %133 = load double, ptr %132, align 8
  %134 = sext i32 %130 to i64
  %135 = getelementptr inbounds [24 x i8], ptr @omega, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %137 = load double, ptr %136, align 8
  %138 = load i32, ptr %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [24 x i8], ptr @omega, i64 %139
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %142 = load double, ptr %141, align 8
  %143 = load double, ptr %7, align 8
  %144 = call double @llvm.fmuladd.f64(double %142, double %143, double %137)
  %145 = fmul double %144, %143
  %146 = call double @llvm.fmuladd.f64(double %133, double 3.600000e+03, double %145)
  %147 = fmul double %146, f0x3ED455A5B2FF8F9D
  %148 = call double @anpm(double noundef %147)
  store double %148, ptr %13, align 8
  %149 = load double, ptr %7, align 8
  %150 = fmul double %149, f0x3FD702A41F2E9970
  store double %150, ptr %14, align 8
  store i32 0, ptr %6, align 4
  br label %151

151:                                              ; preds = %3, %214
  %152 = load i32, ptr %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [72 x i8], ptr @kp, i64 %153
  %155 = load i32, ptr %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x i8], ptr %154, i64 %156
  %158 = load double, ptr %157, align 8
  %159 = load double, ptr %14, align 8
  %160 = fmul double %158, %159
  store double %160, ptr %15, align 8
  %161 = load i32, ptr %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [80 x i8], ptr @kq, i64 %162
  %164 = load i32, ptr %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i8], ptr %163, i64 %165
  %167 = load double, ptr %166, align 8
  %168 = load double, ptr %14, align 8
  %169 = fmul double %167, %168
  store double %169, ptr %16, align 8
  %170 = load double, ptr %8, align 8
  %171 = load i32, ptr %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [72 x i8], ptr @ca, i64 %172
  %174 = load i32, ptr %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [8 x i8], ptr %173, i64 %175
  %177 = load double, ptr %176, align 8
  %178 = load double, ptr %15, align 8
  %179 = call double @cos(double noundef %178) #4
  %180 = load i32, ptr %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [72 x i8], ptr @sa, i64 %181
  %183 = load i32, ptr %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [8 x i8], ptr %182, i64 %184
  %186 = load double, ptr %185, align 8
  %187 = load double, ptr %15, align 8
  %188 = call double @sin(double noundef %187) #4
  %189 = fmul double %186, %188
  %190 = call double @llvm.fmuladd.f64(double %177, double %179, double %189)
  %191 = call double @llvm.fmuladd.f64(double %190, double f0x3E7AD7F29ABCAF48, double %170)
  store double %191, ptr %8, align 8
  %192 = load double, ptr %9, align 8
  %193 = load i32, ptr %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [80 x i8], ptr @cl, i64 %194
  %196 = load i32, ptr %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [8 x i8], ptr %195, i64 %197
  %199 = load double, ptr %198, align 8
  %200 = load double, ptr %16, align 8
  %201 = call double @cos(double noundef %200) #4
  %202 = load i32, ptr %4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [80 x i8], ptr @sl, i64 %203
  %205 = load i32, ptr %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x i8], ptr %204, i64 %206
  %208 = load double, ptr %207, align 8
  %209 = load double, ptr %16, align 8
  %210 = call double @sin(double noundef %209) #4
  %211 = fmul double %208, %210
  %212 = call double @llvm.fmuladd.f64(double %199, double %201, double %211)
  %213 = call double @llvm.fmuladd.f64(double %212, double f0x3E7AD7F29ABCAF48, double %192)
  store double %213, ptr %9, align 8
  br label %214

214:                                              ; preds = %151
  %215 = load i32, ptr %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %6, align 4
  %217 = icmp slt i32 %216, 8
  br i1 %217, label %151, label %218, !llvm.loop !7

218:                                              ; preds = %214
  %219 = load i32, ptr %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [72 x i8], ptr @kp, i64 %220
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 64
  %223 = load double, ptr %222, align 8
  %224 = load double, ptr %14, align 8
  %225 = fmul double %223, %224
  store double %225, ptr %15, align 8
  %226 = load double, ptr %8, align 8
  %227 = load double, ptr %7, align 8
  %228 = load i32, ptr %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [72 x i8], ptr @ca, i64 %229
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 64
  %232 = load double, ptr %231, align 8
  %233 = load double, ptr %15, align 8
  %234 = call double @cos(double noundef %233) #4
  %235 = load i32, ptr %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [72 x i8], ptr @sa, i64 %236
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 64
  %239 = load double, ptr %238, align 8
  %240 = load double, ptr %15, align 8
  %241 = call double @sin(double noundef %240) #4
  %242 = fmul double %239, %241
  %243 = call double @llvm.fmuladd.f64(double %232, double %234, double %242)
  %244 = fmul double %227, %243
  %245 = call double @llvm.fmuladd.f64(double %244, double f0x3E7AD7F29ABCAF48, double %226)
  store double %245, ptr %8, align 8
  store i32 8, ptr %6, align 4
  br label %246

246:                                              ; preds = %218, %280
  %247 = load i32, ptr %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [80 x i8], ptr @kq, i64 %248
  %250 = load i32, ptr %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [8 x i8], ptr %249, i64 %251
  %253 = load double, ptr %252, align 8
  %254 = load double, ptr %14, align 8
  %255 = fmul double %253, %254
  store double %255, ptr %16, align 8
  %256 = load double, ptr %9, align 8
  %257 = load double, ptr %7, align 8
  %258 = load i32, ptr %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [80 x i8], ptr @cl, i64 %259
  %261 = load i32, ptr %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [8 x i8], ptr %260, i64 %262
  %264 = load double, ptr %263, align 8
  %265 = load double, ptr %16, align 8
  %266 = call double @cos(double noundef %265) #4
  %267 = load i32, ptr %4, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [80 x i8], ptr @sl, i64 %268
  %270 = load i32, ptr %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [8 x i8], ptr %269, i64 %271
  %273 = load double, ptr %272, align 8
  %274 = load double, ptr %16, align 8
  %275 = call double @sin(double noundef %274) #4
  %276 = fmul double %273, %275
  %277 = call double @llvm.fmuladd.f64(double %264, double %266, double %276)
  %278 = fmul double %257, %277
  %279 = call double @llvm.fmuladd.f64(double %278, double f0x3E7AD7F29ABCAF48, double %256)
  store double %279, ptr %9, align 8
  br label %280

280:                                              ; preds = %246
  %281 = load i32, ptr %6, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %6, align 4
  %283 = icmp slt i32 %282, 10
  br i1 %283, label %246, label %284, !llvm.loop !9

284:                                              ; preds = %280
  %285 = load double, ptr %9, align 8
  %286 = call double @fmod(double noundef %285, double noundef f0x401921FB54442D18) #4
  store double %286, ptr %9, align 8
  %287 = load double, ptr %11, align 8
  %288 = fsub double %286, %287
  store double %288, ptr %17, align 8
  %289 = load double, ptr %10, align 8
  %290 = call double @sin(double noundef %288) #4
  %291 = call double @llvm.fmuladd.f64(double %289, double %290, double %288)
  store double %291, ptr %18, align 8
  store i32 0, ptr %6, align 4
  br label %292

292:                                              ; preds = %308, %284
  %293 = load double, ptr %17, align 8
  %294 = load double, ptr %18, align 8
  %295 = fsub double %293, %294
  %296 = load double, ptr %10, align 8
  %297 = call double @sin(double noundef %294) #4
  %298 = call double @llvm.fmuladd.f64(double %296, double %297, double %295)
  %299 = call double @cos(double noundef %294) #4
  %300 = fneg double %296
  %301 = call double @llvm.fmuladd.f64(double %300, double %299, double 1.000000e+00)
  %302 = fdiv double %298, %301
  store double %302, ptr %19, align 8
  %303 = load double, ptr %18, align 8
  %304 = fadd double %303, %302
  store double %304, ptr %18, align 8
  %305 = load i32, ptr %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, ptr %6, align 4
  %307 = icmp sgt i32 %305, 8
  br i1 %307, label %312, label %308

308:                                              ; preds = %292
  %309 = load double, ptr %19, align 8
  %310 = call double @llvm.fabs.f64(double %309)
  %311 = fcmp olt double %310, f0x3D719799812DEA11
  br i1 %311, label %312, label %292

312:                                              ; preds = %308, %292
  br label %313

313:                                              ; preds = %312
  %314 = load double, ptr %18, align 8
  %315 = fmul double %314, 5.000000e-01
  store double %315, ptr %20, align 8
  %316 = load double, ptr %10, align 8
  %317 = fadd double %316, 1.000000e+00
  %318 = fsub double 1.000000e+00, %316
  %319 = fdiv double %317, %318
  %320 = call double @sqrt(double noundef %319) #4
  %321 = call double @sin(double noundef %315) #4
  %322 = fmul double %320, %321
  %323 = load double, ptr %20, align 8
  %324 = call double @cos(double noundef %323) #4
  %325 = call double @atan2(double noundef %322, double noundef %324) #4
  %326 = fmul double %325, 2.000000e+00
  store double %326, ptr %21, align 8
  %327 = load double, ptr %8, align 8
  %328 = load double, ptr %10, align 8
  %329 = load double, ptr %18, align 8
  %330 = call double @cos(double noundef %329) #4
  %331 = fneg double %328
  %332 = call double @llvm.fmuladd.f64(double %331, double %330, double 1.000000e+00)
  %333 = fmul double %327, %332
  store double %333, ptr %22, align 8
  %334 = load i32, ptr %4, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [8 x i8], ptr @amas, i64 %335
  %337 = load double, ptr %336, align 8
  %338 = fdiv double 1.000000e+00, %337
  %339 = fadd double %338, 1.000000e+00
  %340 = load double, ptr %8, align 8
  %341 = fmul double %340, %340
  %342 = fmul double %341, %340
  %343 = fdiv double %339, %342
  %344 = call double @sqrt(double noundef %343) #4
  %345 = fmul double %344, f0x3F919D6D51A6B69A
  store double %345, ptr %23, align 8
  %346 = load double, ptr %12, align 8
  %347 = fmul double %346, 5.000000e-01
  %348 = call double @sin(double noundef %347) #4
  %349 = load double, ptr %13, align 8
  %350 = call double @cos(double noundef %349) #4
  %351 = fmul double %348, %350
  store double %351, ptr %24, align 8
  %352 = call double @sin(double noundef %349) #4
  %353 = fmul double %348, %352
  store double %353, ptr %25, align 8
  %354 = load double, ptr %21, align 8
  %355 = load double, ptr %11, align 8
  %356 = fadd double %354, %355
  %357 = call double @sin(double noundef %356) #4
  store double %357, ptr %26, align 8
  %358 = call double @cos(double noundef %356) #4
  store double %358, ptr %27, align 8
  %359 = load double, ptr %25, align 8
  %360 = load double, ptr %24, align 8
  %361 = fneg double %357
  %362 = fmul double %360, %361
  %363 = call double @llvm.fmuladd.f64(double %359, double %358, double %362)
  %364 = fmul double %363, 2.000000e+00
  store double %364, ptr %28, align 8
  %365 = load double, ptr %8, align 8
  %366 = load double, ptr %10, align 8
  %367 = fneg double %366
  %368 = call double @llvm.fmuladd.f64(double %367, double %366, double 1.000000e+00)
  %369 = call double @sqrt(double noundef %368) #4
  %370 = fdiv double %365, %369
  store double %370, ptr %29, align 8
  %371 = load double, ptr %12, align 8
  %372 = fmul double %371, 5.000000e-01
  %373 = call double @cos(double noundef %372) #4
  store double %373, ptr %30, align 8
  %374 = load double, ptr %10, align 8
  %375 = load double, ptr %11, align 8
  %376 = call double @sin(double noundef %375) #4
  %377 = load double, ptr %26, align 8
  %378 = call double @llvm.fmuladd.f64(double %374, double %376, double %377)
  %379 = load double, ptr %29, align 8
  %380 = fmul double %378, %379
  store double %380, ptr %31, align 8
  %381 = load double, ptr %10, align 8
  %382 = load double, ptr %11, align 8
  %383 = call double @cos(double noundef %382) #4
  %384 = load double, ptr %27, align 8
  %385 = call double @llvm.fmuladd.f64(double %381, double %383, double %384)
  %386 = load double, ptr %29, align 8
  %387 = fmul double %385, %386
  store double %387, ptr %32, align 8
  %388 = load double, ptr %25, align 8
  %389 = fmul double %388, 2.000000e+00
  %390 = load double, ptr %24, align 8
  %391 = fmul double %389, %390
  store double %391, ptr %33, align 8
  %392 = load double, ptr %22, align 8
  %393 = load double, ptr %27, align 8
  %394 = load double, ptr %28, align 8
  %395 = load double, ptr %25, align 8
  %396 = fneg double %394
  %397 = call double @llvm.fmuladd.f64(double %396, double %395, double %393)
  %398 = fmul double %392, %397
  store double %398, ptr %34, align 8
  %399 = load double, ptr %22, align 8
  %400 = load double, ptr %26, align 8
  %401 = load double, ptr %28, align 8
  %402 = load double, ptr %24, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %402, double %400)
  %404 = fmul double %399, %403
  store double %404, ptr %35, align 8
  %405 = load double, ptr %22, align 8
  %406 = fneg double %401
  %407 = load double, ptr %30, align 8
  %408 = fmul double %407, %406
  %409 = fmul double %405, %408
  store double %409, ptr %36, align 8
  %410 = load double, ptr %34, align 8
  %411 = load ptr, ptr %5, align 8
  store double %410, ptr %411, align 8
  %412 = load double, ptr %35, align 8
  %413 = fmul double %409, f0xBFD9752E50F4B399
  %414 = call double @llvm.fmuladd.f64(double %412, double f0x3FED5C0357681EF3, double %413)
  %415 = getelementptr inbounds nuw i8, ptr %411, i64 8
  store double %414, ptr %415, align 8
  %416 = load double, ptr %36, align 8
  %417 = fmul double %416, f0x3FED5C0357681EF3
  %418 = call double @llvm.fmuladd.f64(double %412, double f0x3FD9752E50F4B399, double %417)
  %419 = load ptr, ptr %5, align 8
  %420 = getelementptr inbounds nuw i8, ptr %419, i64 16
  store double %418, ptr %420, align 8
  %421 = load double, ptr %23, align 8
  %422 = load double, ptr %25, align 8
  %423 = fmul double %422, 2.000000e+00
  %424 = call double @llvm.fmuladd.f64(double %423, double %422, double -1.000000e+00)
  %425 = load double, ptr %31, align 8
  %426 = load double, ptr %33, align 8
  %427 = load double, ptr %32, align 8
  %428 = fmul double %426, %427
  %429 = call double @llvm.fmuladd.f64(double %424, double %425, double %428)
  %430 = fmul double %421, %429
  store double %430, ptr %34, align 8
  %431 = load double, ptr %23, align 8
  %432 = load double, ptr %24, align 8
  %433 = fmul double %432, -2.000000e+00
  %434 = call double @llvm.fmuladd.f64(double %433, double %432, double 1.000000e+00)
  %435 = load double, ptr %32, align 8
  %436 = load double, ptr %33, align 8
  %437 = load double, ptr %31, align 8
  %438 = fneg double %437
  %439 = fmul double %436, %438
  %440 = call double @llvm.fmuladd.f64(double %434, double %435, double %439)
  %441 = fmul double %431, %440
  store double %441, ptr %35, align 8
  %442 = load double, ptr %23, align 8
  %443 = load double, ptr %30, align 8
  %444 = fmul double %443, 2.000000e+00
  %445 = load double, ptr %25, align 8
  %446 = load double, ptr %31, align 8
  %447 = load double, ptr %24, align 8
  %448 = load double, ptr %32, align 8
  %449 = fmul double %447, %448
  %450 = call double @llvm.fmuladd.f64(double %445, double %446, double %449)
  %451 = fmul double %444, %450
  %452 = fmul double %442, %451
  store double %452, ptr %36, align 8
  %453 = load double, ptr %34, align 8
  %454 = load ptr, ptr %5, align 8
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 24
  store double %453, ptr %455, align 8
  %456 = load double, ptr %35, align 8
  %457 = fmul double %452, f0xBFD9752E50F4B399
  %458 = call double @llvm.fmuladd.f64(double %456, double f0x3FED5C0357681EF3, double %457)
  %459 = getelementptr inbounds nuw i8, ptr %454, i64 32
  store double %458, ptr %459, align 8
  %460 = load double, ptr %36, align 8
  %461 = fmul double %460, f0x3FED5C0357681EF3
  %462 = call double @llvm.fmuladd.f64(double %456, double f0x3FD9752E50F4B399, double %461)
  %463 = load ptr, ptr %5, align 8
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 40
  store double %462, ptr %464, align 8
  ret void
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
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %12, double %12, double %9)
  %14 = call double @sqrt(double noundef %13) #4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double %14, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load double, ptr %18, align 8
  %20 = load double, ptr %17, align 8
  %21 = call double @atan2(double noundef %19, double noundef %20) #4
  %22 = fmul double %21, f0x400E8EC8A4AEACC4
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
  %24 = fcmp olt double %22, 0.000000e+00
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = load double, ptr %26, align 8
  %28 = fadd double %27, 2.400000e+01
  store double %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %32 = load double, ptr %31, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %35 = load double, ptr %34, align 8
  %36 = fdiv double %32, %35
  %37 = call double @asin(double noundef %36) #4
  %38 = fmul double %37, f0x404CA5DC1A63C1F8
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store double %38, ptr %39, align 8
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
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  store i32 1, ptr %5, align 4
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 1, %13
  br i1 %14, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph, %22
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %20, label %21

20:                                               ; preds = %15
  br label %27

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %15, label %..loopexit_crit_edge, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %12
  br label %27

27:                                               ; preds = %.loopexit, %20
  br label %28

28:                                               ; preds = %27, %2
  store i32 0, ptr %5, align 4
  br label %29

29:                                               ; preds = %28, %48
  store double f0x4142B42C80000000, ptr %8, align 16
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double 0.000000e+00, ptr %30, align 8
  store i32 0, ptr %6, align 4
  br label %31

31:                                               ; preds = %29, %43
  %32 = load double, ptr %8, align 16
  %33 = fadd double %32, 1.000000e+00
  store double %33, ptr %8, align 16
  store i32 0, ptr %7, align 4
  br label %34

34:                                               ; preds = %31, %38
  %35 = load i32, ptr %7, align 4
  call void @planetpv(ptr noundef nonnull %8, i32 noundef %35, ptr noundef nonnull %9)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [24 x i8], ptr %10, i64 %36
  call void @radecdist(ptr noundef nonnull %9, ptr noundef nonnull %37)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %7, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %34, label %42, !llvm.loop !11

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %6, align 4
  %46 = icmp slt i32 %45, 36525
  br i1 %46, label %31, label %47, !llvm.loop !12

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %5, align 4
  %51 = icmp slt i32 %50, 20
  br i1 %51, label %29, label %52, !llvm.loop !13

52:                                               ; preds = %48
  store i32 0, ptr %7, align 4
  br label %53

53:                                               ; preds = %52, %68
  %54 = load i32, ptr %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [24 x i8], ptr %10, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = sext i32 %54 to i64
  %59 = getelementptr inbounds [24 x i8], ptr %10, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %61 = load double, ptr %60, align 8
  %62 = load i32, ptr %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [24 x i8], ptr %10, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %66 = load double, ptr %65, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %57, double noundef %61, double noundef %66) #4
  br label %68

68:                                               ; preds = %53
  %69 = load i32, ptr %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %7, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %53, label %72, !llvm.loop !14

72:                                               ; preds = %68
  %73 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %74 = call i32 @fflush(ptr noundef %73) #4
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
