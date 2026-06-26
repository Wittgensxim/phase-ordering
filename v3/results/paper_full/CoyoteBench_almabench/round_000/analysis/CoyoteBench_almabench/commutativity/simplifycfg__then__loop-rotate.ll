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
  %177 = load i32, ptr %9, align 4
  %178 = icmp slt i32 %177, 8
  br i1 %178, label %.lr.ph, label %246

.lr.ph:                                           ; preds = %3
  br label %179

179:                                              ; preds = %.lr.ph, %179
  %180 = load i32, ptr %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %181
  %183 = load i32, ptr %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [9 x double], ptr %182, i64 0, i64 %184
  %186 = load double, ptr %185, align 8
  %187 = load double, ptr %17, align 8
  %188 = fmul double %186, %187
  store double %188, ptr %18, align 8
  %189 = load i32, ptr %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %190
  %192 = load i32, ptr %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [10 x double], ptr %191, i64 0, i64 %193
  %195 = load double, ptr %194, align 8
  %196 = load double, ptr %17, align 8
  %197 = fmul double %195, %196
  store double %197, ptr %19, align 8
  %198 = load double, ptr %11, align 8
  %199 = load i32, ptr %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %200
  %202 = load i32, ptr %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [9 x double], ptr %201, i64 0, i64 %203
  %205 = load double, ptr %204, align 8
  %206 = load double, ptr %18, align 8
  %207 = call double @cos(double noundef %206) #4
  %208 = load i32, ptr %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %209
  %211 = load i32, ptr %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [9 x double], ptr %210, i64 0, i64 %212
  %214 = load double, ptr %213, align 8
  %215 = load double, ptr %18, align 8
  %216 = call double @sin(double noundef %215) #4
  %217 = fmul double %214, %216
  %218 = call double @llvm.fmuladd.f64(double %205, double %207, double %217)
  %219 = call double @llvm.fmuladd.f64(double %218, double f0x3E7AD7F29ABCAF48, double %198)
  store double %219, ptr %11, align 8
  %220 = load double, ptr %12, align 8
  %221 = load i32, ptr %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %222
  %224 = load i32, ptr %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [10 x double], ptr %223, i64 0, i64 %225
  %227 = load double, ptr %226, align 8
  %228 = load double, ptr %19, align 8
  %229 = call double @cos(double noundef %228) #4
  %230 = load i32, ptr %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %231
  %233 = load i32, ptr %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [10 x double], ptr %232, i64 0, i64 %234
  %236 = load double, ptr %235, align 8
  %237 = load double, ptr %19, align 8
  %238 = call double @sin(double noundef %237) #4
  %239 = fmul double %236, %238
  %240 = call double @llvm.fmuladd.f64(double %227, double %229, double %239)
  %241 = call double @llvm.fmuladd.f64(double %240, double f0x3E7AD7F29ABCAF48, double %220)
  store double %241, ptr %12, align 8
  %242 = load i32, ptr %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %9, align 4
  %244 = load i32, ptr %9, align 4
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %179, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %179
  br label %246

246:                                              ; preds = %._crit_edge, %3
  %247 = load i32, ptr %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %248
  %250 = getelementptr inbounds [9 x double], ptr %249, i64 0, i64 8
  %251 = load double, ptr %250, align 8
  %252 = load double, ptr %17, align 8
  %253 = fmul double %251, %252
  store double %253, ptr %18, align 8
  %254 = load double, ptr %11, align 8
  %255 = load double, ptr %10, align 8
  %256 = load i32, ptr %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %257
  %259 = getelementptr inbounds [9 x double], ptr %258, i64 0, i64 8
  %260 = load double, ptr %259, align 8
  %261 = load double, ptr %18, align 8
  %262 = call double @cos(double noundef %261) #4
  %263 = load i32, ptr %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %264
  %266 = getelementptr inbounds [9 x double], ptr %265, i64 0, i64 8
  %267 = load double, ptr %266, align 8
  %268 = load double, ptr %18, align 8
  %269 = call double @sin(double noundef %268) #4
  %270 = fmul double %267, %269
  %271 = call double @llvm.fmuladd.f64(double %260, double %262, double %270)
  %272 = fmul double %255, %271
  %273 = call double @llvm.fmuladd.f64(double %272, double f0x3E7AD7F29ABCAF48, double %254)
  store double %273, ptr %11, align 8
  store i32 8, ptr %9, align 4
  %274 = load i32, ptr %9, align 4
  %275 = icmp sle i32 %274, 9
  br i1 %275, label %.lr.ph2, label %314

