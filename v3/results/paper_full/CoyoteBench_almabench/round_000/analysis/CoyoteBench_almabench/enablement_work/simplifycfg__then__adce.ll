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
  br label %175

175:                                              ; preds = %178, %3
  %176 = load i32, ptr %7, align 4
  %177 = icmp slt i32 %176, 8
  br i1 %177, label %178, label %243

178:                                              ; preds = %175
  %179 = load i32, ptr %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %180
  %182 = load i32, ptr %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [9 x double], ptr %181, i64 0, i64 %183
  %185 = load double, ptr %184, align 8
  %186 = load double, ptr %15, align 8
  %187 = fmul double %185, %186
  store double %187, ptr %16, align 8
  %188 = load i32, ptr %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %189
  %191 = load i32, ptr %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [10 x double], ptr %190, i64 0, i64 %192
  %194 = load double, ptr %193, align 8
  %195 = load double, ptr %15, align 8
  %196 = fmul double %194, %195
  store double %196, ptr %17, align 8
  %197 = load double, ptr %9, align 8
  %198 = load i32, ptr %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %199
  %201 = load i32, ptr %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [9 x double], ptr %200, i64 0, i64 %202
  %204 = load double, ptr %203, align 8
  %205 = load double, ptr %16, align 8
  %206 = call double @cos(double noundef %205) #4
  %207 = load i32, ptr %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %208
  %210 = load i32, ptr %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [9 x double], ptr %209, i64 0, i64 %211
  %213 = load double, ptr %212, align 8
  %214 = load double, ptr %16, align 8
  %215 = call double @sin(double noundef %214) #4
  %216 = fmul double %213, %215
  %217 = call double @llvm.fmuladd.f64(double %204, double %206, double %216)
  %218 = call double @llvm.fmuladd.f64(double %217, double f0x3E7AD7F29ABCAF48, double %197)
  store double %218, ptr %9, align 8
  %219 = load double, ptr %10, align 8
  %220 = load i32, ptr %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %221
  %223 = load i32, ptr %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [10 x double], ptr %222, i64 0, i64 %224
  %226 = load double, ptr %225, align 8
  %227 = load double, ptr %17, align 8
  %228 = call double @cos(double noundef %227) #4
  %229 = load i32, ptr %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %230
  %232 = load i32, ptr %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [10 x double], ptr %231, i64 0, i64 %233
  %235 = load double, ptr %234, align 8
  %236 = load double, ptr %17, align 8
  %237 = call double @sin(double noundef %236) #4
  %238 = fmul double %235, %237
  %239 = call double @llvm.fmuladd.f64(double %226, double %228, double %238)
  %240 = call double @llvm.fmuladd.f64(double %239, double f0x3E7AD7F29ABCAF48, double %219)
  store double %240, ptr %10, align 8
  %241 = load i32, ptr %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, ptr %7, align 4
  br label %175, !llvm.loop !7

243:                                              ; preds = %175
  %244 = load i32, ptr %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %245
  %247 = getelementptr inbounds [9 x double], ptr %246, i64 0, i64 8
  %248 = load double, ptr %247, align 8
  %249 = load double, ptr %15, align 8
  %250 = fmul double %248, %249
  store double %250, ptr %16, align 8
  %251 = load double, ptr %9, align 8
  %252 = load double, ptr %8, align 8
  %253 = load i32, ptr %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %254
  %256 = getelementptr inbounds [9 x double], ptr %255, i64 0, i64 8
  %257 = load double, ptr %256, align 8
  %258 = load double, ptr %16, align 8
  %259 = call double @cos(double noundef %258) #4
  %260 = load i32, ptr %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %261
  %263 = getelementptr inbounds [9 x double], ptr %262, i64 0, i64 8
  %264 = load double, ptr %263, align 8
  %265 = load double, ptr %16, align 8
  %266 = call double @sin(double noundef %265) #4
  %267 = fmul double %264, %266
  %268 = call double @llvm.fmuladd.f64(double %257, double %259, double %267)
  %269 = fmul double %252, %268
  %270 = call double @llvm.fmuladd.f64(double %269, double f0x3E7AD7F29ABCAF48, double %251)
  store double %270, ptr %9, align 8
  store i32 8, ptr %7, align 4
  br label %271

