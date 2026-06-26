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
  br i1 %178, label %.lr.ph, label %236

.lr.ph:                                           ; preds = %3
  %179 = load i32, ptr %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %180
  %182 = load double, ptr %17, align 8
  %183 = load i32, ptr %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %184
  %186 = load double, ptr %17, align 8
  %187 = load i32, ptr %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %188
  %190 = load i32, ptr %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %191
  %193 = load i32, ptr %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %194
  %196 = load i32, ptr %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %197
  %.promoted = load i32, ptr %9, align 4
  %.promoted8 = load double, ptr %11, align 8
  %.promoted10 = load double, ptr %12, align 8
  br label %199

199:                                              ; preds = %.lr.ph, %233
  %200 = phi double [ %.promoted10, %.lr.ph ], [ %232, %233 ]
  %201 = phi double [ %.promoted8, %.lr.ph ], [ %221, %233 ]
  %202 = phi i32 [ %.promoted, %.lr.ph ], [ %234, %233 ]
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [9 x double], ptr %181, i64 0, i64 %203
  %205 = load double, ptr %204, align 8
  %206 = fmul double %205, %182
  %207 = sext i32 %202 to i64
  %208 = getelementptr inbounds [10 x double], ptr %185, i64 0, i64 %207
  %209 = load double, ptr %208, align 8
  %210 = fmul double %209, %186
  %211 = sext i32 %202 to i64
  %212 = getelementptr inbounds [9 x double], ptr %189, i64 0, i64 %211
  %213 = load double, ptr %212, align 8
  %214 = call double @cos(double noundef %206) #4
  %215 = sext i32 %202 to i64
  %216 = getelementptr inbounds [9 x double], ptr %192, i64 0, i64 %215
  %217 = load double, ptr %216, align 8
  %218 = call double @sin(double noundef %206) #4
  %219 = fmul double %217, %218
  %220 = call double @llvm.fmuladd.f64(double %213, double %214, double %219)
  %221 = call double @llvm.fmuladd.f64(double %220, double f0x3E7AD7F29ABCAF48, double %201)
  %222 = sext i32 %202 to i64
  %223 = getelementptr inbounds [10 x double], ptr %195, i64 0, i64 %222
  %224 = load double, ptr %223, align 8
  %225 = call double @cos(double noundef %210) #4
  %226 = sext i32 %202 to i64
  %227 = getelementptr inbounds [10 x double], ptr %198, i64 0, i64 %226
  %228 = load double, ptr %227, align 8
  %229 = call double @sin(double noundef %210) #4
  %230 = fmul double %228, %229
  %231 = call double @llvm.fmuladd.f64(double %224, double %225, double %230)
  %232 = call double @llvm.fmuladd.f64(double %231, double f0x3E7AD7F29ABCAF48, double %200)
  br label %233

233:                                              ; preds = %199
  %234 = add nsw i32 %202, 1
  %235 = icmp slt i32 %234, 8
  br i1 %235, label %199, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %233
  %.lcssa11 = phi double [ %232, %233 ]
  %.lcssa9 = phi double [ %221, %233 ]
  %.lcssa7 = phi double [ %210, %233 ]
  %.lcssa5 = phi double [ %206, %233 ]
  %.lcssa = phi i32 [ %234, %233 ]
  store i32 %.lcssa, ptr %9, align 4
  store double %.lcssa5, ptr %18, align 8
  store double %.lcssa7, ptr %19, align 8
  store double %.lcssa9, ptr %11, align 8
  store double %.lcssa11, ptr %12, align 8
  br label %236

236:                                              ; preds = %._crit_edge, %3
  %237 = load i32, ptr %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %238
  %240 = getelementptr inbounds [9 x double], ptr %239, i64 0, i64 8
  %241 = load double, ptr %240, align 8
  %242 = load double, ptr %17, align 8
  %243 = fmul double %241, %242
  store double %243, ptr %18, align 8
  %244 = load double, ptr %11, align 8
  %245 = load double, ptr %10, align 8
  %246 = load i32, ptr %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %247
  %249 = getelementptr inbounds [9 x double], ptr %248, i64 0, i64 8
  %250 = load double, ptr %249, align 8
  %251 = load double, ptr %18, align 8
  %252 = call double @cos(double noundef %251) #4
  %253 = load i32, ptr %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %254
  %256 = getelementptr inbounds [9 x double], ptr %255, i64 0, i64 8
  %257 = load double, ptr %256, align 8
  %258 = load double, ptr %18, align 8
  %259 = call double @sin(double noundef %258) #4
  %260 = fmul double %257, %259
  %261 = call double @llvm.fmuladd.f64(double %250, double %252, double %260)
  %262 = fmul double %245, %261
  %263 = call double @llvm.fmuladd.f64(double %262, double f0x3E7AD7F29ABCAF48, double %244)
  store double %263, ptr %11, align 8
  store i32 8, ptr %9, align 4
  %264 = load i32, ptr %9, align 4
  %265 = icmp sle i32 %264, 9
  br i1 %265, label %.lr.ph2, label %299

