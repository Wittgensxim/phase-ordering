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
  %151 = load i32, ptr %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [72 x i8], ptr @kp, i64 %152
  %154 = load double, ptr %14, align 8
  %155 = load i32, ptr %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [80 x i8], ptr @kq, i64 %156
  %158 = load double, ptr %14, align 8
  %159 = load i32, ptr %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [72 x i8], ptr @ca, i64 %160
  %162 = load i32, ptr %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [72 x i8], ptr @sa, i64 %163
  %165 = load i32, ptr %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [80 x i8], ptr @cl, i64 %166
  %168 = load i32, ptr %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [80 x i8], ptr @sl, i64 %169
  %.promoted = load double, ptr %15, align 8
  %.promoted2 = load double, ptr %16, align 8
  %.promoted4 = load double, ptr %8, align 8
  %.promoted6 = load double, ptr %9, align 8
  br label %171

171:                                              ; preds = %208, %3
  %172 = phi double [ %.promoted6, %3 ], [ %207, %208 ]
  %173 = phi double [ %.promoted4, %3 ], [ %196, %208 ]
  %174 = phi double [ %.promoted2, %3 ], [ %185, %208 ]
  %175 = phi double [ %.promoted, %3 ], [ %181, %208 ]
  %storemerge = phi i32 [ 0, %3 ], [ %209, %208 ]
  %176 = icmp slt i32 %storemerge, 8
  br i1 %176, label %177, label %210

177:                                              ; preds = %171
  %178 = sext i32 %storemerge to i64
  %179 = getelementptr inbounds [8 x i8], ptr %153, i64 %178
  %180 = load double, ptr %179, align 8
  %181 = fmul double %180, %154
  %182 = sext i32 %storemerge to i64
  %183 = getelementptr inbounds [8 x i8], ptr %157, i64 %182
  %184 = load double, ptr %183, align 8
  %185 = fmul double %184, %158
  %186 = sext i32 %storemerge to i64
  %187 = getelementptr inbounds [8 x i8], ptr %161, i64 %186
  %188 = load double, ptr %187, align 8
  %189 = call double @cos(double noundef %181) #4
  %190 = sext i32 %storemerge to i64
  %191 = getelementptr inbounds [8 x i8], ptr %164, i64 %190
  %192 = load double, ptr %191, align 8
  %193 = call double @sin(double noundef %181) #4
  %194 = fmul double %192, %193
  %195 = call double @llvm.fmuladd.f64(double %188, double %189, double %194)
  %196 = call double @llvm.fmuladd.f64(double %195, double f0x3E7AD7F29ABCAF48, double %173)
  %197 = sext i32 %storemerge to i64
  %198 = getelementptr inbounds [8 x i8], ptr %167, i64 %197
  %199 = load double, ptr %198, align 8
  %200 = call double @cos(double noundef %185) #4
  %201 = sext i32 %storemerge to i64
  %202 = getelementptr inbounds [8 x i8], ptr %170, i64 %201
  %203 = load double, ptr %202, align 8
  %204 = call double @sin(double noundef %185) #4
  %205 = fmul double %203, %204
  %206 = call double @llvm.fmuladd.f64(double %199, double %200, double %205)
  %207 = call double @llvm.fmuladd.f64(double %206, double f0x3E7AD7F29ABCAF48, double %172)
  br label %208

208:                                              ; preds = %177
  %209 = add nsw i32 %storemerge, 1
  br label %171, !llvm.loop !7

