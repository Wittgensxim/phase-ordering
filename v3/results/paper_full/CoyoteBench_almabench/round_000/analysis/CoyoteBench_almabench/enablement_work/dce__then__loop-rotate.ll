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
  %4 = load double, ptr %2, align 8
  %5 = call double @fmod(double noundef %4, double noundef f0x401921FB54442D18) #4
  store double %5, ptr %3, align 8
  %6 = load double, ptr %3, align 8
  %7 = call double @llvm.fabs.f64(double %6)
  %8 = fcmp oge double %7, f0x400921FB54442D18
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load double, ptr %3, align 8
  %11 = load double, ptr %2, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  %13 = select i1 %12, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %14 = fsub double %10, %13
  store double %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %9, %1
  %16 = load double, ptr %3, align 8
  ret double %16
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @planetpv(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
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
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds double, ptr %40, i64 0
  %42 = load double, ptr %41, align 8
  %43 = fsub double %42, f0x4142B42C80000000
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds double, ptr %44, i64 1
  %46 = load double, ptr %45, align 8
  %47 = fadd double %43, %46
  %48 = fdiv double %47, 3.652500e+05
  store double %48, ptr %8, align 8
  %49 = load i32, ptr %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %50
  %52 = getelementptr inbounds [3 x double], ptr %51, i64 0, i64 0
  %53 = load double, ptr %52, align 8
  %54 = load i32, ptr %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %55
  %57 = getelementptr inbounds [3 x double], ptr %56, i64 0, i64 1
  %58 = load double, ptr %57, align 8
  %59 = load i32, ptr %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %60
  %62 = getelementptr inbounds [3 x double], ptr %61, i64 0, i64 2
  %63 = load double, ptr %62, align 8
  %64 = load double, ptr %8, align 8
  %65 = call double @llvm.fmuladd.f64(double %63, double %64, double %58)
  %66 = load double, ptr %8, align 8
  %67 = call double @llvm.fmuladd.f64(double %65, double %66, double %53)
  store double %67, ptr %9, align 8
  %68 = load i32, ptr %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %69
  %71 = getelementptr inbounds [3 x double], ptr %70, i64 0, i64 0
  %72 = load double, ptr %71, align 8
  %73 = load i32, ptr %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %74
  %76 = getelementptr inbounds [3 x double], ptr %75, i64 0, i64 1
  %77 = load double, ptr %76, align 8
  %78 = load i32, ptr %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %79
  %81 = getelementptr inbounds [3 x double], ptr %80, i64 0, i64 2
  %82 = load double, ptr %81, align 8
  %83 = load double, ptr %8, align 8
  %84 = call double @llvm.fmuladd.f64(double %82, double %83, double %77)
  %85 = load double, ptr %8, align 8
  %86 = fmul double %84, %85
  %87 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %72, double %86)
  %88 = fmul double %87, f0x3ED455A5B2FF8F9D
  store double %88, ptr %10, align 8
  %89 = load i32, ptr %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %90
  %92 = getelementptr inbounds [3 x double], ptr %91, i64 0, i64 0
  %93 = load double, ptr %92, align 8
  %94 = load i32, ptr %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %95
  %97 = getelementptr inbounds [3 x double], ptr %96, i64 0, i64 1
  %98 = load double, ptr %97, align 8
  %99 = load i32, ptr %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %100
  %102 = getelementptr inbounds [3 x double], ptr %101, i64 0, i64 2
  %103 = load double, ptr %102, align 8
  %104 = load double, ptr %8, align 8
  %105 = call double @llvm.fmuladd.f64(double %103, double %104, double %98)
  %106 = load double, ptr %8, align 8
  %107 = call double @llvm.fmuladd.f64(double %105, double %106, double %93)
  store double %107, ptr %11, align 8
  %108 = load i32, ptr %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %109
  %111 = getelementptr inbounds [3 x double], ptr %110, i64 0, i64 0
  %112 = load double, ptr %111, align 8
  %113 = load i32, ptr %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %114
  %116 = getelementptr inbounds [3 x double], ptr %115, i64 0, i64 1
  %117 = load double, ptr %116, align 8
  %118 = load i32, ptr %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %119
  %121 = getelementptr inbounds [3 x double], ptr %120, i64 0, i64 2
  %122 = load double, ptr %121, align 8
  %123 = load double, ptr %8, align 8
  %124 = call double @llvm.fmuladd.f64(double %122, double %123, double %117)
  %125 = load double, ptr %8, align 8
  %126 = fmul double %124, %125
  %127 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %112, double %126)
  %128 = fmul double %127, f0x3ED455A5B2FF8F9D
  %129 = call double @anpm(double noundef %128)
  store double %129, ptr %12, align 8
  %130 = load i32, ptr %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %131
  %133 = getelementptr inbounds [3 x double], ptr %132, i64 0, i64 0
  %134 = load double, ptr %133, align 8
  %135 = load i32, ptr %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %136
  %138 = getelementptr inbounds [3 x double], ptr %137, i64 0, i64 1
  %139 = load double, ptr %138, align 8
  %140 = load i32, ptr %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %141
  %143 = getelementptr inbounds [3 x double], ptr %142, i64 0, i64 2
  %144 = load double, ptr %143, align 8
  %145 = load double, ptr %8, align 8
  %146 = call double @llvm.fmuladd.f64(double %144, double %145, double %139)
  %147 = load double, ptr %8, align 8
  %148 = fmul double %146, %147
  %149 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %134, double %148)
  %150 = fmul double %149, f0x3ED455A5B2FF8F9D
  store double %150, ptr %13, align 8
  %151 = load i32, ptr %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %152
  %154 = getelementptr inbounds [3 x double], ptr %153, i64 0, i64 0
  %155 = load double, ptr %154, align 8
  %156 = load i32, ptr %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %157
  %159 = getelementptr inbounds [3 x double], ptr %158, i64 0, i64 1
  %160 = load double, ptr %159, align 8
  %161 = load i32, ptr %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %162
  %164 = getelementptr inbounds [3 x double], ptr %163, i64 0, i64 2
  %165 = load double, ptr %164, align 8
  %166 = load double, ptr %8, align 8
  %167 = call double @llvm.fmuladd.f64(double %165, double %166, double %160)
  %168 = load double, ptr %8, align 8
  %169 = fmul double %167, %168
  %170 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %155, double %169)
  %171 = fmul double %170, f0x3ED455A5B2FF8F9D
  %172 = call double @anpm(double noundef %171)
  store double %172, ptr %14, align 8
  %173 = load double, ptr %8, align 8
  %174 = fmul double f0x3FD702A41F2E9970, %173
  store double %174, ptr %15, align 8
  store i32 0, ptr %7, align 4
  %175 = load i32, ptr %7, align 4
  %176 = icmp slt i32 %175, 8
  br i1 %176, label %.lr.ph, label %245

