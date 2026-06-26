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
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load double, ptr %3, align 8
  %11 = load double, ptr %2, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %15 = fsub double %10, %14
  store double %15, ptr %3, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load double, ptr %3, align 8
  ret double %17
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
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds double, ptr %42, i64 0
  %44 = load double, ptr %43, align 8
  %45 = fsub double %44, f0x4142B42C80000000
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds double, ptr %46, i64 1
  %48 = load double, ptr %47, align 8
  %49 = fadd double %45, %48
  %50 = fdiv double %49, 3.652500e+05
  store double %50, ptr %10, align 8
  %51 = load i32, ptr %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %52
  %54 = getelementptr inbounds [3 x double], ptr %53, i64 0, i64 0
  %55 = load double, ptr %54, align 8
  %56 = load i32, ptr %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %57
  %59 = getelementptr inbounds [3 x double], ptr %58, i64 0, i64 1
  %60 = load double, ptr %59, align 8
  %61 = load i32, ptr %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %62
  %64 = getelementptr inbounds [3 x double], ptr %63, i64 0, i64 2
  %65 = load double, ptr %64, align 8
  %66 = load double, ptr %10, align 8
  %67 = call double @llvm.fmuladd.f64(double %65, double %66, double %60)
  %68 = load double, ptr %10, align 8
  %69 = call double @llvm.fmuladd.f64(double %67, double %68, double %55)
  store double %69, ptr %11, align 8
  %70 = load i32, ptr %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %71
  %73 = getelementptr inbounds [3 x double], ptr %72, i64 0, i64 0
  %74 = load double, ptr %73, align 8
  %75 = load i32, ptr %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %76
  %78 = getelementptr inbounds [3 x double], ptr %77, i64 0, i64 1
  %79 = load double, ptr %78, align 8
  %80 = load i32, ptr %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %81
  %83 = getelementptr inbounds [3 x double], ptr %82, i64 0, i64 2
  %84 = load double, ptr %83, align 8
  %85 = load double, ptr %10, align 8
  %86 = call double @llvm.fmuladd.f64(double %84, double %85, double %79)
  %87 = load double, ptr %10, align 8
  %88 = fmul double %86, %87
  %89 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %74, double %88)
  %90 = fmul double %89, f0x3ED455A5B2FF8F9D
  store double %90, ptr %12, align 8
  %91 = load i32, ptr %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %92
  %94 = getelementptr inbounds [3 x double], ptr %93, i64 0, i64 0
  %95 = load double, ptr %94, align 8
  %96 = load i32, ptr %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %97
  %99 = getelementptr inbounds [3 x double], ptr %98, i64 0, i64 1
  %100 = load double, ptr %99, align 8
  %101 = load i32, ptr %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %102
  %104 = getelementptr inbounds [3 x double], ptr %103, i64 0, i64 2
  %105 = load double, ptr %104, align 8
  %106 = load double, ptr %10, align 8
  %107 = call double @llvm.fmuladd.f64(double %105, double %106, double %100)
  %108 = load double, ptr %10, align 8
  %109 = call double @llvm.fmuladd.f64(double %107, double %108, double %95)
  store double %109, ptr %13, align 8
  %110 = load i32, ptr %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %111
  %113 = getelementptr inbounds [3 x double], ptr %112, i64 0, i64 0
  %114 = load double, ptr %113, align 8
  %115 = load i32, ptr %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %116
  %118 = getelementptr inbounds [3 x double], ptr %117, i64 0, i64 1
  %119 = load double, ptr %118, align 8
  %120 = load i32, ptr %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %121
  %123 = getelementptr inbounds [3 x double], ptr %122, i64 0, i64 2
  %124 = load double, ptr %123, align 8
  %125 = load double, ptr %10, align 8
  %126 = call double @llvm.fmuladd.f64(double %124, double %125, double %119)
  %127 = load double, ptr %10, align 8
  %128 = fmul double %126, %127
  %129 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %114, double %128)
  %130 = fmul double %129, f0x3ED455A5B2FF8F9D
  %131 = call double @anpm(double noundef %130)
  store double %131, ptr %14, align 8
  %132 = load i32, ptr %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %133
  %135 = getelementptr inbounds [3 x double], ptr %134, i64 0, i64 0
  %136 = load double, ptr %135, align 8
  %137 = load i32, ptr %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %138
  %140 = getelementptr inbounds [3 x double], ptr %139, i64 0, i64 1
  %141 = load double, ptr %140, align 8
  %142 = load i32, ptr %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %143
  %145 = getelementptr inbounds [3 x double], ptr %144, i64 0, i64 2
  %146 = load double, ptr %145, align 8
  %147 = load double, ptr %10, align 8
  %148 = call double @llvm.fmuladd.f64(double %146, double %147, double %141)
  %149 = load double, ptr %10, align 8
  %150 = fmul double %148, %149
  %151 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %136, double %150)
  %152 = fmul double %151, f0x3ED455A5B2FF8F9D
  store double %152, ptr %15, align 8
  %153 = load i32, ptr %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %154
  %156 = getelementptr inbounds [3 x double], ptr %155, i64 0, i64 0
  %157 = load double, ptr %156, align 8
  %158 = load i32, ptr %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %159
  %161 = getelementptr inbounds [3 x double], ptr %160, i64 0, i64 1
  %162 = load double, ptr %161, align 8
  %163 = load i32, ptr %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %164
  %166 = getelementptr inbounds [3 x double], ptr %165, i64 0, i64 2
  %167 = load double, ptr %166, align 8
  %168 = load double, ptr %10, align 8
  %169 = call double @llvm.fmuladd.f64(double %167, double %168, double %162)
  %170 = load double, ptr %10, align 8
  %171 = fmul double %169, %170
  %172 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %157, double %171)
  %173 = fmul double %172, f0x3ED455A5B2FF8F9D
  %174 = call double @anpm(double noundef %173)
  store double %174, ptr %16, align 8
  %175 = load double, ptr %10, align 8
  %176 = fmul double f0x3FD702A41F2E9970, %175
  store double %176, ptr %17, align 8
  store i32 0, ptr %9, align 4
  %177 = load i32, ptr %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %178
  %180 = load double, ptr %17, align 8
  %181 = load i32, ptr %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %182
  %184 = load double, ptr %17, align 8
  %185 = load i32, ptr %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %186
  %188 = load i32, ptr %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %189
  %191 = load i32, ptr %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %192
  %194 = load i32, ptr %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %195
  %.promoted = load i32, ptr %9, align 4
  %.promoted1 = load double, ptr %18, align 8
  %.promoted3 = load double, ptr %19, align 8
  %.promoted5 = load double, ptr %11, align 8
  %.promoted7 = load double, ptr %12, align 8
  br label %197