210:                                              ; preds = %171
  %.lcssa7 = phi double [ %172, %171 ]
  %.lcssa5 = phi double [ %173, %171 ]
  %.lcssa3 = phi double [ %174, %171 ]
  %.lcssa = phi double [ %175, %171 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %171 ]
  store i32 %storemerge.lcssa, ptr %6, align 4
  store double %.lcssa, ptr %15, align 8
  store double %.lcssa3, ptr %16, align 8
  store double %.lcssa5, ptr %8, align 8
  store double %.lcssa7, ptr %9, align 8
  %211 = load i32, ptr %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [72 x i8], ptr @kp, i64 %212
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 64
  %215 = load double, ptr %214, align 8
  %216 = load double, ptr %14, align 8
  %217 = fmul double %215, %216
  store double %217, ptr %15, align 8
  %218 = load double, ptr %8, align 8
  %219 = load double, ptr %7, align 8
  %220 = load i32, ptr %4, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [72 x i8], ptr @ca, i64 %221
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 64
  %224 = load double, ptr %223, align 8
  %225 = load double, ptr %15, align 8
  %226 = call double @cos(double noundef %225) #4
  %227 = load i32, ptr %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [72 x i8], ptr @sa, i64 %228
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 64
  %231 = load double, ptr %230, align 8
  %232 = load double, ptr %15, align 8
  %233 = call double @sin(double noundef %232) #4
  %234 = fmul double %231, %233
  %235 = call double @llvm.fmuladd.f64(double %224, double %226, double %234)
  %236 = fmul double %219, %235
  %237 = call double @llvm.fmuladd.f64(double %236, double f0x3E7AD7F29ABCAF48, double %218)
  store double %237, ptr %8, align 8
  %238 = load i32, ptr %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [80 x i8], ptr @kq, i64 %239
  %241 = load double, ptr %14, align 8
  %242 = load double, ptr %7, align 8
  %243 = load i32, ptr %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [80 x i8], ptr @cl, i64 %244
  %246 = load i32, ptr %4, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [80 x i8], ptr @sl, i64 %247
  %.promoted9 = load double, ptr %16, align 8
  %.promoted11 = load double, ptr %9, align 8
  br label %249

249:                                              ; preds = %270, %210
  %250 = phi double [ %.promoted11, %210 ], [ %269, %270 ]
  %251 = phi double [ %.promoted9, %210 ], [ %257, %270 ]
  %storemerge1 = phi i32 [ 8, %210 ], [ %271, %270 ]
  %252 = icmp slt i32 %storemerge1, 10
  br i1 %252, label %253, label %272

253:                                              ; preds = %249
  %254 = sext i32 %storemerge1 to i64
  %255 = getelementptr inbounds [8 x i8], ptr %240, i64 %254
  %256 = load double, ptr %255, align 8
  %257 = fmul double %256, %241
  %258 = sext i32 %storemerge1 to i64
  %259 = getelementptr inbounds [8 x i8], ptr %245, i64 %258
  %260 = load double, ptr %259, align 8
  %261 = call double @cos(double noundef %257) #4
  %262 = sext i32 %storemerge1 to i64
  %263 = getelementptr inbounds [8 x i8], ptr %248, i64 %262
  %264 = load double, ptr %263, align 8
  %265 = call double @sin(double noundef %257) #4
  %266 = fmul double %264, %265
  %267 = call double @llvm.fmuladd.f64(double %260, double %261, double %266)
  %268 = fmul double %242, %267
  %269 = call double @llvm.fmuladd.f64(double %268, double f0x3E7AD7F29ABCAF48, double %250)
  br label %270

270:                                              ; preds = %253
  %271 = add nsw i32 %storemerge1, 1
  br label %249, !llvm.loop !9

272:                                              ; preds = %249
  %.lcssa12 = phi double [ %250, %249 ]
  %.lcssa10 = phi double [ %251, %249 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %249 ]
  store i32 %storemerge1.lcssa, ptr %6, align 4
  store double %.lcssa10, ptr %16, align 8
  store double %.lcssa12, ptr %9, align 8
  %273 = load double, ptr %9, align 8
  %274 = call double @fmod(double noundef %273, double noundef f0x401921FB54442D18) #4
  store double %274, ptr %9, align 8
  %275 = load double, ptr %11, align 8
  %276 = fsub double %274, %275
  store double %276, ptr %17, align 8
  %277 = load double, ptr %10, align 8
  %278 = call double @sin(double noundef %276) #4
  %279 = call double @llvm.fmuladd.f64(double %277, double %278, double %276)
  store double %279, ptr %18, align 8
  store i32 0, ptr %6, align 4
  %280 = load double, ptr %17, align 8
  %281 = load double, ptr %10, align 8
  %282 = fneg double %281
  %.promoted13 = load double, ptr %18, align 8
  %.promoted17 = load i32, ptr %6, align 4
  br label %283