.lr.ph:                                           ; preds = %3
  br label %177

177:                                              ; preds = %.lr.ph, %240
  %178 = load i32, ptr %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %179
  %181 = load i32, ptr %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [9 x double], ptr %180, i64 0, i64 %182
  %184 = load double, ptr %183, align 8
  %185 = load double, ptr %15, align 8
  %186 = fmul double %184, %185
  store double %186, ptr %16, align 8
  %187 = load i32, ptr %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %188
  %190 = load i32, ptr %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [10 x double], ptr %189, i64 0, i64 %191
  %193 = load double, ptr %192, align 8
  %194 = load double, ptr %15, align 8
  %195 = fmul double %193, %194
  store double %195, ptr %17, align 8
  %196 = load double, ptr %9, align 8
  %197 = load i32, ptr %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %198
  %200 = load i32, ptr %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [9 x double], ptr %199, i64 0, i64 %201
  %203 = load double, ptr %202, align 8
  %204 = load double, ptr %16, align 8
  %205 = call double @cos(double noundef %204) #4
  %206 = load i32, ptr %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %207
  %209 = load i32, ptr %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [9 x double], ptr %208, i64 0, i64 %210
  %212 = load double, ptr %211, align 8
  %213 = load double, ptr %16, align 8
  %214 = call double @sin(double noundef %213) #4
  %215 = fmul double %212, %214
  %216 = call double @llvm.fmuladd.f64(double %203, double %205, double %215)
  %217 = call double @llvm.fmuladd.f64(double %216, double f0x3E7AD7F29ABCAF48, double %196)
  store double %217, ptr %9, align 8
  %218 = load double, ptr %10, align 8
  %219 = load i32, ptr %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %220
  %222 = load i32, ptr %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [10 x double], ptr %221, i64 0, i64 %223
  %225 = load double, ptr %224, align 8
  %226 = load double, ptr %17, align 8
  %227 = call double @cos(double noundef %226) #4
  %228 = load i32, ptr %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %229
  %231 = load i32, ptr %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [10 x double], ptr %230, i64 0, i64 %232
  %234 = load double, ptr %233, align 8
  %235 = load double, ptr %17, align 8
  %236 = call double @sin(double noundef %235) #4
  %237 = fmul double %234, %236
  %238 = call double @llvm.fmuladd.f64(double %225, double %227, double %237)
  %239 = call double @llvm.fmuladd.f64(double %238, double f0x3E7AD7F29ABCAF48, double %218)
  store double %239, ptr %10, align 8
  br label %240