271:                                              ; preds = %274, %243
  %272 = load i32, ptr %7, align 4
  %273 = icmp sle i32 %272, 9
  br i1 %273, label %274, label %310

274:                                              ; preds = %271
  %275 = load i32, ptr %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %276
  %278 = load i32, ptr %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [10 x double], ptr %277, i64 0, i64 %279
  %281 = load double, ptr %280, align 8
  %282 = load double, ptr %15, align 8
  %283 = fmul double %281, %282
  store double %283, ptr %17, align 8
  %284 = load double, ptr %10, align 8
  %285 = load double, ptr %8, align 8
  %286 = load i32, ptr %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %287
  %289 = load i32, ptr %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [10 x double], ptr %288, i64 0, i64 %290
  %292 = load double, ptr %291, align 8
  %293 = load double, ptr %17, align 8
  %294 = call double @cos(double noundef %293) #4
  %295 = load i32, ptr %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %296
  %298 = load i32, ptr %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [10 x double], ptr %297, i64 0, i64 %299
  %301 = load double, ptr %300, align 8
  %302 = load double, ptr %17, align 8
  %303 = call double @sin(double noundef %302) #4
  %304 = fmul double %301, %303
  %305 = call double @llvm.fmuladd.f64(double %292, double %294, double %304)
  %306 = fmul double %285, %305
  %307 = call double @llvm.fmuladd.f64(double %306, double f0x3E7AD7F29ABCAF48, double %284)
  store double %307, ptr %10, align 8
  %308 = load i32, ptr %7, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, ptr %7, align 4
  br label %271, !llvm.loop !9

310:                                              ; preds = %271
  %311 = load double, ptr %10, align 8
  %312 = call double @fmod(double noundef %311, double noundef f0x401921FB54442D18) #4
  store double %312, ptr %10, align 8
  %313 = load double, ptr %10, align 8
  %314 = load double, ptr %12, align 8
  %315 = fsub double %313, %314
  store double %315, ptr %18, align 8
  %316 = load double, ptr %18, align 8
  %317 = load double, ptr %11, align 8
  %318 = load double, ptr %18, align 8
  %319 = call double @sin(double noundef %318) #4
  %320 = call double @llvm.fmuladd.f64(double %317, double %319, double %316)
  store double %320, ptr %19, align 8
  store i32 0, ptr %7, align 4
  br label %321

321:                                              ; preds = %342, %310
  %322 = load double, ptr %18, align 8
  %323 = load double, ptr %19, align 8
  %324 = fsub double %322, %323
  %325 = load double, ptr %11, align 8
  %326 = load double, ptr %19, align 8
  %327 = call double @sin(double noundef %326) #4
  %328 = call double @llvm.fmuladd.f64(double %325, double %327, double %324)
  %329 = load double, ptr %11, align 8
  %330 = load double, ptr %19, align 8
  %331 = call double @cos(double noundef %330) #4
  %332 = fneg double %329
  %333 = call double @llvm.fmuladd.f64(double %332, double %331, double 1.000000e+00)
  %334 = fdiv double %328, %333
  store double %334, ptr %20, align 8
  %335 = load double, ptr %19, align 8
  %336 = load double, ptr %20, align 8
  %337 = fadd double %335, %336
  store double %337, ptr %19, align 8
  %338 = load i32, ptr %7, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, ptr %7, align 4
  %340 = load i32, ptr %7, align 4
  %341 = icmp sge i32 %340, 10
  br i1 %341, label %346, label %342

342:                                              ; preds = %321
  %343 = load double, ptr %20, align 8
  %344 = call double @llvm.fabs.f64(double %343)
  %345 = fcmp olt double %344, f0x3D719799812DEA11
  br i1 %345, label %346, label %321