.lr.ph2:                                          ; preds = %246
  br label %276

276:                                              ; preds = %.lr.ph2, %276
  %277 = load i32, ptr %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %278
  %280 = load i32, ptr %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [10 x double], ptr %279, i64 0, i64 %281
  %283 = load double, ptr %282, align 8
  %284 = load double, ptr %17, align 8
  %285 = fmul double %283, %284
  store double %285, ptr %19, align 8
  %286 = load double, ptr %12, align 8
  %287 = load double, ptr %10, align 8
  %288 = load i32, ptr %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %289
  %291 = load i32, ptr %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [10 x double], ptr %290, i64 0, i64 %292
  %294 = load double, ptr %293, align 8
  %295 = load double, ptr %19, align 8
  %296 = call double @cos(double noundef %295) #4
  %297 = load i32, ptr %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %298
  %300 = load i32, ptr %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [10 x double], ptr %299, i64 0, i64 %301
  %303 = load double, ptr %302, align 8
  %304 = load double, ptr %19, align 8
  %305 = call double @sin(double noundef %304) #4
  %306 = fmul double %303, %305
  %307 = call double @llvm.fmuladd.f64(double %294, double %296, double %306)
  %308 = fmul double %287, %307
  %309 = call double @llvm.fmuladd.f64(double %308, double f0x3E7AD7F29ABCAF48, double %286)
  store double %309, ptr %12, align 8
  %310 = load i32, ptr %9, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, ptr %9, align 4
  %312 = load i32, ptr %9, align 4
  %313 = icmp sle i32 %312, 9
  br i1 %313, label %276, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %276
  br label %314

314:                                              ; preds = %._crit_edge3, %246
  %315 = load double, ptr %12, align 8
  %316 = call double @fmod(double noundef %315, double noundef f0x401921FB54442D18) #4
  store double %316, ptr %12, align 8
  %317 = load double, ptr %12, align 8
  %318 = load double, ptr %14, align 8
  %319 = fsub double %317, %318
  store double %319, ptr %20, align 8
  %320 = load double, ptr %20, align 8
  %321 = load double, ptr %13, align 8
  %322 = load double, ptr %20, align 8
  %323 = call double @sin(double noundef %322) #4
  %324 = call double @llvm.fmuladd.f64(double %321, double %323, double %320)
  store double %324, ptr %21, align 8
  store i32 0, ptr %9, align 4
  br label %325

325:                                              ; preds = %346, %314
  %326 = load double, ptr %20, align 8
  %327 = load double, ptr %21, align 8
  %328 = fsub double %326, %327
  %329 = load double, ptr %13, align 8
  %330 = load double, ptr %21, align 8
  %331 = call double @sin(double noundef %330) #4
  %332 = call double @llvm.fmuladd.f64(double %329, double %331, double %328)
  %333 = load double, ptr %13, align 8
  %334 = load double, ptr %21, align 8
  %335 = call double @cos(double noundef %334) #4
  %336 = fneg double %333
  %337 = call double @llvm.fmuladd.f64(double %336, double %335, double 1.000000e+00)
  %338 = fdiv double %332, %337
  store double %338, ptr %22, align 8
  %339 = load double, ptr %21, align 8
  %340 = load double, ptr %22, align 8
  %341 = fadd double %339, %340
  store double %341, ptr %21, align 8
  %342 = load i32, ptr %9, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, ptr %9, align 4
  %344 = load i32, ptr %9, align 4
  %345 = icmp sge i32 %344, 10
  br i1 %345, label %350, label %346

346:                                              ; preds = %325
  %347 = load double, ptr %22, align 8
  %348 = call double @llvm.fabs.f64(double %347)
  %349 = fcmp olt double %348, f0x3D719799812DEA11
  br i1 %349, label %350, label %325

