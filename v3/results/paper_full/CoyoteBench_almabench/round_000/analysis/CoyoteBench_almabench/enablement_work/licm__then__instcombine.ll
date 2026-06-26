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
  store i32 %1, ptr %4, align 4
  store ptr %2, ptr %5, align 8
  %35 = load double, ptr %0, align 8
  %36 = fadd double %35, f0xC142B42C80000000
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load double, ptr %37, align 8
  %39 = fadd double %36, %38
  %40 = fdiv double %39, 3.652500e+05
  store double %40, ptr %7, align 8
  %41 = load i32, ptr %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [24 x i8], ptr @a, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds [24 x i8], ptr @a, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %48 = load double, ptr %47, align 8
  %49 = load i32, ptr %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [24 x i8], ptr @a, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %53 = load double, ptr %52, align 8
  %54 = load double, ptr %7, align 8
  %55 = call double @llvm.fmuladd.f64(double %53, double %54, double %48)
  %56 = call double @llvm.fmuladd.f64(double %55, double %54, double %44)
  store double %56, ptr %8, align 8
  %57 = load i32, ptr %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %64 = load double, ptr %63, align 8
  %65 = load i32, ptr %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %66
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %69 = load double, ptr %68, align 8
  %70 = load double, ptr %7, align 8
  %71 = call double @llvm.fmuladd.f64(double %69, double %70, double %64)
  %72 = fmul double %71, %70
  %73 = call double @llvm.fmuladd.f64(double %60, double 3.600000e+03, double %72)
  %74 = fmul double %73, f0x3ED455A5B2FF8F9D
  store double %74, ptr %9, align 8
  %75 = load i32, ptr %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [24 x i8], ptr @e, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = sext i32 %75 to i64
  %80 = getelementptr inbounds [24 x i8], ptr @e, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %82 = load double, ptr %81, align 8
  %83 = load i32, ptr %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [24 x i8], ptr @e, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %87 = load double, ptr %86, align 8
  %88 = load double, ptr %7, align 8
  %89 = call double @llvm.fmuladd.f64(double %87, double %88, double %82)
  %90 = call double @llvm.fmuladd.f64(double %89, double %88, double %78)
  store double %90, ptr %10, align 8
  %91 = load i32, ptr %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [24 x i8], ptr @pi, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = sext i32 %91 to i64
  %96 = getelementptr inbounds [24 x i8], ptr @pi, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %98 = load double, ptr %97, align 8
  %99 = load i32, ptr %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [24 x i8], ptr @pi, i64 %100
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 16
  %103 = load double, ptr %102, align 8
  %104 = load double, ptr %7, align 8
  %105 = call double @llvm.fmuladd.f64(double %103, double %104, double %98)
  %106 = fmul double %105, %104
  %107 = call double @llvm.fmuladd.f64(double %94, double 3.600000e+03, double %106)
  %108 = fmul double %107, f0x3ED455A5B2FF8F9D
  %109 = call double @anpm(double noundef %108)
  store double %109, ptr %11, align 8
  %110 = load i32, ptr %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %111
  %113 = load double, ptr %112, align 8
  %114 = sext i32 %110 to i64
  %115 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %114
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %117 = load double, ptr %116, align 8
  %118 = load i32, ptr %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %122 = load double, ptr %121, align 8
  %123 = load double, ptr %7, align 8
  %124 = call double @llvm.fmuladd.f64(double %122, double %123, double %117)
  %125 = fmul double %124, %123
  %126 = call double @llvm.fmuladd.f64(double %113, double 3.600000e+03, double %125)
  %127 = fmul double %126, f0x3ED455A5B2FF8F9D
  store double %127, ptr %12, align 8
  %128 = load i32, ptr %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [24 x i8], ptr @omega, i64 %129
  %131 = load double, ptr %130, align 8
  %132 = sext i32 %128 to i64
  %133 = getelementptr inbounds [24 x i8], ptr @omega, i64 %132
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %135 = load double, ptr %134, align 8
  %136 = load i32, ptr %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [24 x i8], ptr @omega, i64 %137
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %140 = load double, ptr %139, align 8
  %141 = load double, ptr %7, align 8
  %142 = call double @llvm.fmuladd.f64(double %140, double %141, double %135)
  %143 = fmul double %142, %141
  %144 = call double @llvm.fmuladd.f64(double %131, double 3.600000e+03, double %143)
  %145 = fmul double %144, f0x3ED455A5B2FF8F9D
  %146 = call double @anpm(double noundef %145)
  store double %146, ptr %13, align 8
  %147 = load double, ptr %7, align 8
  %148 = fmul double %147, f0x3FD702A41F2E9970
  store double %148, ptr %14, align 8
  store i32 0, ptr %6, align 4
  %149 = load i32, ptr %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [72 x i8], ptr @kp, i64 %150
  %152 = sext i32 %149 to i64
  %153 = getelementptr inbounds [80 x i8], ptr @kq, i64 %152
  %154 = load double, ptr %14, align 8
  %155 = sext i32 %149 to i64
  %156 = getelementptr inbounds [72 x i8], ptr @ca, i64 %155
  %157 = load i32, ptr %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [72 x i8], ptr @sa, i64 %158
  %160 = sext i32 %157 to i64
  %161 = getelementptr inbounds [80 x i8], ptr @cl, i64 %160
  %162 = sext i32 %157 to i64
  %163 = getelementptr inbounds [80 x i8], ptr @sl, i64 %162
  %.promoted = load i32, ptr %6, align 4
  %.promoted1 = load double, ptr %15, align 8
  %.promoted3 = load double, ptr %16, align 8
  %.promoted5 = load double, ptr %8, align 8
  %.promoted7 = load double, ptr %9, align 8
  br label %164