346:                                              ; preds = %321, %342
  %347 = load double, ptr %19, align 8
  %348 = fdiv double %347, 2.000000e+00
  store double %348, ptr %21, align 8
  %349 = load double, ptr %11, align 8
  %350 = fadd double 1.000000e+00, %349
  %351 = load double, ptr %11, align 8
  %352 = fsub double 1.000000e+00, %351
  %353 = fdiv double %350, %352
  %354 = call double @sqrt(double noundef %353) #4
  %355 = load double, ptr %21, align 8
  %356 = call double @sin(double noundef %355) #4
  %357 = fmul double %354, %356
  %358 = load double, ptr %21, align 8
  %359 = call double @cos(double noundef %358) #4
  %360 = call double @atan2(double noundef %357, double noundef %359) #4
  %361 = fmul double 2.000000e+00, %360
  store double %361, ptr %22, align 8
  %362 = load double, ptr %9, align 8
  %363 = load double, ptr %11, align 8
  %364 = load double, ptr %19, align 8
  %365 = call double @cos(double noundef %364) #4
  %366 = fneg double %363
  %367 = call double @llvm.fmuladd.f64(double %366, double %365, double 1.000000e+00)
  %368 = fmul double %362, %367
  store double %368, ptr %23, align 8
  %369 = load i32, ptr %5, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %370
  %372 = load double, ptr %371, align 8
  %373 = fdiv double 1.000000e+00, %372
  %374 = fadd double 1.000000e+00, %373
  %375 = load double, ptr %9, align 8
  %376 = load double, ptr %9, align 8
  %377 = fmul double %375, %376
  %378 = load double, ptr %9, align 8
  %379 = fmul double %377, %378
  %380 = fdiv double %374, %379
  %381 = call double @sqrt(double noundef %380) #4
  %382 = fmul double f0x3F919D6D51A6B69A, %381
  store double %382, ptr %24, align 8
  %383 = load double, ptr %13, align 8
  %384 = fdiv double %383, 2.000000e+00
  %385 = call double @sin(double noundef %384) #4
  store double %385, ptr %25, align 8
  %386 = load double, ptr %25, align 8
  %387 = load double, ptr %14, align 8
  %388 = call double @cos(double noundef %387) #4
  %389 = fmul double %386, %388
  store double %389, ptr %26, align 8
  %390 = load double, ptr %25, align 8
  %391 = load double, ptr %14, align 8
  %392 = call double @sin(double noundef %391) #4
  %393 = fmul double %390, %392
  store double %393, ptr %27, align 8
  %394 = load double, ptr %22, align 8
  %395 = load double, ptr %12, align 8
  %396 = fadd double %394, %395
  store double %396, ptr %28, align 8
  %397 = load double, ptr %28, align 8
  %398 = call double @sin(double noundef %397) #4
  store double %398, ptr %29, align 8
  %399 = load double, ptr %28, align 8
  %400 = call double @cos(double noundef %399) #4
  store double %400, ptr %30, align 8
  %401 = load double, ptr %27, align 8
  %402 = load double, ptr %30, align 8
  %403 = load double, ptr %26, align 8
  %404 = load double, ptr %29, align 8
  %405 = fmul double %403, %404
  %406 = fneg double %405
  %407 = call double @llvm.fmuladd.f64(double %401, double %402, double %406)
  %408 = fmul double 2.000000e+00, %407
  store double %408, ptr %31, align 8
  %409 = load double, ptr %9, align 8
  %410 = load double, ptr %11, align 8
  %411 = load double, ptr %11, align 8
  %412 = fneg double %410
  %413 = call double @llvm.fmuladd.f64(double %412, double %411, double 1.000000e+00)
  %414 = call double @sqrt(double noundef %413) #4
  %415 = fdiv double %409, %414
  store double %415, ptr %32, align 8
  %416 = load double, ptr %13, align 8
  %417 = fdiv double %416, 2.000000e+00
  %418 = call double @cos(double noundef %417) #4
  store double %418, ptr %33, align 8
  %419 = load double, ptr %11, align 8
  %420 = load double, ptr %12, align 8
  %421 = call double @sin(double noundef %420) #4
  %422 = load double, ptr %29, align 8
  %423 = call double @llvm.fmuladd.f64(double %419, double %421, double %422)
  %424 = load double, ptr %32, align 8
  %425 = fmul double %423, %424
  store double %425, ptr %34, align 8
  %426 = load double, ptr %11, align 8
  %427 = load double, ptr %12, align 8
  %428 = call double @cos(double noundef %427) #4
  %429 = load double, ptr %30, align 8
  %430 = call double @llvm.fmuladd.f64(double %426, double %428, double %429)
  %431 = load double, ptr %32, align 8
  %432 = fmul double %430, %431
  store double %432, ptr %35, align 8
  %433 = load double, ptr %27, align 8
  %434 = fmul double 2.000000e+00, %433
  %435 = load double, ptr %26, align 8
  %436 = fmul double %434, %435
  store double %436, ptr %36, align 8
  %437 = load double, ptr %23, align 8
  %438 = load double, ptr %30, align 8
  %439 = load double, ptr %31, align 8
  %440 = load double, ptr %27, align 8
  %441 = fneg double %439
  %442 = call double @llvm.fmuladd.f64(double %441, double %440, double %438)
  %443 = fmul double %437, %442
  store double %443, ptr %37, align 8
  %444 = load double, ptr %23, align 8
  %445 = load double, ptr %29, align 8
  %446 = load double, ptr %31, align 8
  %447 = load double, ptr %26, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %447, double %445)
  %449 = fmul double %444, %448
  store double %449, ptr %38, align 8
  %450 = load double, ptr %23, align 8
  %451 = load double, ptr %31, align 8
  %452 = fneg double %451
  %453 = load double, ptr %33, align 8
  %454 = fmul double %452, %453
  %455 = fmul double %450, %454
  store double %455, ptr %39, align 8
  %456 = load double, ptr %37, align 8
  %457 = load ptr, ptr %6, align 8
  %458 = getelementptr inbounds [3 x double], ptr %457, i64 0
  %459 = getelementptr inbounds [3 x double], ptr %458, i64 0, i64 0
  store double %456, ptr %459, align 8
  %460 = load double, ptr %38, align 8
  %461 = load double, ptr %39, align 8
  %462 = fmul double %461, f0x3FD9752E50F4B399
  %463 = fneg double %462
  %464 = call double @llvm.fmuladd.f64(double %460, double f0x3FED5C0357681EF3, double %463)
  %465 = load ptr, ptr %6, align 8
  %466 = getelementptr inbounds [3 x double], ptr %465, i64 0
  %467 = getelementptr inbounds [3 x double], ptr %466, i64 0, i64 1
  store double %464, ptr %467, align 8
  %468 = load double, ptr %38, align 8
  %469 = load double, ptr %39, align 8
  %470 = fmul double %469, f0x3FED5C0357681EF3
  %471 = call double @llvm.fmuladd.f64(double %468, double f0x3FD9752E50F4B399, double %470)
  %472 = load ptr, ptr %6, align 8
  %473 = getelementptr inbounds [3 x double], ptr %472, i64 0
  %474 = getelementptr inbounds [3 x double], ptr %473, i64 0, i64 2
  store double %471, ptr %474, align 8
  %475 = load double, ptr %24, align 8
  %476 = load double, ptr %27, align 8
  %477 = fmul double 2.000000e+00, %476
  %478 = load double, ptr %27, align 8
  %479 = call double @llvm.fmuladd.f64(double %477, double %478, double -1.000000e+00)
  %480 = load double, ptr %34, align 8
  %481 = load double, ptr %36, align 8
  %482 = load double, ptr %35, align 8
  %483 = fmul double %481, %482
  %484 = call double @llvm.fmuladd.f64(double %479, double %480, double %483)
  %485 = fmul double %475, %484
  store double %485, ptr %37, align 8
  %486 = load double, ptr %24, align 8
  %487 = load double, ptr %26, align 8
  %488 = fmul double 2.000000e+00, %487
  %489 = load double, ptr %26, align 8
  %490 = fneg double %488
  %491 = call double @llvm.fmuladd.f64(double %490, double %489, double 1.000000e+00)
  %492 = load double, ptr %35, align 8
  %493 = load double, ptr %36, align 8
  %494 = load double, ptr %34, align 8
  %495 = fmul double %493, %494
  %496 = fneg double %495
  %497 = call double @llvm.fmuladd.f64(double %491, double %492, double %496)
  %498 = fmul double %486, %497
  store double %498, ptr %38, align 8
  %499 = load double, ptr %24, align 8
  %500 = load double, ptr %33, align 8
  %501 = fmul double 2.000000e+00, %500
  %502 = load double, ptr %27, align 8
  %503 = load double, ptr %34, align 8
  %504 = load double, ptr %26, align 8
  %505 = load double, ptr %35, align 8
  %506 = fmul double %504, %505
  %507 = call double @llvm.fmuladd.f64(double %502, double %503, double %506)
  %508 = fmul double %501, %507
  %509 = fmul double %499, %508
  store double %509, ptr %39, align 8
  %510 = load double, ptr %37, align 8
  %511 = load ptr, ptr %6, align 8
  %512 = getelementptr inbounds [3 x double], ptr %511, i64 1
  %513 = getelementptr inbounds [3 x double], ptr %512, i64 0, i64 0
  store double %510, ptr %513, align 8
  %514 = load double, ptr %38, align 8
  %515 = load double, ptr %39, align 8
  %516 = fmul double %515, f0x3FD9752E50F4B399
  %517 = fneg double %516
  %518 = call double @llvm.fmuladd.f64(double %514, double f0x3FED5C0357681EF3, double %517)
  %519 = load ptr, ptr %6, align 8
  %520 = getelementptr inbounds [3 x double], ptr %519, i64 1
  %521 = getelementptr inbounds [3 x double], ptr %520, i64 0, i64 1
  store double %518, ptr %521, align 8
  %522 = load double, ptr %38, align 8
  %523 = load double, ptr %39, align 8
  %524 = fmul double %523, f0x3FED5C0357681EF3
  %525 = call double @llvm.fmuladd.f64(double %522, double f0x3FD9752E50F4B399, double %524)
  %526 = load ptr, ptr %6, align 8
  %527 = getelementptr inbounds [3 x double], ptr %526, i64 1
  %528 = getelementptr inbounds [3 x double], ptr %527, i64 0, i64 2
  store double %525, ptr %528, align 8
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
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i8 1, ptr %12, align 1
  br label %30