240:                                              ; preds = %177
  %241 = load i32, ptr %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, ptr %7, align 4
  %243 = load i32, ptr %7, align 4
  %244 = icmp slt i32 %243, 8
  br i1 %244, label %177, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %240
  br label %245

245:                                              ; preds = %._crit_edge, %3
  %246 = load i32, ptr %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %247
  %249 = getelementptr inbounds [9 x double], ptr %248, i64 0, i64 8
  %250 = load double, ptr %249, align 8
  %251 = load double, ptr %15, align 8
  %252 = fmul double %250, %251
  store double %252, ptr %16, align 8
  %253 = load double, ptr %9, align 8
  %254 = load double, ptr %8, align 8
  %255 = load i32, ptr %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %256
  %258 = getelementptr inbounds [9 x double], ptr %257, i64 0, i64 8
  %259 = load double, ptr %258, align 8
  %260 = load double, ptr %16, align 8
  %261 = call double @cos(double noundef %260) #4
  %262 = load i32, ptr %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %263
  %265 = getelementptr inbounds [9 x double], ptr %264, i64 0, i64 8
  %266 = load double, ptr %265, align 8
  %267 = load double, ptr %16, align 8
  %268 = call double @sin(double noundef %267) #4
  %269 = fmul double %266, %268
  %270 = call double @llvm.fmuladd.f64(double %259, double %261, double %269)
  %271 = fmul double %254, %270
  %272 = call double @llvm.fmuladd.f64(double %271, double f0x3E7AD7F29ABCAF48, double %253)
  store double %272, ptr %9, align 8
  store i32 8, ptr %7, align 4
  %273 = load i32, ptr %7, align 4
  %274 = icmp sle i32 %273, 9
  br i1 %274, label %.lr.ph2, label %314

.lr.ph2:                                          ; preds = %245
  br label %275

275:                                              ; preds = %.lr.ph2, %309
  %276 = load i32, ptr %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %277
  %279 = load i32, ptr %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [10 x double], ptr %278, i64 0, i64 %280
  %282 = load double, ptr %281, align 8
  %283 = load double, ptr %15, align 8
  %284 = fmul double %282, %283
  store double %284, ptr %17, align 8
  %285 = load double, ptr %10, align 8
  %286 = load double, ptr %8, align 8
  %287 = load i32, ptr %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %288
  %290 = load i32, ptr %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [10 x double], ptr %289, i64 0, i64 %291
  %293 = load double, ptr %292, align 8
  %294 = load double, ptr %17, align 8
  %295 = call double @cos(double noundef %294) #4
  %296 = load i32, ptr %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %297
  %299 = load i32, ptr %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [10 x double], ptr %298, i64 0, i64 %300
  %302 = load double, ptr %301, align 8
  %303 = load double, ptr %17, align 8
  %304 = call double @sin(double noundef %303) #4
  %305 = fmul double %302, %304
  %306 = call double @llvm.fmuladd.f64(double %293, double %295, double %305)
  %307 = fmul double %286, %306
  %308 = call double @llvm.fmuladd.f64(double %307, double f0x3E7AD7F29ABCAF48, double %285)
  store double %308, ptr %10, align 8
  br label %309