197:                                              ; preds = %235, %3
  %198 = phi double [ %234, %235 ], [ %.promoted7, %3 ]
  %199 = phi double [ %223, %235 ], [ %.promoted5, %3 ]
  %200 = phi double [ %212, %235 ], [ %.promoted3, %3 ]
  %201 = phi double [ %208, %235 ], [ %.promoted1, %3 ]
  %202 = phi i32 [ %236, %235 ], [ %.promoted, %3 ]
  %203 = icmp slt i32 %202, 8
  br i1 %203, label %204, label %237

204:                                              ; preds = %197
  %205 = sext i32 %202 to i64
  %206 = getelementptr inbounds [9 x double], ptr %179, i64 0, i64 %205
  %207 = load double, ptr %206, align 8
  %208 = fmul double %207, %180
  %209 = sext i32 %202 to i64
  %210 = getelementptr inbounds [10 x double], ptr %183, i64 0, i64 %209
  %211 = load double, ptr %210, align 8
  %212 = fmul double %211, %184
  %213 = sext i32 %202 to i64
  %214 = getelementptr inbounds [9 x double], ptr %187, i64 0, i64 %213
  %215 = load double, ptr %214, align 8
  %216 = call double @cos(double noundef %208) #4
  %217 = sext i32 %202 to i64
  %218 = getelementptr inbounds [9 x double], ptr %190, i64 0, i64 %217
  %219 = load double, ptr %218, align 8
  %220 = call double @sin(double noundef %208) #4
  %221 = fmul double %219, %220
  %222 = call double @llvm.fmuladd.f64(double %215, double %216, double %221)
  %223 = call double @llvm.fmuladd.f64(double %222, double f0x3E7AD7F29ABCAF48, double %199)
  %224 = sext i32 %202 to i64
  %225 = getelementptr inbounds [10 x double], ptr %193, i64 0, i64 %224
  %226 = load double, ptr %225, align 8
  %227 = call double @cos(double noundef %212) #4
  %228 = sext i32 %202 to i64
  %229 = getelementptr inbounds [10 x double], ptr %196, i64 0, i64 %228
  %230 = load double, ptr %229, align 8
  %231 = call double @sin(double noundef %212) #4
  %232 = fmul double %230, %231
  %233 = call double @llvm.fmuladd.f64(double %226, double %227, double %232)
  %234 = call double @llvm.fmuladd.f64(double %233, double f0x3E7AD7F29ABCAF48, double %198)
  br label %235