283:                                              ; preds = %299, %272
  %284 = phi i32 [ %293, %299 ], [ %.promoted17, %272 ]
  %285 = phi double [ %292, %299 ], [ %.promoted13, %272 ]
  %286 = fsub double %280, %285
  %287 = call double @sin(double noundef %285) #4
  %288 = call double @llvm.fmuladd.f64(double %281, double %287, double %286)
  %289 = call double @cos(double noundef %285) #4
  %290 = call double @llvm.fmuladd.f64(double %282, double %289, double 1.000000e+00)
  %291 = fdiv double %288, %290
  %292 = fadd double %285, %291
  %293 = add nsw i32 %284, 1
  %294 = icmp sgt i32 %284, 8
  br i1 %294, label %298, label %295

295:                                              ; preds = %283
  %296 = call double @llvm.fabs.f64(double %291)
  %297 = fcmp olt double %296, f0x3D719799812DEA11
  br i1 %297, label %298, label %299

298:                                              ; preds = %295, %283
  %.lcssa18 = phi i32 [ %293, %295 ], [ %293, %283 ]
  %.lcssa16 = phi double [ %291, %295 ], [ %291, %283 ]
  %.lcssa14 = phi double [ %292, %295 ], [ %292, %283 ]
  store double %.lcssa14, ptr %18, align 8
  store double %.lcssa16, ptr %19, align 8
  store i32 %.lcssa18, ptr %6, align 4
  br label %300

299:                                              ; preds = %295
  br label %283