309:                                              ; preds = %275
  %310 = load i32, ptr %7, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, ptr %7, align 4
  %312 = load i32, ptr %7, align 4
  %313 = icmp sle i32 %312, 9
  br i1 %313, label %275, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %309
  br label %314

314:                                              ; preds = %._crit_edge3, %245
  %315 = load double, ptr %10, align 8
  %316 = call double @fmod(double noundef %315, double noundef f0x401921FB54442D18) #4
  store double %316, ptr %10, align 8
  %317 = load double, ptr %10, align 8
  %318 = load double, ptr %12, align 8
  %319 = fsub double %317, %318
  store double %319, ptr %18, align 8
  %320 = load double, ptr %18, align 8
  %321 = load double, ptr %11, align 8
  %322 = load double, ptr %18, align 8
  %323 = call double @sin(double noundef %322) #4
  %324 = call double @llvm.fmuladd.f64(double %321, double %323, double %320)
  store double %324, ptr %19, align 8
  store i32 0, ptr %7, align 4
  br label %325

325:                                              ; preds = %346, %314
  %326 = load double, ptr %18, align 8
  %327 = load double, ptr %19, align 8
  %328 = fsub double %326, %327
  %329 = load double, ptr %11, align 8
  %330 = load double, ptr %19, align 8
  %331 = call double @sin(double noundef %330) #4
  %332 = call double @llvm.fmuladd.f64(double %329, double %331, double %328)
  %333 = load double, ptr %11, align 8
  %334 = load double, ptr %19, align 8
  %335 = call double @cos(double noundef %334) #4
  %336 = fneg double %333
  %337 = call double @llvm.fmuladd.f64(double %336, double %335, double 1.000000e+00)
  %338 = fdiv double %332, %337
  store double %338, ptr %20, align 8
  %339 = load double, ptr %19, align 8
  %340 = load double, ptr %20, align 8
  %341 = fadd double %339, %340
  store double %341, ptr %19, align 8
  %342 = load i32, ptr %7, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, ptr %7, align 4
  %344 = load i32, ptr %7, align 4
  %345 = icmp sge i32 %344, 10
  br i1 %345, label %350, label %346

346:                                              ; preds = %325
  %347 = load double, ptr %20, align 8
  %348 = call double @llvm.fabs.f64(double %347)
  %349 = fcmp olt double %348, f0x3D719799812DEA11
  br i1 %349, label %350, label %325

350:                                              ; preds = %346, %325
  br label %351