235:                                              ; preds = %204
  %236 = add nsw i32 %202, 1
  br label %197, !llvm.loop !7

237:                                              ; preds = %197
  %.lcssa8 = phi double [ %198, %197 ]
  %.lcssa6 = phi double [ %199, %197 ]
  %.lcssa4 = phi double [ %200, %197 ]
  %.lcssa2 = phi double [ %201, %197 ]
  %.lcssa = phi i32 [ %202, %197 ]
  store i32 %.lcssa, ptr %9, align 4
  store double %.lcssa2, ptr %18, align 8
  store double %.lcssa4, ptr %19, align 8
  store double %.lcssa6, ptr %11, align 8
  store double %.lcssa8, ptr %12, align 8
  %238 = load i32, ptr %5, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %239
  %241 = getelementptr inbounds [9 x double], ptr %240, i64 0, i64 8
  %242 = load double, ptr %241, align 8
  %243 = load double, ptr %17, align 8
  %244 = fmul double %242, %243
  store double %244, ptr %18, align 8
  %245 = load double, ptr %11, align 8
  %246 = load double, ptr %10, align 8
  %247 = load i32, ptr %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %248
  %250 = getelementptr inbounds [9 x double], ptr %249, i64 0, i64 8
  %251 = load double, ptr %250, align 8
  %252 = load double, ptr %18, align 8
  %253 = call double @cos(double noundef %252) #4
  %254 = load i32, ptr %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %255
  %257 = getelementptr inbounds [9 x double], ptr %256, i64 0, i64 8
  %258 = load double, ptr %257, align 8
  %259 = load double, ptr %18, align 8
  %260 = call double @sin(double noundef %259) #4
  %261 = fmul double %258, %260
  %262 = call double @llvm.fmuladd.f64(double %251, double %253, double %261)
  %263 = fmul double %246, %262
  %264 = call double @llvm.fmuladd.f64(double %263, double f0x3E7AD7F29ABCAF48, double %245)
  store double %264, ptr %11, align 8
  store i32 8, ptr %9, align 4
  %265 = load i32, ptr %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %266
  %268 = load double, ptr %17, align 8
  %269 = load double, ptr %10, align 8
  %270 = load i32, ptr %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %271
  %273 = load i32, ptr %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %274
  %.promoted9 = load i32, ptr %9, align 4
  %.promoted11 = load double, ptr %19, align 8
  %.promoted13 = load double, ptr %12, align 8
  br label %276

276:                                              ; preds = %298, %237
  %277 = phi double [ %297, %298 ], [ %.promoted13, %237 ]
  %278 = phi double [ %285, %298 ], [ %.promoted11, %237 ]
  %279 = phi i32 [ %299, %298 ], [ %.promoted9, %237 ]
  %280 = icmp sle i32 %279, 9
  br i1 %280, label %281, label %300