300:                                              ; preds = %298
  %301 = load double, ptr %18, align 8
  %302 = fmul double %301, 5.000000e-01
  store double %302, ptr %20, align 8
  %303 = load double, ptr %10, align 8
  %304 = fadd double %303, 1.000000e+00
  %305 = fsub double 1.000000e+00, %303
  %306 = fdiv double %304, %305
  %307 = call double @sqrt(double noundef %306) #4
  %308 = call double @sin(double noundef %302) #4
  %309 = fmul double %307, %308
  %310 = load double, ptr %20, align 8
  %311 = call double @cos(double noundef %310) #4
  %312 = call double @atan2(double noundef %309, double noundef %311) #4
  %313 = fmul double %312, 2.000000e+00
  store double %313, ptr %21, align 8
  %314 = load double, ptr %8, align 8
  %315 = load double, ptr %10, align 8
  %316 = load double, ptr %18, align 8
  %317 = call double @cos(double noundef %316) #4
  %318 = fneg double %315
  %319 = call double @llvm.fmuladd.f64(double %318, double %317, double 1.000000e+00)
  %320 = fmul double %314, %319
  store double %320, ptr %22, align 8
  %321 = load i32, ptr %4, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [8 x i8], ptr @amas, i64 %322
  %324 = load double, ptr %323, align 8
  %325 = fdiv double 1.000000e+00, %324
  %326 = fadd double %325, 1.000000e+00
  %327 = load double, ptr %8, align 8
  %328 = fmul double %327, %327
  %329 = fmul double %328, %327
  %330 = fdiv double %326, %329
  %331 = call double @sqrt(double noundef %330) #4
  %332 = fmul double %331, f0x3F919D6D51A6B69A
  store double %332, ptr %23, align 8
  %333 = load double, ptr %12, align 8
  %334 = fmul double %333, 5.000000e-01
  %335 = call double @sin(double noundef %334) #4
  %336 = load double, ptr %13, align 8
  %337 = call double @cos(double noundef %336) #4
  %338 = fmul double %335, %337
  store double %338, ptr %24, align 8
  %339 = call double @sin(double noundef %336) #4
  %340 = fmul double %335, %339
  store double %340, ptr %25, align 8
  %341 = load double, ptr %21, align 8
  %342 = load double, ptr %11, align 8
  %343 = fadd double %341, %342
  %344 = call double @sin(double noundef %343) #4
  store double %344, ptr %26, align 8
  %345 = call double @cos(double noundef %343) #4
  store double %345, ptr %27, align 8
  %346 = load double, ptr %25, align 8
  %347 = load double, ptr %24, align 8
  %348 = fneg double %344
  %349 = fmul double %347, %348
  %350 = call double @llvm.fmuladd.f64(double %346, double %345, double %349)
  %351 = fmul double %350, 2.000000e+00
  store double %351, ptr %28, align 8
  %352 = load double, ptr %8, align 8
  %353 = load double, ptr %10, align 8
  %354 = fneg double %353
  %355 = call double @llvm.fmuladd.f64(double %354, double %353, double 1.000000e+00)
  %356 = call double @sqrt(double noundef %355) #4
  %357 = fdiv double %352, %356
  store double %357, ptr %29, align 8
  %358 = load double, ptr %12, align 8
  %359 = fmul double %358, 5.000000e-01
  %360 = call double @cos(double noundef %359) #4
  store double %360, ptr %30, align 8
  %361 = load double, ptr %10, align 8
  %362 = load double, ptr %11, align 8
  %363 = call double @sin(double noundef %362) #4
  %364 = load double, ptr %26, align 8
  %365 = call double @llvm.fmuladd.f64(double %361, double %363, double %364)
  %366 = load double, ptr %29, align 8
  %367 = fmul double %365, %366
  store double %367, ptr %31, align 8
  %368 = load double, ptr %10, align 8
  %369 = load double, ptr %11, align 8
  %370 = call double @cos(double noundef %369) #4
  %371 = load double, ptr %27, align 8
  %372 = call double @llvm.fmuladd.f64(double %368, double %370, double %371)
  %373 = load double, ptr %29, align 8
  %374 = fmul double %372, %373
  store double %374, ptr %32, align 8
  %375 = load double, ptr %25, align 8
  %376 = fmul double %375, 2.000000e+00
  %377 = load double, ptr %24, align 8
  %378 = fmul double %376, %377
  store double %378, ptr %33, align 8
  %379 = load double, ptr %22, align 8
  %380 = load double, ptr %27, align 8
  %381 = load double, ptr %28, align 8
  %382 = load double, ptr %25, align 8
  %383 = fneg double %381
  %384 = call double @llvm.fmuladd.f64(double %383, double %382, double %380)
  %385 = fmul double %379, %384
  store double %385, ptr %34, align 8
  %386 = load double, ptr %22, align 8
  %387 = load double, ptr %26, align 8
  %388 = load double, ptr %28, align 8
  %389 = load double, ptr %24, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %389, double %387)
  %391 = fmul double %386, %390
  store double %391, ptr %35, align 8
  %392 = load double, ptr %22, align 8
  %393 = fneg double %388
  %394 = load double, ptr %30, align 8
  %395 = fmul double %394, %393
  %396 = fmul double %392, %395
  store double %396, ptr %36, align 8
  %397 = load double, ptr %34, align 8
  %398 = load ptr, ptr %5, align 8
  store double %397, ptr %398, align 8
  %399 = load double, ptr %35, align 8
  %400 = fmul double %396, f0xBFD9752E50F4B399
  %401 = call double @llvm.fmuladd.f64(double %399, double f0x3FED5C0357681EF3, double %400)
  %402 = getelementptr inbounds nuw i8, ptr %398, i64 8
  store double %401, ptr %402, align 8
  %403 = load double, ptr %36, align 8
  %404 = fmul double %403, f0x3FED5C0357681EF3
  %405 = call double @llvm.fmuladd.f64(double %399, double f0x3FD9752E50F4B399, double %404)
  %406 = load ptr, ptr %5, align 8
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 16
  store double %405, ptr %407, align 8
  %408 = load double, ptr %23, align 8
  %409 = load double, ptr %25, align 8
  %410 = fmul double %409, 2.000000e+00
  %411 = call double @llvm.fmuladd.f64(double %410, double %409, double -1.000000e+00)
  %412 = load double, ptr %31, align 8
  %413 = load double, ptr %33, align 8
  %414 = load double, ptr %32, align 8
  %415 = fmul double %413, %414
  %416 = call double @llvm.fmuladd.f64(double %411, double %412, double %415)
  %417 = fmul double %408, %416
  store double %417, ptr %34, align 8
  %418 = load double, ptr %23, align 8
  %419 = load double, ptr %24, align 8
  %420 = fmul double %419, -2.000000e+00
  %421 = call double @llvm.fmuladd.f64(double %420, double %419, double 1.000000e+00)
  %422 = load double, ptr %32, align 8
  %423 = load double, ptr %33, align 8
  %424 = load double, ptr %31, align 8
  %425 = fneg double %424
  %426 = fmul double %423, %425
  %427 = call double @llvm.fmuladd.f64(double %421, double %422, double %426)
  %428 = fmul double %418, %427
  store double %428, ptr %35, align 8
  %429 = load double, ptr %23, align 8
  %430 = load double, ptr %30, align 8
  %431 = fmul double %430, 2.000000e+00
  %432 = load double, ptr %25, align 8
  %433 = load double, ptr %31, align 8
  %434 = load double, ptr %24, align 8
  %435 = load double, ptr %32, align 8
  %436 = fmul double %434, %435
  %437 = call double @llvm.fmuladd.f64(double %432, double %433, double %436)
  %438 = fmul double %431, %437
  %439 = fmul double %429, %438
  store double %439, ptr %36, align 8
  %440 = load double, ptr %34, align 8
  %441 = load ptr, ptr %5, align 8
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 24
  store double %440, ptr %442, align 8
  %443 = load double, ptr %35, align 8
  %444 = fmul double %439, f0xBFD9752E50F4B399
  %445 = call double @llvm.fmuladd.f64(double %443, double f0x3FED5C0357681EF3, double %444)
  %446 = getelementptr inbounds nuw i8, ptr %441, i64 32
  store double %445, ptr %446, align 8
  %447 = load double, ptr %36, align 8
  %448 = fmul double %447, f0x3FED5C0357681EF3
  %449 = call double @llvm.fmuladd.f64(double %443, double f0x3FD9752E50F4B399, double %448)
  %450 = load ptr, ptr %5, align 8
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 40
  store double %449, ptr %451, align 8
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
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %16