350:                                              ; preds = %325, %346
  %351 = load double, ptr %21, align 8
  %352 = fdiv double %351, 2.000000e+00
  store double %352, ptr %23, align 8
  %353 = load double, ptr %13, align 8
  %354 = fadd double 1.000000e+00, %353
  %355 = load double, ptr %13, align 8
  %356 = fsub double 1.000000e+00, %355
  %357 = fdiv double %354, %356
  %358 = call double @sqrt(double noundef %357) #4
  %359 = load double, ptr %23, align 8
  %360 = call double @sin(double noundef %359) #4
  %361 = fmul double %358, %360
  %362 = load double, ptr %23, align 8
  %363 = call double @cos(double noundef %362) #4
  %364 = call double @atan2(double noundef %361, double noundef %363) #4
  %365 = fmul double 2.000000e+00, %364
  store double %365, ptr %24, align 8
  %366 = load double, ptr %11, align 8
  %367 = load double, ptr %13, align 8
  %368 = load double, ptr %21, align 8
  %369 = call double @cos(double noundef %368) #4
  %370 = fneg double %367
  %371 = call double @llvm.fmuladd.f64(double %370, double %369, double 1.000000e+00)
  %372 = fmul double %366, %371
  store double %372, ptr %25, align 8
  %373 = load i32, ptr %5, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %374
  %376 = load double, ptr %375, align 8
  %377 = fdiv double 1.000000e+00, %376
  %378 = fadd double 1.000000e+00, %377
  %379 = load double, ptr %11, align 8
  %380 = load double, ptr %11, align 8
  %381 = fmul double %379, %380
  %382 = load double, ptr %11, align 8
  %383 = fmul double %381, %382
  %384 = fdiv double %378, %383
  %385 = call double @sqrt(double noundef %384) #4
  %386 = fmul double f0x3F919D6D51A6B69A, %385
  store double %386, ptr %26, align 8
  %387 = load double, ptr %15, align 8
  %388 = fdiv double %387, 2.000000e+00
  %389 = call double @sin(double noundef %388) #4
  store double %389, ptr %27, align 8
  %390 = load double, ptr %27, align 8
  %391 = load double, ptr %16, align 8
  %392 = call double @cos(double noundef %391) #4
  %393 = fmul double %390, %392
  store double %393, ptr %28, align 8
  %394 = load double, ptr %27, align 8
  %395 = load double, ptr %16, align 8
  %396 = call double @sin(double noundef %395) #4
  %397 = fmul double %394, %396
  store double %397, ptr %29, align 8
  %398 = load double, ptr %24, align 8
  %399 = load double, ptr %14, align 8
  %400 = fadd double %398, %399
  store double %400, ptr %30, align 8
  %401 = load double, ptr %30, align 8
  %402 = call double @sin(double noundef %401) #4
  store double %402, ptr %31, align 8
  %403 = load double, ptr %30, align 8
  %404 = call double @cos(double noundef %403) #4
  store double %404, ptr %32, align 8
  %405 = load double, ptr %29, align 8
  %406 = load double, ptr %32, align 8
  %407 = load double, ptr %28, align 8
  %408 = load double, ptr %31, align 8
  %409 = fmul double %407, %408
  %410 = fneg double %409
  %411 = call double @llvm.fmuladd.f64(double %405, double %406, double %410)
  %412 = fmul double 2.000000e+00, %411
  store double %412, ptr %33, align 8
  %413 = load double, ptr %11, align 8
  %414 = load double, ptr %13, align 8
  %415 = load double, ptr %13, align 8
  %416 = fneg double %414
  %417 = call double @llvm.fmuladd.f64(double %416, double %415, double 1.000000e+00)
  %418 = call double @sqrt(double noundef %417) #4
  %419 = fdiv double %413, %418
  store double %419, ptr %34, align 8
  %420 = load double, ptr %15, align 8
  %421 = fdiv double %420, 2.000000e+00
  %422 = call double @cos(double noundef %421) #4
  store double %422, ptr %35, align 8
  %423 = load double, ptr %13, align 8
  %424 = load double, ptr %14, align 8
  %425 = call double @sin(double noundef %424) #4
  %426 = load double, ptr %31, align 8
  %427 = call double @llvm.fmuladd.f64(double %423, double %425, double %426)
  %428 = load double, ptr %34, align 8
  %429 = fmul double %427, %428
  store double %429, ptr %36, align 8
  %430 = load double, ptr %13, align 8
  %431 = load double, ptr %14, align 8
  %432 = call double @cos(double noundef %431) #4
  %433 = load double, ptr %32, align 8
  %434 = call double @llvm.fmuladd.f64(double %430, double %432, double %433)
  %435 = load double, ptr %34, align 8
  %436 = fmul double %434, %435
  store double %436, ptr %37, align 8
  %437 = load double, ptr %29, align 8
  %438 = fmul double 2.000000e+00, %437
  %439 = load double, ptr %28, align 8
  %440 = fmul double %438, %439
  store double %440, ptr %38, align 8
  %441 = load double, ptr %25, align 8
  %442 = load double, ptr %32, align 8
  %443 = load double, ptr %33, align 8
  %444 = load double, ptr %29, align 8
  %445 = fneg double %443
  %446 = call double @llvm.fmuladd.f64(double %445, double %444, double %442)
  %447 = fmul double %441, %446
  store double %447, ptr %39, align 8
  %448 = load double, ptr %25, align 8
  %449 = load double, ptr %31, align 8
  %450 = load double, ptr %33, align 8
  %451 = load double, ptr %28, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %451, double %449)
  %453 = fmul double %448, %452
  store double %453, ptr %40, align 8
  %454 = load double, ptr %25, align 8
  %455 = load double, ptr %33, align 8
  %456 = fneg double %455
  %457 = load double, ptr %35, align 8
  %458 = fmul double %456, %457
  %459 = fmul double %454, %458
  store double %459, ptr %41, align 8
  %460 = load double, ptr %39, align 8
  %461 = load ptr, ptr %6, align 8
  %462 = getelementptr inbounds [3 x double], ptr %461, i64 0
  %463 = getelementptr inbounds [3 x double], ptr %462, i64 0, i64 0
  store double %460, ptr %463, align 8
  %464 = load double, ptr %40, align 8
  %465 = load double, ptr %41, align 8
  %466 = fmul double %465, f0x3FD9752E50F4B399
  %467 = fneg double %466
  %468 = call double @llvm.fmuladd.f64(double %464, double f0x3FED5C0357681EF3, double %467)
  %469 = load ptr, ptr %6, align 8
  %470 = getelementptr inbounds [3 x double], ptr %469, i64 0
  %471 = getelementptr inbounds [3 x double], ptr %470, i64 0, i64 1
  store double %468, ptr %471, align 8
  %472 = load double, ptr %40, align 8
  %473 = load double, ptr %41, align 8
  %474 = fmul double %473, f0x3FED5C0357681EF3
  %475 = call double @llvm.fmuladd.f64(double %472, double f0x3FD9752E50F4B399, double %474)
  %476 = load ptr, ptr %6, align 8
  %477 = getelementptr inbounds [3 x double], ptr %476, i64 0
  %478 = getelementptr inbounds [3 x double], ptr %477, i64 0, i64 2
  store double %475, ptr %478, align 8
  %479 = load double, ptr %26, align 8
  %480 = load double, ptr %29, align 8
  %481 = fmul double 2.000000e+00, %480
  %482 = load double, ptr %29, align 8
  %483 = call double @llvm.fmuladd.f64(double %481, double %482, double -1.000000e+00)
  %484 = load double, ptr %36, align 8
  %485 = load double, ptr %38, align 8
  %486 = load double, ptr %37, align 8
  %487 = fmul double %485, %486
  %488 = call double @llvm.fmuladd.f64(double %483, double %484, double %487)
  %489 = fmul double %479, %488
  store double %489, ptr %39, align 8
  %490 = load double, ptr %26, align 8
  %491 = load double, ptr %28, align 8
  %492 = fmul double 2.000000e+00, %491
  %493 = load double, ptr %28, align 8
  %494 = fneg double %492
  %495 = call double @llvm.fmuladd.f64(double %494, double %493, double 1.000000e+00)
  %496 = load double, ptr %37, align 8
  %497 = load double, ptr %38, align 8
  %498 = load double, ptr %36, align 8
  %499 = fmul double %497, %498
  %500 = fneg double %499
  %501 = call double @llvm.fmuladd.f64(double %495, double %496, double %500)
  %502 = fmul double %490, %501
  store double %502, ptr %40, align 8
  %503 = load double, ptr %26, align 8
  %504 = load double, ptr %35, align 8
  %505 = fmul double 2.000000e+00, %504
  %506 = load double, ptr %29, align 8
  %507 = load double, ptr %36, align 8
  %508 = load double, ptr %28, align 8
  %509 = load double, ptr %37, align 8
  %510 = fmul double %508, %509
  %511 = call double @llvm.fmuladd.f64(double %506, double %507, double %510)
  %512 = fmul double %505, %511
  %513 = fmul double %503, %512
  store double %513, ptr %41, align 8
  %514 = load double, ptr %39, align 8
  %515 = load ptr, ptr %6, align 8
  %516 = getelementptr inbounds [3 x double], ptr %515, i64 1
  %517 = getelementptr inbounds [3 x double], ptr %516, i64 0, i64 0
  store double %514, ptr %517, align 8
  %518 = load double, ptr %40, align 8
  %519 = load double, ptr %41, align 8
  %520 = fmul double %519, f0x3FD9752E50F4B399
  %521 = fneg double %520
  %522 = call double @llvm.fmuladd.f64(double %518, double f0x3FED5C0357681EF3, double %521)
  %523 = load ptr, ptr %6, align 8
  %524 = getelementptr inbounds [3 x double], ptr %523, i64 1
  %525 = getelementptr inbounds [3 x double], ptr %524, i64 0, i64 1
  store double %522, ptr %525, align 8
  %526 = load double, ptr %40, align 8
  %527 = load double, ptr %41, align 8
  %528 = fmul double %527, f0x3FED5C0357681EF3
  %529 = call double @llvm.fmuladd.f64(double %526, double f0x3FD9752E50F4B399, double %528)
  %530 = load ptr, ptr %6, align 8
  %531 = getelementptr inbounds [3 x double], ptr %530, i64 1
  %532 = getelementptr inbounds [3 x double], ptr %531, i64 0, i64 2
  store double %529, ptr %532, align 8
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
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %15
  br label %19