164:                                              ; preds = %196, %3
  %165 = phi double [ %199, %196 ], [ %.promoted7, %3 ]
  %166 = phi double [ %202, %196 ], [ %.promoted5, %3 ]
  %167 = phi double [ %179, %196 ], [ %.promoted3, %3 ]
  %168 = phi double [ %175, %196 ], [ %.promoted1, %3 ]
  %169 = phi i32 [ %203, %196 ], [ %.promoted, %3 ]
  %170 = icmp slt i32 %169, 8
  br i1 %170, label %171, label %204

171:                                              ; preds = %164
  %172 = sext i32 %169 to i64
  %173 = getelementptr inbounds [8 x i8], ptr %151, i64 %172
  %174 = load double, ptr %173, align 8
  %175 = fmul double %174, %148
  %176 = sext i32 %169 to i64
  %177 = getelementptr inbounds [8 x i8], ptr %153, i64 %176
  %178 = load double, ptr %177, align 8
  %179 = fmul double %178, %154
  %180 = sext i32 %169 to i64
  %181 = getelementptr inbounds [8 x i8], ptr %156, i64 %180
  %182 = load double, ptr %181, align 8
  %183 = call double @cos(double noundef %175) #4
  %184 = sext i32 %169 to i64
  %185 = getelementptr inbounds [8 x i8], ptr %159, i64 %184
  %186 = load double, ptr %185, align 8
  %187 = call double @sin(double noundef %175) #4
  %188 = sext i32 %169 to i64
  %189 = getelementptr inbounds [8 x i8], ptr %161, i64 %188
  %190 = load double, ptr %189, align 8
  %191 = call double @cos(double noundef %179) #4
  %192 = sext i32 %169 to i64
  %193 = getelementptr inbounds [8 x i8], ptr %163, i64 %192
  %194 = load double, ptr %193, align 8
  %195 = call double @sin(double noundef %179) #4
  br label %196

196:                                              ; preds = %171
  %197 = fmul double %194, %195
  %198 = call double @llvm.fmuladd.f64(double %190, double %191, double %197)
  %199 = call double @llvm.fmuladd.f64(double %198, double f0x3E7AD7F29ABCAF48, double %165)
  %200 = fmul double %186, %187
  %201 = call double @llvm.fmuladd.f64(double %182, double %183, double %200)
  %202 = call double @llvm.fmuladd.f64(double %201, double f0x3E7AD7F29ABCAF48, double %166)
  %203 = add nsw i32 %169, 1
  br label %164, !llvm.loop !7