281:                                              ; preds = %276
  %282 = sext i32 %279 to i64
  %283 = getelementptr inbounds [10 x double], ptr %267, i64 0, i64 %282
  %284 = load double, ptr %283, align 8
  %285 = fmul double %284, %268
  %286 = sext i32 %279 to i64
  %287 = getelementptr inbounds [10 x double], ptr %272, i64 0, i64 %286
  %288 = load double, ptr %287, align 8
  %289 = call double @cos(double noundef %285) #4
  %290 = sext i32 %279 to i64
  %291 = getelementptr inbounds [10 x double], ptr %275, i64 0, i64 %290
  %292 = load double, ptr %291, align 8
  %293 = call double @sin(double noundef %285) #4
  %294 = fmul double %292, %293
  %295 = call double @llvm.fmuladd.f64(double %288, double %289, double %294)
  %296 = fmul double %269, %295
  %297 = call double @llvm.fmuladd.f64(double %296, double f0x3E7AD7F29ABCAF48, double %277)
  br label %298

298:                                              ; preds = %281
  %299 = add nsw i32 %279, 1
  br label %276, !llvm.loop !9

300:                                              ; preds = %276
  %.lcssa14 = phi double [ %277, %276 ]
  %.lcssa12 = phi double [ %278, %276 ]
  %.lcssa10 = phi i32 [ %279, %276 ]
  store i32 %.lcssa10, ptr %9, align 4
  store double %.lcssa12, ptr %19, align 8
  store double %.lcssa14, ptr %12, align 8
  %301 = load double, ptr %12, align 8
  %302 = call double @fmod(double noundef %301, double noundef f0x401921FB54442D18) #4
  store double %302, ptr %12, align 8
  %303 = load double, ptr %12, align 8
  %304 = load double, ptr %14, align 8
  %305 = fsub double %303, %304
  store double %305, ptr %20, align 8
  %306 = load double, ptr %20, align 8
  %307 = load double, ptr %13, align 8
  %308 = load double, ptr %20, align 8
  %309 = call double @sin(double noundef %308) #4
  %310 = call double @llvm.fmuladd.f64(double %307, double %309, double %306)
  store double %310, ptr %21, align 8
  store i32 0, ptr %9, align 4
  %311 = load double, ptr %20, align 8
  %312 = load double, ptr %13, align 8
  %313 = load double, ptr %13, align 8
  %314 = fneg double %313
  %.promoted15 = load double, ptr %21, align 8
  %.promoted19 = load i32, ptr %9, align 4
  br label %315

315:                                              ; preds = %331, %300
  %316 = phi i32 [ %325, %331 ], [ %.promoted19, %300 ]
  %317 = phi double [ %324, %331 ], [ %.promoted15, %300 ]
  %318 = fsub double %311, %317
  %319 = call double @sin(double noundef %317) #4
  %320 = call double @llvm.fmuladd.f64(double %312, double %319, double %318)
  %321 = call double @cos(double noundef %317) #4
  %322 = call double @llvm.fmuladd.f64(double %314, double %321, double 1.000000e+00)
  %323 = fdiv double %320, %322
  %324 = fadd double %317, %323
  %325 = add nsw i32 %316, 1
  %326 = icmp sge i32 %325, 10
  br i1 %326, label %330, label %327

327:                                              ; preds = %315
  %328 = call double @llvm.fabs.f64(double %323)
  %329 = fcmp olt double %328, f0x3D719799812DEA11
  br i1 %329, label %330, label %331

330:                                              ; preds = %327, %315
  %.lcssa20 = phi i32 [ %325, %327 ], [ %325, %315 ]
  %.lcssa18 = phi double [ %323, %327 ], [ %323, %315 ]
  %.lcssa16 = phi double [ %324, %327 ], [ %324, %315 ]
  store double %.lcssa16, ptr %21, align 8
  store double %.lcssa18, ptr %22, align 8
  store i32 %.lcssa20, ptr %9, align 4
  br label %332

331:                                              ; preds = %327
  br label %315