16:                                               ; preds = %23, %12
  %storemerge = phi i32 [ 1, %12 ], [ %24, %23 ]
  %17 = icmp slt i32 %storemerge, %13
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %16
  %19 = load ptr, ptr %15, align 8
  %20 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %21, label %22

21:                                               ; preds = %18
  %storemerge.lcssa5 = phi i32 [ %storemerge, %18 ]
  store i32 %storemerge.lcssa5, ptr %5, align 4
  br label %25

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %storemerge, 1
  br label %16, !llvm.loop !10

.loopexit:                                        ; preds = %16
  %storemerge.lcssa = phi i32 [ %storemerge, %16 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  br label %25

25:                                               ; preds = %.loopexit, %21
  br label %26

26:                                               ; preds = %25, %2
  %27 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.promoted8 = load i32, ptr %7, align 1
  %.promoted = load i32, ptr %6, align 1
  br label %28

28:                                               ; preds = %47, %26
  %storemerge3.lcssa10 = phi i32 [ %.promoted, %26 ], [ %storemerge3.lcssa, %47 ]
  %storemerge4.lcssa6.lcssa9 = phi i32 [ %.promoted8, %26 ], [ %storemerge4.lcssa6.lcssa, %47 ]
  %storemerge1 = phi i32 [ 0, %26 ], [ %48, %47 ]
  %29 = icmp slt i32 %storemerge1, 20
  br i1 %29, label %30, label %49

30:                                               ; preds = %28
  store double f0x4142B42C80000000, ptr %8, align 16
  store double 0.000000e+00, ptr %27, align 8
  br label %31

31:                                               ; preds = %44, %30
  %storemerge4.lcssa6 = phi i32 [ %storemerge4.lcssa6.lcssa9, %30 ], [ %storemerge4.lcssa, %44 ]
  %storemerge3 = phi i32 [ 0, %30 ], [ %45, %44 ]
  %32 = icmp slt i32 %storemerge3, 36525
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = load double, ptr %8, align 16
  %35 = fadd double %34, 1.000000e+00
  store double %35, ptr %8, align 16
  br label %36

36:                                               ; preds = %41, %33
  %storemerge4 = phi i32 [ 0, %33 ], [ %42, %41 ]
  %37 = icmp slt i32 %storemerge4, 8
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  call void @planetpv(ptr noundef nonnull %8, i32 noundef %storemerge4, ptr noundef nonnull %9)
  %39 = sext i32 %storemerge4 to i64
  %40 = getelementptr inbounds [24 x i8], ptr %10, i64 %39
  call void @radecdist(ptr noundef nonnull %9, ptr noundef nonnull %40)
  br label %41

41:                                               ; preds = %38
  %42 = add nsw i32 %storemerge4, 1
  br label %36, !llvm.loop !11

43:                                               ; preds = %36
  %storemerge4.lcssa = phi i32 [ %storemerge4, %36 ]
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %storemerge3, 1
  br label %31, !llvm.loop !12

46:                                               ; preds = %31
  %storemerge4.lcssa6.lcssa = phi i32 [ %storemerge4.lcssa6, %31 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %31 ]
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %storemerge1, 1
  br label %28, !llvm.loop !13

49:                                               ; preds = %28
  %storemerge3.lcssa10.lcssa = phi i32 [ %storemerge3.lcssa10, %28 ]
  %storemerge4.lcssa6.lcssa9.lcssa = phi i32 [ %storemerge4.lcssa6.lcssa9, %28 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %28 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  store i32 %storemerge4.lcssa6.lcssa9.lcssa, ptr %7, align 1
  store i32 %storemerge3.lcssa10.lcssa, ptr %6, align 1
  br label %50

50:                                               ; preds = %65, %49
  %storemerge2 = phi i32 [ 0, %49 ], [ %66, %65 ]
  %51 = icmp slt i32 %storemerge2, 8
  br i1 %51, label %52, label %67

52:                                               ; preds = %50
  %53 = sext i32 %storemerge2 to i64
  %54 = getelementptr inbounds [24 x i8], ptr %10, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = sext i32 %storemerge2 to i64
  %57 = getelementptr inbounds [24 x i8], ptr %10, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 8
  %59 = load double, ptr %58, align 8
  %60 = sext i32 %storemerge2 to i64
  %61 = getelementptr inbounds [24 x i8], ptr %10, i64 %60
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %63 = load double, ptr %62, align 8
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %55, double noundef %59, double noundef %63) #4
  br label %65

65:                                               ; preds = %52
  %66 = add nsw i32 %storemerge2, 1
  br label %50, !llvm.loop !14

67:                                               ; preds = %50
  %storemerge2.lcssa = phi i32 [ %storemerge2, %50 ]
  store i32 %storemerge2.lcssa, ptr %7, align 4
  %68 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %69 = call i32 @fflush(ptr noundef %68) #4
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