204:                                              ; preds = %164
  store i32 %169, ptr %6, align 4
  store double %168, ptr %15, align 8
  store double %167, ptr %16, align 8
  store double %166, ptr %8, align 8
  store double %165, ptr %9, align 8
  %205 = load i32, ptr %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [72 x i8], ptr @kp, i64 %206
  %208 = getelementptr inbounds nuw i8, ptr %207, i64 64
  %209 = load double, ptr %208, align 8
  %210 = load double, ptr %14, align 8
  %211 = fmul double %209, %210
  store double %211, ptr %15, align 8
  %212 = load double, ptr %8, align 8
  %213 = load double, ptr %7, align 8
  %214 = load i32, ptr %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [72 x i8], ptr @ca, i64 %215
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 64
  %218 = load double, ptr %217, align 8
  %219 = load double, ptr %15, align 8
  %220 = call double @cos(double noundef %219) #4
  %221 = load i32, ptr %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [72 x i8], ptr @sa, i64 %222
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 64
  %225 = load double, ptr %224, align 8
  %226 = load double, ptr %15, align 8
  %227 = call double @sin(double noundef %226) #4
  %228 = fmul double %225, %227
  %229 = call double @llvm.fmuladd.f64(double %218, double %220, double %228)
  %230 = fmul double %213, %229
  %231 = call double @llvm.fmuladd.f64(double %230, double f0x3E7AD7F29ABCAF48, double %212)
  store double %231, ptr %8, align 8
  store i32 8, ptr %6, align 4
  %232 = load i32, ptr %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [80 x i8], ptr @kq, i64 %233
  %235 = load double, ptr %14, align 8
  %236 = load double, ptr %7, align 8
  %237 = sext i32 %232 to i64
  %238 = getelementptr inbounds [80 x i8], ptr @cl, i64 %237
  %239 = load i32, ptr %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [80 x i8], ptr @sl, i64 %240
  %.promoted9 = load i32, ptr %6, align 4
  %.promoted11 = load double, ptr %16, align 8
  %.promoted13 = load double, ptr %9, align 8
  br label %242

242:                                              ; preds = %260, %204
  %243 = phi double [ %264, %260 ], [ %.promoted13, %204 ]
  %244 = phi double [ %251, %260 ], [ %.promoted11, %204 ]
  %245 = phi i32 [ %265, %260 ], [ %.promoted9, %204 ]
  %246 = icmp slt i32 %245, 10
  br i1 %246, label %247, label %266

247:                                              ; preds = %242
  %248 = sext i32 %245 to i64
  %249 = getelementptr inbounds [8 x i8], ptr %234, i64 %248
  %250 = load double, ptr %249, align 8
  %251 = fmul double %250, %235
  %252 = sext i32 %245 to i64
  %253 = getelementptr inbounds [8 x i8], ptr %238, i64 %252
  %254 = load double, ptr %253, align 8
  %255 = call double @cos(double noundef %251) #4
  %256 = sext i32 %245 to i64
  %257 = getelementptr inbounds [8 x i8], ptr %241, i64 %256
  %258 = load double, ptr %257, align 8
  %259 = call double @sin(double noundef %251) #4
  br label %260

260:                                              ; preds = %247
  %261 = fmul double %258, %259
  %262 = call double @llvm.fmuladd.f64(double %254, double %255, double %261)
  %263 = fmul double %236, %262
  %264 = call double @llvm.fmuladd.f64(double %263, double f0x3E7AD7F29ABCAF48, double %243)
  %265 = add nsw i32 %245, 1
  br label %242, !llvm.loop !9

266:                                              ; preds = %242
  store i32 %245, ptr %6, align 4
  store double %244, ptr %16, align 8
  store double %243, ptr %9, align 8
  %267 = call double @fmod(double noundef %243, double noundef f0x401921FB54442D18) #4
  store double %267, ptr %9, align 8
  %268 = load double, ptr %11, align 8
  %269 = fsub double %267, %268
  %270 = load double, ptr %10, align 8
  %271 = call double @sin(double noundef %269) #4
  %272 = call double @llvm.fmuladd.f64(double %270, double %271, double %269)
  store double %272, ptr %17, align 8
  store i32 0, ptr %6, align 4
  %273 = fneg double %270
  br label %274