.lr.ph2:                                          ; preds = %236
  %266 = load i32, ptr %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %267
  %269 = load double, ptr %17, align 8
  %270 = load double, ptr %10, align 8
  %271 = load i32, ptr %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %272
  %274 = load i32, ptr %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %275
  %.promoted12 = load i32, ptr %9, align 4
  %.promoted16 = load double, ptr %12, align 8
  br label %277

277:                                              ; preds = %.lr.ph2, %296
  %278 = phi double [ %.promoted16, %.lr.ph2 ], [ %295, %296 ]
  %279 = phi i32 [ %.promoted12, %.lr.ph2 ], [ %297, %296 ]
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [10 x double], ptr %268, i64 0, i64 %280
  %282 = load double, ptr %281, align 8
  %283 = fmul double %282, %269
  %284 = sext i32 %279 to i64
  %285 = getelementptr inbounds [10 x double], ptr %273, i64 0, i64 %284
  %286 = load double, ptr %285, align 8
  %287 = call double @cos(double noundef %283) #4
  %288 = sext i32 %279 to i64
  %289 = getelementptr inbounds [10 x double], ptr %276, i64 0, i64 %288
  %290 = load double, ptr %289, align 8
  %291 = call double @sin(double noundef %283) #4
  %292 = fmul double %290, %291
  %293 = call double @llvm.fmuladd.f64(double %286, double %287, double %292)
  %294 = fmul double %270, %293
  %295 = call double @llvm.fmuladd.f64(double %294, double f0x3E7AD7F29ABCAF48, double %278)
  br label %296

296:                                              ; preds = %277
  %297 = add nsw i32 %279, 1
  %298 = icmp sle i32 %297, 9
  br i1 %298, label %277, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %296
  %.lcssa17 = phi double [ %295, %296 ]
  %.lcssa15 = phi double [ %283, %296 ]
  %.lcssa13 = phi i32 [ %297, %296 ]
  store i32 %.lcssa13, ptr %9, align 4
  store double %.lcssa15, ptr %19, align 8
  store double %.lcssa17, ptr %12, align 8
  br label %299

299:                                              ; preds = %._crit_edge3, %236
  %300 = load double, ptr %12, align 8
  %301 = call double @fmod(double noundef %300, double noundef f0x401921FB54442D18) #4
  store double %301, ptr %12, align 8
  %302 = load double, ptr %12, align 8
  %303 = load double, ptr %14, align 8
  %304 = fsub double %302, %303
  store double %304, ptr %20, align 8
  %305 = load double, ptr %20, align 8
  %306 = load double, ptr %13, align 8
  %307 = load double, ptr %20, align 8
  %308 = call double @sin(double noundef %307) #4
  %309 = call double @llvm.fmuladd.f64(double %306, double %308, double %305)
  store double %309, ptr %21, align 8
  store i32 0, ptr %9, align 4
  %310 = load double, ptr %20, align 8
  %311 = load double, ptr %13, align 8
  %312 = load double, ptr %13, align 8
  %313 = fneg double %312
  %.promoted18 = load double, ptr %21, align 8
  %.promoted22 = load i32, ptr %9, align 4
  br label %314

314:                                              ; preds = %326, %299
  %315 = phi i32 [ %324, %326 ], [ %.promoted22, %299 ]
  %316 = phi double [ %323, %326 ], [ %.promoted18, %299 ]
  %317 = fsub double %310, %316
  %318 = call double @sin(double noundef %316) #4
  %319 = call double @llvm.fmuladd.f64(double %311, double %318, double %317)
  %320 = call double @cos(double noundef %316) #4
  %321 = call double @llvm.fmuladd.f64(double %313, double %320, double 1.000000e+00)
  %322 = fdiv double %319, %321
  %323 = fadd double %316, %322
  %324 = add nsw i32 %315, 1
  %325 = icmp sge i32 %324, 10
  br i1 %325, label %329, label %326