332:                                              ; preds = %330
  %333 = load double, ptr %21, align 8
  %334 = fdiv double %333, 2.000000e+00
  store double %334, ptr %23, align 8
  %335 = load double, ptr %13, align 8
  %336 = fadd double 1.000000e+00, %335
  %337 = load double, ptr %13, align 8
  %338 = fsub double 1.000000e+00, %337
  %339 = fdiv double %336, %338
  %340 = call double @sqrt(double noundef %339) #4
  %341 = load double, ptr %23, align 8
  %342 = call double @sin(double noundef %341) #4
  %343 = fmul double %340, %342
  %344 = load double, ptr %23, align 8
  %345 = call double @cos(double noundef %344) #4
  %346 = call double @atan2(double noundef %343, double noundef %345) #4
  %347 = fmul double 2.000000e+00, %346
  store double %347, ptr %24, align 8
  %348 = load double, ptr %11, align 8
  %349 = load double, ptr %13, align 8
  %350 = load double, ptr %21, align 8
  %351 = call double @cos(double noundef %350) #4
  %352 = fneg double %349
  %353 = call double @llvm.fmuladd.f64(double %352, double %351, double 1.000000e+00)
  %354 = fmul double %348, %353
  store double %354, ptr %25, align 8
  %355 = load i32, ptr %5, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %356
  %358 = load double, ptr %357, align 8
  %359 = fdiv double 1.000000e+00, %358
  %360 = fadd double 1.000000e+00, %359
  %361 = load double, ptr %11, align 8
  %362 = load double, ptr %11, align 8
  %363 = fmul double %361, %362
  %364 = load double, ptr %11, align 8
  %365 = fmul double %363, %364
  %366 = fdiv double %360, %365
  %367 = call double @sqrt(double noundef %366) #4
  %368 = fmul double f0x3F919D6D51A6B69A, %367
  store double %368, ptr %26, align 8
  %369 = load double, ptr %15, align 8
  %370 = fdiv double %369, 2.000000e+00
  %371 = call double @sin(double noundef %370) #4
  store double %371, ptr %27, align 8
  %372 = load double, ptr %27, align 8
  %373 = load double, ptr %16, align 8
  %374 = call double @cos(double noundef %373) #4
  %375 = fmul double %372, %374
  store double %375, ptr %28, align 8
  %376 = load double, ptr %27, align 8
  %377 = load double, ptr %16, align 8
  %378 = call double @sin(double noundef %377) #4
  %379 = fmul double %376, %378
  store double %379, ptr %29, align 8
  %380 = load double, ptr %24, align 8
  %381 = load double, ptr %14, align 8
  %382 = fadd double %380, %381
  store double %382, ptr %30, align 8
  %383 = load double, ptr %30, align 8
  %384 = call double @sin(double noundef %383) #4
  store double %384, ptr %31, align 8
  %385 = load double, ptr %30, align 8
  %386 = call double @cos(double noundef %385) #4
  store double %386, ptr %32, align 8
  %387 = load double, ptr %29, align 8
  %388 = load double, ptr %32, align 8
  %389 = load double, ptr %28, align 8
  %390 = load double, ptr %31, align 8
  %391 = fmul double %389, %390
  %392 = fneg double %391
  %393 = call double @llvm.fmuladd.f64(double %387, double %388, double %392)
  %394 = fmul double 2.000000e+00, %393
  store double %394, ptr %33, align 8
  %395 = load double, ptr %11, align 8
  %396 = load double, ptr %13, align 8
  %397 = load double, ptr %13, align 8
  %398 = fneg double %396
  %399 = call double @llvm.fmuladd.f64(double %398, double %397, double 1.000000e+00)
  %400 = call double @sqrt(double noundef %399) #4
  %401 = fdiv double %395, %400
  store double %401, ptr %34, align 8
  %402 = load double, ptr %15, align 8
  %403 = fdiv double %402, 2.000000e+00
  %404 = call double @cos(double noundef %403) #4
  store double %404, ptr %35, align 8
  %405 = load double, ptr %13, align 8
  %406 = load double, ptr %14, align 8
  %407 = call double @sin(double noundef %406) #4
  %408 = load double, ptr %31, align 8
  %409 = call double @llvm.fmuladd.f64(double %405, double %407, double %408)
  %410 = load double, ptr %34, align 8
  %411 = fmul double %409, %410
  store double %411, ptr %36, align 8
  %412 = load double, ptr %13, align 8
  %413 = load double, ptr %14, align 8
  %414 = call double @cos(double noundef %413) #4
  %415 = load double, ptr %32, align 8
  %416 = call double @llvm.fmuladd.f64(double %412, double %414, double %415)
  %417 = load double, ptr %34, align 8
  %418 = fmul double %416, %417
  store double %418, ptr %37, align 8
  %419 = load double, ptr %29, align 8
  %420 = fmul double 2.000000e+00, %419
  %421 = load double, ptr %28, align 8
  %422 = fmul double %420, %421
  store double %422, ptr %38, align 8
  %423 = load double, ptr %25, align 8
  %424 = load double, ptr %32, align 8
  %425 = load double, ptr %33, align 8
  %426 = load double, ptr %29, align 8
  %427 = fneg double %425
  %428 = call double @llvm.fmuladd.f64(double %427, double %426, double %424)
  %429 = fmul double %423, %428
  store double %429, ptr %39, align 8
  %430 = load double, ptr %25, align 8
  %431 = load double, ptr %31, align 8
  %432 = load double, ptr %33, align 8
  %433 = load double, ptr %28, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %433, double %431)
  %435 = fmul double %430, %434
  store double %435, ptr %40, align 8
  %436 = load double, ptr %25, align 8
  %437 = load double, ptr %33, align 8
  %438 = fneg double %437
  %439 = load double, ptr %35, align 8
  %440 = fmul double %438, %439
  %441 = fmul double %436, %440
  store double %441, ptr %41, align 8
  %442 = load double, ptr %39, align 8
  %443 = load ptr, ptr %6, align 8
  %444 = getelementptr inbounds [3 x double], ptr %443, i64 0
  %445 = getelementptr inbounds [3 x double], ptr %444, i64 0, i64 0
  store double %442, ptr %445, align 8
  %446 = load double, ptr %40, align 8
  %447 = load double, ptr %41, align 8
  %448 = fmul double %447, f0x3FD9752E50F4B399
  %449 = fneg double %448
  %450 = call double @llvm.fmuladd.f64(double %446, double f0x3FED5C0357681EF3, double %449)
  %451 = load ptr, ptr %6, align 8
  %452 = getelementptr inbounds [3 x double], ptr %451, i64 0
  %453 = getelementptr inbounds [3 x double], ptr %452, i64 0, i64 1
  store double %450, ptr %453, align 8
  %454 = load double, ptr %40, align 8
  %455 = load double, ptr %41, align 8
  %456 = fmul double %455, f0x3FED5C0357681EF3
  %457 = call double @llvm.fmuladd.f64(double %454, double f0x3FD9752E50F4B399, double %456)
  %458 = load ptr, ptr %6, align 8
  %459 = getelementptr inbounds [3 x double], ptr %458, i64 0
  %460 = getelementptr inbounds [3 x double], ptr %459, i64 0, i64 2
  store double %457, ptr %460, align 8
  %461 = load double, ptr %26, align 8
  %462 = load double, ptr %29, align 8
  %463 = fmul double 2.000000e+00, %462
  %464 = load double, ptr %29, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %464, double -1.000000e+00)
  %466 = load double, ptr %36, align 8
  %467 = load double, ptr %38, align 8
  %468 = load double, ptr %37, align 8
  %469 = fmul double %467, %468
  %470 = call double @llvm.fmuladd.f64(double %465, double %466, double %469)
  %471 = fmul double %461, %470
  store double %471, ptr %39, align 8
  %472 = load double, ptr %26, align 8
  %473 = load double, ptr %28, align 8
  %474 = fmul double 2.000000e+00, %473
  %475 = load double, ptr %28, align 8
  %476 = fneg double %474
  %477 = call double @llvm.fmuladd.f64(double %476, double %475, double 1.000000e+00)
  %478 = load double, ptr %37, align 8
  %479 = load double, ptr %38, align 8
  %480 = load double, ptr %36, align 8
  %481 = fmul double %479, %480
  %482 = fneg double %481
  %483 = call double @llvm.fmuladd.f64(double %477, double %478, double %482)
  %484 = fmul double %472, %483
  store double %484, ptr %40, align 8
  %485 = load double, ptr %26, align 8
  %486 = load double, ptr %35, align 8
  %487 = fmul double 2.000000e+00, %486
  %488 = load double, ptr %29, align 8
  %489 = load double, ptr %36, align 8
  %490 = load double, ptr %28, align 8
  %491 = load double, ptr %37, align 8
  %492 = fmul double %490, %491
  %493 = call double @llvm.fmuladd.f64(double %488, double %489, double %492)
  %494 = fmul double %487, %493
  %495 = fmul double %485, %494
  store double %495, ptr %41, align 8
  %496 = load double, ptr %39, align 8
  %497 = load ptr, ptr %6, align 8
  %498 = getelementptr inbounds [3 x double], ptr %497, i64 1
  %499 = getelementptr inbounds [3 x double], ptr %498, i64 0, i64 0
  store double %496, ptr %499, align 8
  %500 = load double, ptr %40, align 8
  %501 = load double, ptr %41, align 8
  %502 = fmul double %501, f0x3FD9752E50F4B399
  %503 = fneg double %502
  %504 = call double @llvm.fmuladd.f64(double %500, double f0x3FED5C0357681EF3, double %503)
  %505 = load ptr, ptr %6, align 8
  %506 = getelementptr inbounds [3 x double], ptr %505, i64 1
  %507 = getelementptr inbounds [3 x double], ptr %506, i64 0, i64 1
  store double %504, ptr %507, align 8
  %508 = load double, ptr %40, align 8
  %509 = load double, ptr %41, align 8
  %510 = fmul double %509, f0x3FED5C0357681EF3
  %511 = call double @llvm.fmuladd.f64(double %508, double f0x3FD9752E50F4B399, double %510)
  %512 = load ptr, ptr %6, align 8
  %513 = getelementptr inbounds [3 x double], ptr %512, i64 1
  %514 = getelementptr inbounds [3 x double], ptr %513, i64 0, i64 2
  store double %511, ptr %514, align 8
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
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %.promoted = load i32, ptr %6, align 4
  br label %19