351:                                              ; preds = %350
  %352 = load double, ptr %19, align 8
  %353 = fdiv double %352, 2.000000e+00
  store double %353, ptr %21, align 8
  %354 = load double, ptr %11, align 8
  %355 = fadd double 1.000000e+00, %354
  %356 = load double, ptr %11, align 8
  %357 = fsub double 1.000000e+00, %356
  %358 = fdiv double %355, %357
  %359 = call double @sqrt(double noundef %358) #4
  %360 = load double, ptr %21, align 8
  %361 = call double @sin(double noundef %360) #4
  %362 = fmul double %359, %361
  %363 = load double, ptr %21, align 8
  %364 = call double @cos(double noundef %363) #4
  %365 = call double @atan2(double noundef %362, double noundef %364) #4
  %366 = fmul double 2.000000e+00, %365
  store double %366, ptr %22, align 8
  %367 = load double, ptr %9, align 8
  %368 = load double, ptr %11, align 8
  %369 = load double, ptr %19, align 8
  %370 = call double @cos(double noundef %369) #4
  %371 = fneg double %368
  %372 = call double @llvm.fmuladd.f64(double %371, double %370, double 1.000000e+00)
  %373 = fmul double %367, %372
  store double %373, ptr %23, align 8
  %374 = load i32, ptr %5, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %375
  %377 = load double, ptr %376, align 8
  %378 = fdiv double 1.000000e+00, %377
  %379 = fadd double 1.000000e+00, %378
  %380 = load double, ptr %9, align 8
  %381 = load double, ptr %9, align 8
  %382 = fmul double %380, %381
  %383 = load double, ptr %9, align 8
  %384 = fmul double %382, %383
  %385 = fdiv double %379, %384
  %386 = call double @sqrt(double noundef %385) #4
  %387 = fmul double f0x3F919D6D51A6B69A, %386
  store double %387, ptr %24, align 8
  %388 = load double, ptr %13, align 8
  %389 = fdiv double %388, 2.000000e+00
  %390 = call double @sin(double noundef %389) #4
  store double %390, ptr %25, align 8
  %391 = load double, ptr %25, align 8
  %392 = load double, ptr %14, align 8
  %393 = call double @cos(double noundef %392) #4
  %394 = fmul double %391, %393
  store double %394, ptr %26, align 8
  %395 = load double, ptr %25, align 8
  %396 = load double, ptr %14, align 8
  %397 = call double @sin(double noundef %396) #4
  %398 = fmul double %395, %397
  store double %398, ptr %27, align 8
  %399 = load double, ptr %22, align 8
  %400 = load double, ptr %12, align 8
  %401 = fadd double %399, %400
  store double %401, ptr %28, align 8
  %402 = load double, ptr %28, align 8
  %403 = call double @sin(double noundef %402) #4
  store double %403, ptr %29, align 8
  %404 = load double, ptr %28, align 8
  %405 = call double @cos(double noundef %404) #4
  store double %405, ptr %30, align 8
  %406 = load double, ptr %27, align 8
  %407 = load double, ptr %30, align 8
  %408 = load double, ptr %26, align 8
  %409 = load double, ptr %29, align 8
  %410 = fmul double %408, %409
  %411 = fneg double %410
  %412 = call double @llvm.fmuladd.f64(double %406, double %407, double %411)
  %413 = fmul double 2.000000e+00, %412
  store double %413, ptr %31, align 8
  %414 = load double, ptr %9, align 8
  %415 = load double, ptr %11, align 8
  %416 = load double, ptr %11, align 8
  %417 = fneg double %415
  %418 = call double @llvm.fmuladd.f64(double %417, double %416, double 1.000000e+00)
  %419 = call double @sqrt(double noundef %418) #4
  %420 = fdiv double %414, %419
  store double %420, ptr %32, align 8
  %421 = load double, ptr %13, align 8
  %422 = fdiv double %421, 2.000000e+00
  %423 = call double @cos(double noundef %422) #4
  store double %423, ptr %33, align 8
  %424 = load double, ptr %11, align 8
  %425 = load double, ptr %12, align 8
  %426 = call double @sin(double noundef %425) #4
  %427 = load double, ptr %29, align 8
  %428 = call double @llvm.fmuladd.f64(double %424, double %426, double %427)
  %429 = load double, ptr %32, align 8
  %430 = fmul double %428, %429
  store double %430, ptr %34, align 8
  %431 = load double, ptr %11, align 8
  %432 = load double, ptr %12, align 8
  %433 = call double @cos(double noundef %432) #4
  %434 = load double, ptr %30, align 8
  %435 = call double @llvm.fmuladd.f64(double %431, double %433, double %434)
  %436 = load double, ptr %32, align 8
  %437 = fmul double %435, %436
  store double %437, ptr %35, align 8
  %438 = load double, ptr %27, align 8
  %439 = fmul double 2.000000e+00, %438
  %440 = load double, ptr %26, align 8
  %441 = fmul double %439, %440
  store double %441, ptr %36, align 8
  %442 = load double, ptr %23, align 8
  %443 = load double, ptr %30, align 8
  %444 = load double, ptr %31, align 8
  %445 = load double, ptr %27, align 8
  %446 = fneg double %444
  %447 = call double @llvm.fmuladd.f64(double %446, double %445, double %443)
  %448 = fmul double %442, %447
  store double %448, ptr %37, align 8
  %449 = load double, ptr %23, align 8
  %450 = load double, ptr %29, align 8
  %451 = load double, ptr %31, align 8
  %452 = load double, ptr %26, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %452, double %450)
  %454 = fmul double %449, %453
  store double %454, ptr %38, align 8
  %455 = load double, ptr %23, align 8
  %456 = load double, ptr %31, align 8
  %457 = fneg double %456
  %458 = load double, ptr %33, align 8
  %459 = fmul double %457, %458
  %460 = fmul double %455, %459
  store double %460, ptr %39, align 8
  %461 = load double, ptr %37, align 8
  %462 = load ptr, ptr %6, align 8
  %463 = getelementptr inbounds [3 x double], ptr %462, i64 0
  %464 = getelementptr inbounds [3 x double], ptr %463, i64 0, i64 0
  store double %461, ptr %464, align 8
  %465 = load double, ptr %38, align 8
  %466 = load double, ptr %39, align 8
  %467 = fmul double %466, f0x3FD9752E50F4B399
  %468 = fneg double %467
  %469 = call double @llvm.fmuladd.f64(double %465, double f0x3FED5C0357681EF3, double %468)
  %470 = load ptr, ptr %6, align 8
  %471 = getelementptr inbounds [3 x double], ptr %470, i64 0
  %472 = getelementptr inbounds [3 x double], ptr %471, i64 0, i64 1
  store double %469, ptr %472, align 8
  %473 = load double, ptr %38, align 8
  %474 = load double, ptr %39, align 8
  %475 = fmul double %474, f0x3FED5C0357681EF3
  %476 = call double @llvm.fmuladd.f64(double %473, double f0x3FD9752E50F4B399, double %475)
  %477 = load ptr, ptr %6, align 8
  %478 = getelementptr inbounds [3 x double], ptr %477, i64 0
  %479 = getelementptr inbounds [3 x double], ptr %478, i64 0, i64 2
  store double %476, ptr %479, align 8
  %480 = load double, ptr %24, align 8
  %481 = load double, ptr %27, align 8
  %482 = fmul double 2.000000e+00, %481
  %483 = load double, ptr %27, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %483, double -1.000000e+00)
  %485 = load double, ptr %34, align 8
  %486 = load double, ptr %36, align 8
  %487 = load double, ptr %35, align 8
  %488 = fmul double %486, %487
  %489 = call double @llvm.fmuladd.f64(double %484, double %485, double %488)
  %490 = fmul double %480, %489
  store double %490, ptr %37, align 8
  %491 = load double, ptr %24, align 8
  %492 = load double, ptr %26, align 8
  %493 = fmul double 2.000000e+00, %492
  %494 = load double, ptr %26, align 8
  %495 = fneg double %493
  %496 = call double @llvm.fmuladd.f64(double %495, double %494, double 1.000000e+00)
  %497 = load double, ptr %35, align 8
  %498 = load double, ptr %36, align 8
  %499 = load double, ptr %34, align 8
  %500 = fmul double %498, %499
  %501 = fneg double %500
  %502 = call double @llvm.fmuladd.f64(double %496, double %497, double %501)
  %503 = fmul double %491, %502
  store double %503, ptr %38, align 8
  %504 = load double, ptr %24, align 8
  %505 = load double, ptr %33, align 8
  %506 = fmul double 2.000000e+00, %505
  %507 = load double, ptr %27, align 8
  %508 = load double, ptr %34, align 8
  %509 = load double, ptr %26, align 8
  %510 = load double, ptr %35, align 8
  %511 = fmul double %509, %510
  %512 = call double @llvm.fmuladd.f64(double %507, double %508, double %511)
  %513 = fmul double %506, %512
  %514 = fmul double %504, %513
  store double %514, ptr %39, align 8
  %515 = load double, ptr %37, align 8
  %516 = load ptr, ptr %6, align 8
  %517 = getelementptr inbounds [3 x double], ptr %516, i64 1
  %518 = getelementptr inbounds [3 x double], ptr %517, i64 0, i64 0
  store double %515, ptr %518, align 8
  %519 = load double, ptr %38, align 8
  %520 = load double, ptr %39, align 8
  %521 = fmul double %520, f0x3FD9752E50F4B399
  %522 = fneg double %521
  %523 = call double @llvm.fmuladd.f64(double %519, double f0x3FED5C0357681EF3, double %522)
  %524 = load ptr, ptr %6, align 8
  %525 = getelementptr inbounds [3 x double], ptr %524, i64 1
  %526 = getelementptr inbounds [3 x double], ptr %525, i64 0, i64 1
  store double %523, ptr %526, align 8
  %527 = load double, ptr %38, align 8
  %528 = load double, ptr %39, align 8
  %529 = fmul double %528, f0x3FED5C0357681EF3
  %530 = call double @llvm.fmuladd.f64(double %527, double f0x3FD9752E50F4B399, double %529)
  %531 = load ptr, ptr %6, align 8
  %532 = getelementptr inbounds [3 x double], ptr %531, i64 1
  %533 = getelementptr inbounds [3 x double], ptr %532, i64 0, i64 2
  store double %530, ptr %533, align 8
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
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds [3 x double], ptr %5, i64 0
  %7 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 0
  %8 = load double, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds [3 x double], ptr %9, i64 0
  %11 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 0
  %12 = load double, ptr %11, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds [3 x double], ptr %13, i64 0
  %15 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %16 = load double, ptr %15, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds [3 x double], ptr %17, i64 0
  %19 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 1
  %20 = load double, ptr %19, align 8
  %21 = fmul double %16, %20
  %22 = call double @llvm.fmuladd.f64(double %8, double %12, double %21)
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds [3 x double], ptr %23, i64 0
  %25 = getelementptr inbounds [3 x double], ptr %24, i64 0, i64 2
  %26 = load double, ptr %25, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds [3 x double], ptr %27, i64 0
  %29 = getelementptr inbounds [3 x double], ptr %28, i64 0, i64 2
  %30 = load double, ptr %29, align 8
  %31 = call double @llvm.fmuladd.f64(double %26, double %30, double %22)
  %32 = call double @sqrt(double noundef %31) #4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds double, ptr %33, i64 2
  store double %32, ptr %34, align 8
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds [3 x double], ptr %35, i64 0
  %37 = getelementptr inbounds [3 x double], ptr %36, i64 0, i64 1
  %38 = load double, ptr %37, align 8
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds [3 x double], ptr %39, i64 0
  %41 = getelementptr inbounds [3 x double], ptr %40, i64 0, i64 0
  %42 = load double, ptr %41, align 8
  %43 = call double @atan2(double noundef %38, double noundef %42) #4
  %44 = fmul double %43, f0x400E8EC8A4AEACC4
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 0
  store double %44, ptr %46, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds double, ptr %47, i64 0
  %49 = load double, ptr %48, align 8
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %2
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds double, ptr %52, i64 0
  %54 = load double, ptr %53, align 8
  %55 = fadd double %54, 2.400000e+01
  store double %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %51, %2
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds [3 x double], ptr %57, i64 0
  %59 = getelementptr inbounds [3 x double], ptr %58, i64 0, i64 2
  %60 = load double, ptr %59, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds double, ptr %61, i64 2
  %63 = load double, ptr %62, align 8
  %64 = fdiv double %60, %63
  %65 = call double @asin(double noundef %64) #4
  %66 = fmul double %65, f0x404CA5DC1A63C1F8
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds double, ptr %67, i64 1
  store double %66, ptr %68, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x double], align 16
  %10 = alloca [2 x [3 x double]], align 16
  %11 = alloca [8 x [3 x double]], align 16
  %12 = alloca i8, align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %12, align 1
  %13 = load i32, ptr %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %15
  br label %19