326:                                              ; preds = %314
  %327 = call double @llvm.fabs.f64(double %322)
  %328 = fcmp olt double %327, f0x3D719799812DEA11
  br i1 %328, label %329, label %314

329:                                              ; preds = %326, %314
  %.lcssa23 = phi i32 [ %324, %326 ], [ %324, %314 ]
  %.lcssa21 = phi double [ %322, %326 ], [ %322, %314 ]
  %.lcssa19 = phi double [ %323, %326 ], [ %323, %314 ]
  store double %.lcssa19, ptr %21, align 8
  store double %.lcssa21, ptr %22, align 8
  store i32 %.lcssa23, ptr %9, align 4
  br label %330

330:                                              ; preds = %329
  %331 = load double, ptr %21, align 8
  %332 = fdiv double %331, 2.000000e+00
  store double %332, ptr %23, align 8
  %333 = load double, ptr %13, align 8
  %334 = fadd double 1.000000e+00, %333
  %335 = load double, ptr %13, align 8
  %336 = fsub double 1.000000e+00, %335
  %337 = fdiv double %334, %336
  %338 = call double @sqrt(double noundef %337) #4
  %339 = load double, ptr %23, align 8
  %340 = call double @sin(double noundef %339) #4
  %341 = fmul double %338, %340
  %342 = load double, ptr %23, align 8
  %343 = call double @cos(double noundef %342) #4
  %344 = call double @atan2(double noundef %341, double noundef %343) #4
  %345 = fmul double 2.000000e+00, %344
  store double %345, ptr %24, align 8
  %346 = load double, ptr %11, align 8
  %347 = load double, ptr %13, align 8
  %348 = load double, ptr %21, align 8
  %349 = call double @cos(double noundef %348) #4
  %350 = fneg double %347
  %351 = call double @llvm.fmuladd.f64(double %350, double %349, double 1.000000e+00)
  %352 = fmul double %346, %351
  store double %352, ptr %25, align 8
  %353 = load i32, ptr %5, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %354
  %356 = load double, ptr %355, align 8
  %357 = fdiv double 1.000000e+00, %356
  %358 = fadd double 1.000000e+00, %357
  %359 = load double, ptr %11, align 8
  %360 = load double, ptr %11, align 8
  %361 = fmul double %359, %360
  %362 = load double, ptr %11, align 8
  %363 = fmul double %361, %362
  %364 = fdiv double %358, %363
  %365 = call double @sqrt(double noundef %364) #4
  %366 = fmul double f0x3F919D6D51A6B69A, %365
  store double %366, ptr %26, align 8
  %367 = load double, ptr %15, align 8
  %368 = fdiv double %367, 2.000000e+00
  %369 = call double @sin(double noundef %368) #4
  store double %369, ptr %27, align 8
  %370 = load double, ptr %27, align 8
  %371 = load double, ptr %16, align 8
  %372 = call double @cos(double noundef %371) #4
  %373 = fmul double %370, %372
  store double %373, ptr %28, align 8
  %374 = load double, ptr %27, align 8
  %375 = load double, ptr %16, align 8
  %376 = call double @sin(double noundef %375) #4
  %377 = fmul double %374, %376
  store double %377, ptr %29, align 8
  %378 = load double, ptr %24, align 8
  %379 = load double, ptr %14, align 8
  %380 = fadd double %378, %379
  store double %380, ptr %30, align 8
  %381 = load double, ptr %30, align 8
  %382 = call double @sin(double noundef %381) #4
  store double %382, ptr %31, align 8
  %383 = load double, ptr %30, align 8
  %384 = call double @cos(double noundef %383) #4
  store double %384, ptr %32, align 8
  %385 = load double, ptr %29, align 8
  %386 = load double, ptr %32, align 8
  %387 = load double, ptr %28, align 8
  %388 = load double, ptr %31, align 8
  %389 = fmul double %387, %388
  %390 = fneg double %389
  %391 = call double @llvm.fmuladd.f64(double %385, double %386, double %390)
  %392 = fmul double 2.000000e+00, %391
  store double %392, ptr %33, align 8
  %393 = load double, ptr %11, align 8
  %394 = load double, ptr %13, align 8
  %395 = load double, ptr %13, align 8
  %396 = fneg double %394
  %397 = call double @llvm.fmuladd.f64(double %396, double %395, double 1.000000e+00)
  %398 = call double @sqrt(double noundef %397) #4
  %399 = fdiv double %393, %398
  store double %399, ptr %34, align 8
  %400 = load double, ptr %15, align 8
  %401 = fdiv double %400, 2.000000e+00
  %402 = call double @cos(double noundef %401) #4
  store double %402, ptr %35, align 8
  %403 = load double, ptr %13, align 8
  %404 = load double, ptr %14, align 8
  %405 = call double @sin(double noundef %404) #4
  %406 = load double, ptr %31, align 8
  %407 = call double @llvm.fmuladd.f64(double %403, double %405, double %406)
  %408 = load double, ptr %34, align 8
  %409 = fmul double %407, %408
  store double %409, ptr %36, align 8
  %410 = load double, ptr %13, align 8
  %411 = load double, ptr %14, align 8
  %412 = call double @cos(double noundef %411) #4
  %413 = load double, ptr %32, align 8
  %414 = call double @llvm.fmuladd.f64(double %410, double %412, double %413)
  %415 = load double, ptr %34, align 8
  %416 = fmul double %414, %415
  store double %416, ptr %37, align 8
  %417 = load double, ptr %29, align 8
  %418 = fmul double 2.000000e+00, %417
  %419 = load double, ptr %28, align 8
  %420 = fmul double %418, %419
  store double %420, ptr %38, align 8
  %421 = load double, ptr %25, align 8
  %422 = load double, ptr %32, align 8
  %423 = load double, ptr %33, align 8
  %424 = load double, ptr %29, align 8
  %425 = fneg double %423
  %426 = call double @llvm.fmuladd.f64(double %425, double %424, double %422)
  %427 = fmul double %421, %426
  store double %427, ptr %39, align 8
  %428 = load double, ptr %25, align 8
  %429 = load double, ptr %31, align 8
  %430 = load double, ptr %33, align 8
  %431 = load double, ptr %28, align 8
  %432 = call double @llvm.fmuladd.f64(double %430, double %431, double %429)
  %433 = fmul double %428, %432
  store double %433, ptr %40, align 8
  %434 = load double, ptr %25, align 8
  %435 = load double, ptr %33, align 8
  %436 = fneg double %435
  %437 = load double, ptr %35, align 8
  %438 = fmul double %436, %437
  %439 = fmul double %434, %438
  store double %439, ptr %41, align 8
  %440 = load double, ptr %39, align 8
  %441 = load ptr, ptr %6, align 8
  %442 = getelementptr inbounds [3 x double], ptr %441, i64 0
  %443 = getelementptr inbounds [3 x double], ptr %442, i64 0, i64 0
  store double %440, ptr %443, align 8
  %444 = load double, ptr %40, align 8
  %445 = load double, ptr %41, align 8
  %446 = fmul double %445, f0x3FD9752E50F4B399
  %447 = fneg double %446
  %448 = call double @llvm.fmuladd.f64(double %444, double f0x3FED5C0357681EF3, double %447)
  %449 = load ptr, ptr %6, align 8
  %450 = getelementptr inbounds [3 x double], ptr %449, i64 0
  %451 = getelementptr inbounds [3 x double], ptr %450, i64 0, i64 1
  store double %448, ptr %451, align 8
  %452 = load double, ptr %40, align 8
  %453 = load double, ptr %41, align 8
  %454 = fmul double %453, f0x3FED5C0357681EF3
  %455 = call double @llvm.fmuladd.f64(double %452, double f0x3FD9752E50F4B399, double %454)
  %456 = load ptr, ptr %6, align 8
  %457 = getelementptr inbounds [3 x double], ptr %456, i64 0
  %458 = getelementptr inbounds [3 x double], ptr %457, i64 0, i64 2
  store double %455, ptr %458, align 8
  %459 = load double, ptr %26, align 8
  %460 = load double, ptr %29, align 8
  %461 = fmul double 2.000000e+00, %460
  %462 = load double, ptr %29, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %462, double -1.000000e+00)
  %464 = load double, ptr %36, align 8
  %465 = load double, ptr %38, align 8
  %466 = load double, ptr %37, align 8
  %467 = fmul double %465, %466
  %468 = call double @llvm.fmuladd.f64(double %463, double %464, double %467)
  %469 = fmul double %459, %468
  store double %469, ptr %39, align 8
  %470 = load double, ptr %26, align 8
  %471 = load double, ptr %28, align 8
  %472 = fmul double 2.000000e+00, %471
  %473 = load double, ptr %28, align 8
  %474 = fneg double %472
  %475 = call double @llvm.fmuladd.f64(double %474, double %473, double 1.000000e+00)
  %476 = load double, ptr %37, align 8
  %477 = load double, ptr %38, align 8
  %478 = load double, ptr %36, align 8
  %479 = fmul double %477, %478
  %480 = fneg double %479
  %481 = call double @llvm.fmuladd.f64(double %475, double %476, double %480)
  %482 = fmul double %470, %481
  store double %482, ptr %40, align 8
  %483 = load double, ptr %26, align 8
  %484 = load double, ptr %35, align 8
  %485 = fmul double 2.000000e+00, %484
  %486 = load double, ptr %29, align 8
  %487 = load double, ptr %36, align 8
  %488 = load double, ptr %28, align 8
  %489 = load double, ptr %37, align 8
  %490 = fmul double %488, %489
  %491 = call double @llvm.fmuladd.f64(double %486, double %487, double %490)
  %492 = fmul double %485, %491
  %493 = fmul double %483, %492
  store double %493, ptr %41, align 8
  %494 = load double, ptr %39, align 8
  %495 = load ptr, ptr %6, align 8
  %496 = getelementptr inbounds [3 x double], ptr %495, i64 1
  %497 = getelementptr inbounds [3 x double], ptr %496, i64 0, i64 0
  store double %494, ptr %497, align 8
  %498 = load double, ptr %40, align 8
  %499 = load double, ptr %41, align 8
  %500 = fmul double %499, f0x3FD9752E50F4B399
  %501 = fneg double %500
  %502 = call double @llvm.fmuladd.f64(double %498, double f0x3FED5C0357681EF3, double %501)
  %503 = load ptr, ptr %6, align 8
  %504 = getelementptr inbounds [3 x double], ptr %503, i64 1
  %505 = getelementptr inbounds [3 x double], ptr %504, i64 0, i64 1
  store double %502, ptr %505, align 8
  %506 = load double, ptr %40, align 8
  %507 = load double, ptr %41, align 8
  %508 = fmul double %507, f0x3FED5C0357681EF3
  %509 = call double @llvm.fmuladd.f64(double %506, double f0x3FD9752E50F4B399, double %508)
  %510 = load ptr, ptr %6, align 8
  %511 = getelementptr inbounds [3 x double], ptr %510, i64 1
  %512 = getelementptr inbounds [3 x double], ptr %511, i64 0, i64 2
  store double %509, ptr %512, align 8
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
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %15
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %22