19:                                               ; preds = %28, %15
  %20 = phi i32 [ %29, %28 ], [ %.promoted, %15 ]
  %21 = icmp slt i32 %20, %16
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %19
  %23 = load ptr, ptr %18, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  %.lcssa1 = phi i32 [ %20, %22 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i8 1, ptr %12, align 1
  br label %30

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %20, 1
  br label %19, !llvm.loop !10

.loopexit:                                        ; preds = %19
  %.lcssa = phi i32 [ %20, %19 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %30

30:                                               ; preds = %.loopexit, %26
  br label %31

31:                                               ; preds = %30, %2
  store i32 0, ptr %6, align 4
  %32 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %33 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  %34 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %35 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %36 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %37 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %.promoted8 = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %7, align 4
  %.promoted12 = load i32, ptr %8, align 4
  br label %38

38:                                               ; preds = %79, %31
  %.lcssa37.lcssa13 = phi i32 [ %.lcssa37.lcssa, %79 ], [ %.promoted12, %31 ]
  %.lcssa511 = phi i32 [ %.lcssa5, %79 ], [ %.promoted10, %31 ]
  %39 = phi i32 [ %80, %79 ], [ %.promoted8, %31 ]
  %40 = icmp slt i32 %39, 20
  br i1 %40, label %41, label %81

41:                                               ; preds = %38
  store double f0x4142B42C80000000, ptr %32, align 16
  store double 0.000000e+00, ptr %33, align 8
  br label %42

42:                                               ; preds = %76, %41
  %.lcssa37 = phi i32 [ %.lcssa3, %76 ], [ %.lcssa37.lcssa13, %41 ]
  %43 = phi i32 [ %77, %76 ], [ 0, %41 ]
  %44 = icmp slt i32 %43, 36525
  br i1 %44, label %45, label %78

45:                                               ; preds = %42
  %46 = load double, ptr %34, align 16
  %47 = fadd double %46, 1.000000e+00
  store double %47, ptr %34, align 16
  br label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48
  call void @planetpv(ptr noundef %35, i32 noundef 0, ptr noundef %36)
  call void @radecdist(ptr noundef %37, ptr noundef %11)
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  call void @planetpv(ptr noundef %35, i32 noundef 1, ptr noundef %36)
  %52 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 1
  call void @radecdist(ptr noundef %37, ptr noundef %52)
  br label %53

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  call void @planetpv(ptr noundef %35, i32 noundef 2, ptr noundef %36)
  %55 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 2
  call void @radecdist(ptr noundef %37, ptr noundef %55)
  br label %56

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  call void @planetpv(ptr noundef %35, i32 noundef 3, ptr noundef %36)
  %58 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 3
  call void @radecdist(ptr noundef %37, ptr noundef %58)
  br label %59

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  call void @planetpv(ptr noundef %35, i32 noundef 4, ptr noundef %36)
  %61 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 4
  call void @radecdist(ptr noundef %37, ptr noundef %61)
  br label %62

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  call void @planetpv(ptr noundef %35, i32 noundef 5, ptr noundef %36)
  %64 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 5
  call void @radecdist(ptr noundef %37, ptr noundef %64)
  br label %65

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  call void @planetpv(ptr noundef %35, i32 noundef 6, ptr noundef %36)
  %67 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 6
  call void @radecdist(ptr noundef %37, ptr noundef %67)
  br label %68

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68
  call void @planetpv(ptr noundef %35, i32 noundef 7, ptr noundef %36)
  %70 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 7
  call void @radecdist(ptr noundef %37, ptr noundef %70)
  br label %71

71:                                               ; preds = %69
  br i1 false, label %72, label %75

72:                                               ; preds = %71
  call void @planetpv(ptr noundef %35, i32 noundef 8, ptr noundef %36)
  %73 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 8
  call void @radecdist(ptr noundef %37, ptr noundef %73)
  br label %74

74:                                               ; preds = %72
  unreachable

75:                                               ; preds = %71
  %.lcssa3 = phi i32 [ 8, %71 ]
  br label %76

76:                                               ; preds = %75
  %77 = add nsw i32 %43, 1
  br label %42, !llvm.loop !11

78:                                               ; preds = %42
  %.lcssa37.lcssa = phi i32 [ %.lcssa37, %42 ]
  %.lcssa5 = phi i32 [ %43, %42 ]
  br label %79

79:                                               ; preds = %78
  %80 = add nsw i32 %39, 1
  br label %38, !llvm.loop !12

81:                                               ; preds = %38
  %.lcssa37.lcssa13.lcssa = phi i32 [ %.lcssa37.lcssa13, %38 ]
  %.lcssa511.lcssa = phi i32 [ %.lcssa511, %38 ]
  %.lcssa9 = phi i32 [ %39, %38 ]
  store i32 %.lcssa9, ptr %6, align 4
  store i32 %.lcssa511.lcssa, ptr %7, align 4
  store i32 %.lcssa37.lcssa13.lcssa, ptr %8, align 4
  store i32 0, ptr %8, align 4
  %.promoted14 = load i32, ptr %8, align 4
  br label %82

82:                                               ; preds = %99, %81
  %83 = phi i32 [ %100, %99 ], [ %.promoted14, %81 ]
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %86
  %88 = getelementptr inbounds [3 x double], ptr %87, i64 0, i64 0
  %89 = load double, ptr %88, align 8
  %90 = sext i32 %83 to i64
  %91 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %90
  %92 = getelementptr inbounds [3 x double], ptr %91, i64 0, i64 1
  %93 = load double, ptr %92, align 8
  %94 = sext i32 %83 to i64
  %95 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %94
  %96 = getelementptr inbounds [3 x double], ptr %95, i64 0, i64 2
  %97 = load double, ptr %96, align 8
  %98 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %89, double noundef %93, double noundef %97)
  br label %99

99:                                               ; preds = %85
  %100 = add nsw i32 %83, 1
  br label %82, !llvm.loop !13

101:                                              ; preds = %82
  %.lcssa15 = phi i32 [ %83, %82 ]
  store i32 %.lcssa15, ptr %8, align 4
  %102 = call ptr @__acrt_iob_func(i32 noundef 1)
  %103 = call i32 @fflush(ptr noundef %102)
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