19:                                               ; preds = %.lr.ph, %26
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str) #4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i8 1, ptr %12, align 1
  br label %32

26:                                               ; preds = %19
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %6, align 4
  %29 = load i32, ptr %6, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %19, label %..loopexit_crit_edge, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %15
  br label %32

32:                                               ; preds = %.loopexit, %25, %2
  store i32 0, ptr %6, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp slt i32 %33, 20
  br i1 %34, label %.lr.ph6, label %69

.lr.ph6:                                          ; preds = %32
  br label %35

35:                                               ; preds = %.lr.ph6, %64
  %36 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  store double f0x4142B42C80000000, ptr %36, align 16
  %37 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  store double 0.000000e+00, ptr %37, align 8
  store i32 0, ptr %7, align 4
  %38 = load i32, ptr %7, align 4
  %39 = icmp slt i32 %38, 36525
  br i1 %39, label %.lr.ph3, label %64

.lr.ph3:                                          ; preds = %35
  br label %40

40:                                               ; preds = %.lr.ph3, %59
  %41 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %42 = load double, ptr %41, align 16
  %43 = fadd double %42, 1.000000e+00
  store double %43, ptr %41, align 16
  store i32 0, ptr %8, align 4
  %44 = load i32, ptr %8, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %.lr.ph1, label %59