22:                                               ; preds = %.lr.ph, %29
  %23 = phi i32 [ %.promoted, %.lr.ph ], [ %30, %29 ]
  %24 = load ptr, ptr %20, align 8
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str) #4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  %.lcssa = phi i32 [ %23, %22 ]
  store i32 %.lcssa, ptr %6, align 4
  store i8 1, ptr %12, align 1
  br label %32

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %23, 1
  %31 = icmp slt i32 %30, %21
  br i1 %31, label %22, label %..loopexit_crit_edge, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %29
  %.lcssa11 = phi i32 [ %30, %29 ]
  store i32 %.lcssa11, ptr %6, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %15
  br label %32

32:                                               ; preds = %.loopexit, %27
  br label %33

33:                                               ; preds = %32, %2
  store i32 0, ptr %6, align 4
  %34 = load i32, ptr %6, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %.lr.ph6, label %66

.lr.ph6:                                          ; preds = %33
  %36 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %37 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  %38 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %39 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %40 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %41 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %.promoted20 = load i32, ptr %6, align 4
  %.promoted22 = load i32, ptr %8, align 1
  br label %42

42:                                               ; preds = %.lr.ph6, %63
  %.lcssa1315.lcssa23 = phi i32 [ %.promoted22, %.lr.ph6 ], [ %.lcssa1315.lcssa24, %63 ]
  %43 = phi i32 [ %.promoted20, %.lr.ph6 ], [ %64, %63 ]
  store double f0x4142B42C80000000, ptr %36, align 16
  store double 0.000000e+00, ptr %37, align 8
  %44 = icmp slt i32 0, 36525
  br i1 %44, label %.lr.ph3, label %62