19:                                               ; preds = %.lr.ph, %27
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str) #4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i8 1, ptr %12, align 1
  br label %33

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %19, label %..loopexit_crit_edge, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %27
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %15
  br label %33

33:                                               ; preds = %.loopexit, %25
  br label %34

34:                                               ; preds = %33, %2
  store i32 0, ptr %6, align 4
  %35 = load i32, ptr %6, align 4
  %36 = icmp slt i32 %35, 20
  br i1 %36, label %.lr.ph6, label %74

.lr.ph6:                                          ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph6, %69
  %38 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  store double f0x4142B42C80000000, ptr %38, align 16
  %39 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  store double 0.000000e+00, ptr %39, align 8
  store i32 0, ptr %7, align 4
  %40 = load i32, ptr %7, align 4
  %41 = icmp slt i32 %40, 36525
  br i1 %41, label %.lr.ph3, label %68

.lr.ph3:                                          ; preds = %37
  br label %42

42:                                               ; preds = %.lr.ph3, %63
  %43 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %44 = load double, ptr %43, align 16
  %45 = fadd double %44, 1.000000e+00
  store double %45, ptr %43, align 16
  store i32 0, ptr %8, align 4
  %46 = load i32, ptr %8, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %.lr.ph1, label %62

.lr.ph1:                                          ; preds = %42
  br label %48