27:                                               ; preds = %20
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  br label %16, !llvm.loop !10

30:                                               ; preds = %16, %26, %2
  store i32 0, ptr %6, align 4
  br label %31

31:                                               ; preds = %61, %30
  %32 = load i32, ptr %6, align 4
  %33 = icmp slt i32 %32, 20
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  store double f0x4142B42C80000000, ptr %35, align 16
  %36 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  store double 0.000000e+00, ptr %36, align 8
  store i32 0, ptr %7, align 4
  br label %37

37:                                               ; preds = %58, %34
  %38 = load i32, ptr %7, align 4
  %39 = icmp slt i32 %38, 36525
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %42 = load double, ptr %41, align 16
  %43 = fadd double %42, 1.000000e+00
  store double %43, ptr %41, align 16
  store i32 0, ptr %8, align 4
  br label %44

44:                                               ; preds = %47, %40
  %45 = load i32, ptr %8, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %49 = load i32, ptr %8, align 4
  %50 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  call void @planetpv(ptr noundef %48, i32 noundef %49, ptr noundef %50)
  %51 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %52 = load i32, ptr %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %53
  %55 = getelementptr inbounds [3 x double], ptr %54, i64 0, i64 0
  call void @radecdist(ptr noundef %51, ptr noundef %55)
  %56 = load i32, ptr %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %8, align 4
  br label %44, !llvm.loop !11

58:                                               ; preds = %44
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %7, align 4
  br label %37, !llvm.loop !12

61:                                               ; preds = %37
  %62 = load i32, ptr %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %6, align 4
  br label %31, !llvm.loop !13

64:                                               ; preds = %31
  store i32 0, ptr %8, align 4
  br label %65

65:                                               ; preds = %68, %64
  %66 = load i32, ptr %8, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %70
  %72 = getelementptr inbounds [3 x double], ptr %71, i64 0, i64 0
  %73 = load double, ptr %72, align 8
  %74 = load i32, ptr %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %75
  %77 = getelementptr inbounds [3 x double], ptr %76, i64 0, i64 1
  %78 = load double, ptr %77, align 8
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %80
  %82 = getelementptr inbounds [3 x double], ptr %81, i64 0, i64 2
  %83 = load double, ptr %82, align 8
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %73, double noundef %78, double noundef %83)
  %85 = load i32, ptr %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %8, align 4
  br label %65, !llvm.loop !14

87:                                               ; preds = %65
  %88 = call ptr @__acrt_iob_func(i32 noundef 1)
  %89 = call i32 @fflush(ptr noundef %88)
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