.lr.ph3:                                          ; preds = %42
  br label %45

45:                                               ; preds = %.lr.ph3, %59
  %46 = phi i32 [ 0, %.lr.ph3 ], [ %60, %59 ]
  %47 = load double, ptr %38, align 16
  %48 = fadd double %47, 1.000000e+00
  store double %48, ptr %38, align 16
  %49 = icmp slt i32 0, 8
  br i1 %49, label %.lr.ph1, label %58

.lr.ph1:                                          ; preds = %45
  br label %50

50:                                               ; preds = %.lr.ph1, %55
  %51 = phi i32 [ 0, %.lr.ph1 ], [ %56, %55 ]
  call void @planetpv(ptr noundef %39, i32 noundef %51, ptr noundef %40)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %52
  %54 = getelementptr inbounds [3 x double], ptr %53, i64 0, i64 0
  call void @radecdist(ptr noundef %41, ptr noundef %54)
  br label %55

55:                                               ; preds = %50
  %56 = add nsw i32 %51, 1
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %50, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %55
  %.lcssa13 = phi i32 [ %56, %55 ]
  br label %58

58:                                               ; preds = %._crit_edge, %45
  %.lcssa1315 = phi i32 [ %.lcssa13, %._crit_edge ], [ 0, %45 ]
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %46, 1
  %61 = icmp slt i32 %60, 36525
  br i1 %61, label %45, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %59
  %.lcssa17 = phi i32 [ %60, %59 ]
  %.lcssa1315.lcssa = phi i32 [ %.lcssa1315, %59 ]
  br label %62