48:                                               ; preds = %.lr.ph1, %57
  %49 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %50 = load i32, ptr %8, align 4
  %51 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  call void @planetpv(ptr noundef %49, i32 noundef %50, ptr noundef %51)
  %52 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %53 = load i32, ptr %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %54
  %56 = getelementptr inbounds [3 x double], ptr %55, i64 0, i64 0
  call void @radecdist(ptr noundef %52, ptr noundef %56)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, ptr %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %8, align 4
  %60 = load i32, ptr %8, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %48, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %57
  br label %62

62:                                               ; preds = %._crit_edge, %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %7, align 4
  %66 = load i32, ptr %7, align 4
  %67 = icmp slt i32 %66, 36525
  br i1 %67, label %42, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %63
  br label %68

68:                                               ; preds = %._crit_edge4, %37
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %6, align 4
  %72 = load i32, ptr %6, align 4
  %73 = icmp slt i32 %72, 20
  br i1 %73, label %37, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %69
  br label %74

74:                                               ; preds = %._crit_edge7, %34
  store i32 0, ptr %8, align 4
  %75 = load i32, ptr %8, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %.lr.ph9, label %99

.lr.ph9:                                          ; preds = %74
  br label %77

77:                                               ; preds = %.lr.ph9, %94
  %78 = load i32, ptr %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %79
  %81 = getelementptr inbounds [3 x double], ptr %80, i64 0, i64 0
  %82 = load double, ptr %81, align 8
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %84
  %86 = getelementptr inbounds [3 x double], ptr %85, i64 0, i64 1
  %87 = load double, ptr %86, align 8
  %88 = load i32, ptr %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %89
  %91 = getelementptr inbounds [3 x double], ptr %90, i64 0, i64 2
  %92 = load double, ptr %91, align 8
  %93 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %82, double noundef %87, double noundef %92)
  br label %94

94:                                               ; preds = %77
  %95 = load i32, ptr %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %8, align 4
  %97 = load i32, ptr %8, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %77, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %94
  br label %99

99:                                               ; preds = %._crit_edge10, %74
  %100 = call ptr @__acrt_iob_func(i32 noundef 1)
  %101 = call i32 @fflush(ptr noundef %100)
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