274:                                              ; preds = %290, %266
  %275 = phi i32 [ %284, %290 ], [ 0, %266 ]
  %276 = phi double [ %283, %290 ], [ %272, %266 ]
  %277 = fsub double %269, %276
  %278 = call double @sin(double noundef %276) #4
  %279 = call double @llvm.fmuladd.f64(double %270, double %278, double %277)
  %280 = call double @cos(double noundef %276) #4
  %281 = call double @llvm.fmuladd.f64(double %273, double %280, double 1.000000e+00)
  %282 = fdiv double %279, %281
  %283 = fadd double %276, %282
  %284 = add nuw nsw i32 %275, 1
  %285 = icmp samesign ugt i32 %275, 8
  br i1 %285, label %289, label %286

286:                                              ; preds = %274
  %287 = call double @llvm.fabs.f64(double %282)
  %288 = fcmp olt double %287, f0x3D719799812DEA11
  br i1 %288, label %289, label %290

289:                                              ; preds = %286, %274
  store double %283, ptr %17, align 8
  store i32 %284, ptr %6, align 4
  br label %291

290:                                              ; preds = %286
  br label %274

291:                                              ; preds = %289
  %292 = load double, ptr %17, align 8
  %293 = fmul double %292, 5.000000e-01
  store double %293, ptr %18, align 8
  %294 = load double, ptr %10, align 8
  %295 = fadd double %294, 1.000000e+00
  %296 = fsub double 1.000000e+00, %294
  %297 = fdiv double %295, %296
  %298 = call double @sqrt(double noundef %297) #4
  %299 = call double @sin(double noundef %293) #4
  %300 = fmul double %298, %299
  %301 = load double, ptr %18, align 8
  %302 = call double @cos(double noundef %301) #4
  %303 = call double @atan2(double noundef %300, double noundef %302) #4
  %304 = fmul double %303, 2.000000e+00
  store double %304, ptr %19, align 8
  %305 = load double, ptr %8, align 8
  %306 = load double, ptr %10, align 8
  %307 = load double, ptr %17, align 8
  %308 = call double @cos(double noundef %307) #4
  %309 = fneg double %306
  %310 = call double @llvm.fmuladd.f64(double %309, double %308, double 1.000000e+00)
  %311 = fmul double %305, %310
  store double %311, ptr %20, align 8
  %312 = load i32, ptr %4, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [8 x i8], ptr @amas, i64 %313
  %315 = load double, ptr %314, align 8
  %316 = fdiv double 1.000000e+00, %315
  %317 = fadd double %316, 1.000000e+00
  %318 = load double, ptr %8, align 8
  %319 = fmul double %318, %318
  %320 = fmul double %319, %318
  %321 = fdiv double %317, %320
  %322 = call double @sqrt(double noundef %321) #4
  %323 = fmul double %322, f0x3F919D6D51A6B69A
  store double %323, ptr %21, align 8
  %324 = load double, ptr %12, align 8
  %325 = fmul double %324, 5.000000e-01
  %326 = call double @sin(double noundef %325) #4
  %327 = load double, ptr %13, align 8
  %328 = call double @cos(double noundef %327) #4
  %329 = fmul double %326, %328
  store double %329, ptr %22, align 8
  %330 = call double @sin(double noundef %327) #4
  %331 = fmul double %326, %330
  store double %331, ptr %23, align 8
  %332 = load double, ptr %19, align 8
  %333 = load double, ptr %11, align 8
  %334 = fadd double %332, %333
  %335 = call double @sin(double noundef %334) #4
  store double %335, ptr %24, align 8
  %336 = call double @cos(double noundef %334) #4
  store double %336, ptr %25, align 8
  %337 = load double, ptr %23, align 8
  %338 = load double, ptr %22, align 8
  %339 = fneg double %335
  %340 = fmul double %338, %339
  %341 = call double @llvm.fmuladd.f64(double %337, double %336, double %340)
  %342 = fmul double %341, 2.000000e+00
  store double %342, ptr %26, align 8
  %343 = load double, ptr %8, align 8
  %344 = load double, ptr %10, align 8
  %345 = fneg double %344
  %346 = call double @llvm.fmuladd.f64(double %345, double %344, double 1.000000e+00)
  %347 = call double @sqrt(double noundef %346) #4
  %348 = fdiv double %343, %347
  store double %348, ptr %27, align 8
  %349 = load double, ptr %12, align 8
  %350 = fmul double %349, 5.000000e-01
  %351 = call double @cos(double noundef %350) #4
  store double %351, ptr %28, align 8
  %352 = load double, ptr %10, align 8
  %353 = load double, ptr %11, align 8
  %354 = call double @sin(double noundef %353) #4
  %355 = load double, ptr %24, align 8
  %356 = call double @llvm.fmuladd.f64(double %352, double %354, double %355)
  %357 = load double, ptr %27, align 8
  %358 = fmul double %356, %357
  store double %358, ptr %29, align 8
  %359 = load double, ptr %10, align 8
  %360 = load double, ptr %11, align 8
  %361 = call double @cos(double noundef %360) #4
  %362 = load double, ptr %25, align 8
  %363 = call double @llvm.fmuladd.f64(double %359, double %361, double %362)
  %364 = load double, ptr %27, align 8
  %365 = fmul double %363, %364
  store double %365, ptr %30, align 8
  %366 = load double, ptr %23, align 8
  %367 = fmul double %366, 2.000000e+00
  %368 = load double, ptr %22, align 8
  %369 = fmul double %367, %368
  store double %369, ptr %31, align 8
  %370 = load double, ptr %20, align 8
  %371 = load double, ptr %25, align 8
  %372 = load double, ptr %26, align 8
  %373 = load double, ptr %23, align 8
  %374 = fneg double %372
  %375 = call double @llvm.fmuladd.f64(double %374, double %373, double %371)
  %376 = fmul double %370, %375
  store double %376, ptr %32, align 8
  %377 = load double, ptr %20, align 8
  %378 = load double, ptr %24, align 8
  %379 = load double, ptr %26, align 8
  %380 = load double, ptr %22, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %380, double %378)
  %382 = fmul double %377, %381
  store double %382, ptr %33, align 8
  %383 = load double, ptr %20, align 8
  %384 = fneg double %379
  %385 = load double, ptr %28, align 8
  %386 = fmul double %385, %384
  %387 = fmul double %383, %386
  store double %387, ptr %34, align 8
  %388 = load double, ptr %32, align 8
  %389 = load ptr, ptr %5, align 8
  store double %388, ptr %389, align 8
  %390 = load double, ptr %33, align 8
  %391 = fmul double %387, f0xBFD9752E50F4B399
  %392 = call double @llvm.fmuladd.f64(double %390, double f0x3FED5C0357681EF3, double %391)
  %393 = getelementptr inbounds nuw i8, ptr %389, i64 8
  store double %392, ptr %393, align 8
  %394 = load double, ptr %34, align 8
  %395 = fmul double %394, f0x3FED5C0357681EF3
  %396 = call double @llvm.fmuladd.f64(double %390, double f0x3FD9752E50F4B399, double %395)
  %397 = load ptr, ptr %5, align 8
  %398 = getelementptr inbounds nuw i8, ptr %397, i64 16
  store double %396, ptr %398, align 8
  %399 = load double, ptr %21, align 8
  %400 = load double, ptr %23, align 8
  %401 = fmul double %400, 2.000000e+00
  %402 = call double @llvm.fmuladd.f64(double %401, double %400, double -1.000000e+00)
  %403 = load double, ptr %29, align 8
  %404 = load double, ptr %31, align 8
  %405 = load double, ptr %30, align 8
  %406 = fmul double %404, %405
  %407 = call double @llvm.fmuladd.f64(double %402, double %403, double %406)
  %408 = fmul double %399, %407
  store double %408, ptr %32, align 8
  %409 = load double, ptr %21, align 8
  %410 = load double, ptr %22, align 8
  %411 = fmul double %410, -2.000000e+00
  %412 = call double @llvm.fmuladd.f64(double %411, double %410, double 1.000000e+00)
  %413 = load double, ptr %30, align 8
  %414 = load double, ptr %31, align 8
  %415 = load double, ptr %29, align 8
  %416 = fneg double %415
  %417 = fmul double %414, %416
  %418 = call double @llvm.fmuladd.f64(double %412, double %413, double %417)
  %419 = fmul double %409, %418
  store double %419, ptr %33, align 8
  %420 = load double, ptr %21, align 8
  %421 = load double, ptr %28, align 8
  %422 = fmul double %421, 2.000000e+00
  %423 = load double, ptr %23, align 8
  %424 = load double, ptr %29, align 8
  %425 = load double, ptr %22, align 8
  %426 = load double, ptr %30, align 8
  %427 = fmul double %425, %426
  %428 = call double @llvm.fmuladd.f64(double %423, double %424, double %427)
  %429 = fmul double %422, %428
  %430 = fmul double %420, %429
  store double %430, ptr %34, align 8
  %431 = load double, ptr %32, align 8
  %432 = load ptr, ptr %5, align 8
  %433 = getelementptr inbounds nuw i8, ptr %432, i64 24
  store double %431, ptr %433, align 8
  %434 = load double, ptr %33, align 8
  %435 = fmul double %430, f0xBFD9752E50F4B399
  %436 = call double @llvm.fmuladd.f64(double %434, double f0x3FED5C0357681EF3, double %435)
  %437 = getelementptr inbounds nuw i8, ptr %432, i64 32
  store double %436, ptr %437, align 8
  %438 = load double, ptr %34, align 8
  %439 = fmul double %438, f0x3FED5C0357681EF3
  %440 = call double @llvm.fmuladd.f64(double %434, double f0x3FD9752E50F4B399, double %439)
  %441 = load ptr, ptr %5, align 8
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 40
  store double %440, ptr %442, align 8
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
  %6 = alloca [2 x double], align 16
  %7 = alloca [2 x [3 x double]], align 16
  %8 = alloca [8 x [3 x double]], align 16
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %14