62:                                               ; preds = %._crit_edge4, %42
  %.lcssa1315.lcssa24 = phi i32 [ %.lcssa1315.lcssa, %._crit_edge4 ], [ %.lcssa1315.lcssa23, %42 ]
  %.lcssa1719 = phi i32 [ %.lcssa17, %._crit_edge4 ], [ 0, %42 ]
  br label %63

63:                                               ; preds = %62
  %64 = add nsw i32 %43, 1
  %65 = icmp slt i32 %64, 20
  br i1 %65, label %42, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %63
  %.lcssa1315.lcssa24.lcssa = phi i32 [ %.lcssa1315.lcssa24, %63 ]
  %.lcssa21 = phi i32 [ %64, %63 ]
  %.lcssa1719.lcssa = phi i32 [ %.lcssa1719, %63 ]
  store i32 %.lcssa1719.lcssa, ptr %7, align 4
  store i32 %.lcssa21, ptr %6, align 4
  store i32 %.lcssa1315.lcssa24.lcssa, ptr %8, align 1
  br label %66

66:                                               ; preds = %._crit_edge7, %33
  store i32 0, ptr %8, align 4
  %67 = load i32, ptr %8, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %.lr.ph9, label %87

.lr.ph9:                                          ; preds = %66
  %.promoted25 = load i32, ptr %8, align 4
  br label %69

69:                                               ; preds = %.lr.ph9, %84
  %70 = phi i32 [ %.promoted25, %.lr.ph9 ], [ %85, %84 ]
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %71
  %73 = getelementptr inbounds [3 x double], ptr %72, i64 0, i64 0
  %74 = load double, ptr %73, align 8
  %75 = sext i32 %70 to i64
  %76 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %75
  %77 = getelementptr inbounds [3 x double], ptr %76, i64 0, i64 1
  %78 = load double, ptr %77, align 8
  %79 = sext i32 %70 to i64
  %80 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %79
  %81 = getelementptr inbounds [3 x double], ptr %80, i64 0, i64 2
  %82 = load double, ptr %81, align 8
  %83 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %74, double noundef %78, double noundef %82)
  br label %84

84:                                               ; preds = %69
  %85 = add nsw i32 %70, 1
  %86 = icmp slt i32 %85, 8
  br i1 %86, label %69, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %84
  %.lcssa26 = phi i32 [ %85, %84 ]
  store i32 %.lcssa26, ptr %8, align 4
  br label %87

87:                                               ; preds = %._crit_edge10, %66
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