.lr.ph1:                                          ; preds = %40
  br label %46

46:                                               ; preds = %.lr.ph1, %46
  %47 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %48 = load i32, ptr %8, align 4
  %49 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  call void @planetpv(ptr noundef %47, i32 noundef %48, ptr noundef %49)
  %50 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %51 = load i32, ptr %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %52
  %54 = getelementptr inbounds [3 x double], ptr %53, i64 0, i64 0
  call void @radecdist(ptr noundef %50, ptr noundef %54)
  %55 = load i32, ptr %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %8, align 4
  %57 = load i32, ptr %8, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %46, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %46
  br label %59

59:                                               ; preds = %._crit_edge, %40
  %60 = load i32, ptr %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %7, align 4
  %62 = load i32, ptr %7, align 4
  %63 = icmp slt i32 %62, 36525
  br i1 %63, label %40, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %59
  br label %64

64:                                               ; preds = %._crit_edge4, %35
  %65 = load i32, ptr %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %6, align 4
  %67 = load i32, ptr %6, align 4
  %68 = icmp slt i32 %67, 20
  br i1 %68, label %35, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %64
  br label %69

69:                                               ; preds = %._crit_edge7, %32
  store i32 0, ptr %8, align 4
  %70 = load i32, ptr %8, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %.lr.ph9, label %93

.lr.ph9:                                          ; preds = %69
  br label %72

72:                                               ; preds = %.lr.ph9, %72
  %73 = load i32, ptr %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %74
  %76 = getelementptr inbounds [3 x double], ptr %75, i64 0, i64 0
  %77 = load double, ptr %76, align 8
  %78 = load i32, ptr %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %79
  %81 = getelementptr inbounds [3 x double], ptr %80, i64 0, i64 1
  %82 = load double, ptr %81, align 8
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %84
  %86 = getelementptr inbounds [3 x double], ptr %85, i64 0, i64 2
  %87 = load double, ptr %86, align 8
  %88 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %77, double noundef %82, double noundef %87)
  %89 = load i32, ptr %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %8, align 4
  %91 = load i32, ptr %8, align 4
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %72, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %72
  br label %93

93:                                               ; preds = %._crit_edge10, %69
  %94 = call ptr @__acrt_iob_func(i32 noundef 1)
  %95 = call i32 @fflush(ptr noundef %94)
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