14:                                               ; preds = %22, %10
  %15 = phi i32 [ %23, %22 ], [ 1, %10 ]
  %16 = icmp slt i32 %15, %11
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %14
  %18 = load ptr, ptr %13, align 8
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %20, label %21

20:                                               ; preds = %17
  br label %24

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %15, 1
  br label %14, !llvm.loop !10

.loopexit:                                        ; preds = %14
  br label %24

24:                                               ; preds = %.loopexit, %20
  br label %25

25:                                               ; preds = %24, %2
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.promoted10 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %49, %25
  %.lcssa511 = phi i32 [ %32, %49 ], [ %.promoted10, %25 ]
  %28 = phi i32 [ %50, %49 ], [ 0, %25 ]
  %29 = icmp samesign ult i32 %28, 20
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  store double f0x4142B42C80000000, ptr %6, align 16
  store double 0.000000e+00, ptr %26, align 8
  br label %31

31:                                               ; preds = %46, %30
  %32 = phi i32 [ %47, %46 ], [ 0, %30 ]
  %33 = icmp samesign ult i32 %32, 36525
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load double, ptr %6, align 16
  %36 = fadd double %35, 1.000000e+00
  store double %36, ptr %6, align 16
  br label %37

37:                                               ; preds = %43, %34
  %38 = phi i32 [ %44, %43 ], [ 0, %34 ]
  %39 = icmp samesign ult i32 %38, 8
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  call void @planetpv(ptr noundef nonnull %6, i32 noundef %38, ptr noundef nonnull %7)
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %41
  call void @radecdist(ptr noundef nonnull %7, ptr noundef nonnull %42)
  br label %43

43:                                               ; preds = %40
  %44 = add nuw nsw i32 %38, 1
  br label %37, !llvm.loop !11

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %32, 1
  br label %31, !llvm.loop !12

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %28, 1
  br label %27, !llvm.loop !13

51:                                               ; preds = %27
  store i32 %.lcssa511, ptr %5, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = phi i32 [ %69, %68 ], [ 0, %51 ]
  %54 = icmp samesign ult i32 %53, 8
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = zext nneg i32 %53 to i64
  %60 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load double, ptr %61, align 8
  %63 = zext nneg i32 %53 to i64
  %64 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %66 = load double, ptr %65, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %58, double noundef %62, double noundef %66) #4
  br label %68

68:                                               ; preds = %55
  %69 = add nuw nsw i32 %53, 1
  br label %52, !llvm.loop !14

70:                                               ; preds = %52
  %71 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %72 = call i32 @fflush(ptr noundef %71) #4
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
