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

197:                                              ; preds = %204, %3
  %198 = phi double [ %234, %204 ], [ %.promoted7, %3 ]
  %199 = phi double [ %223, %204 ], [ %.promoted5, %3 ]
  %200 = phi double [ %212, %204 ], [ %.promoted3, %3 ]
  %201 = phi double [ %208, %204 ], [ %.promoted1, %3 ]
  %202 = phi i32 [ %235, %204 ], [ %.promoted, %3 ]
  %203 = icmp slt i32 %202, 8
  br i1 %203, label %204, label %236

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
  %235 = add nsw i32 %202, 1
  br label %197, !llvm.loop !7

236:                                              ; preds = %197
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
  %264 = load i32, ptr %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %265
  %267 = load double, ptr %17, align 8
  %268 = load double, ptr %10, align 8
  %269 = load i32, ptr %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %270
  %272 = load i32, ptr %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %273
  %.promoted9 = load i32, ptr %9, align 4
  %.promoted11 = load double, ptr %19, align 8
  %.promoted13 = load double, ptr %12, align 8
  br label %275

275:                                              ; preds = %280, %236
  %276 = phi double [ %296, %280 ], [ %.promoted13, %236 ]
  %277 = phi double [ %284, %280 ], [ %.promoted11, %236 ]
  %278 = phi i32 [ %297, %280 ], [ %.promoted9, %236 ]
  %279 = icmp sle i32 %278, 9
  br i1 %279, label %280, label %298

280:                                              ; preds = %275
  %281 = sext i32 %278 to i64
  %282 = getelementptr inbounds [10 x double], ptr %266, i64 0, i64 %281
  %283 = load double, ptr %282, align 8
  %284 = fmul double %283, %267
  %285 = sext i32 %278 to i64
  %286 = getelementptr inbounds [10 x double], ptr %271, i64 0, i64 %285
  %287 = load double, ptr %286, align 8
  %288 = call double @cos(double noundef %284) #4
  %289 = sext i32 %278 to i64
  %290 = getelementptr inbounds [10 x double], ptr %274, i64 0, i64 %289
  %291 = load double, ptr %290, align 8
  %292 = call double @sin(double noundef %284) #4
  %293 = fmul double %291, %292
  %294 = call double @llvm.fmuladd.f64(double %287, double %288, double %293)
  %295 = fmul double %268, %294
  %296 = call double @llvm.fmuladd.f64(double %295, double f0x3E7AD7F29ABCAF48, double %276)
  %297 = add nsw i32 %278, 1
  br label %275, !llvm.loop !9

298:                                              ; preds = %275
  %.lcssa14 = phi double [ %276, %275 ]
  %.lcssa12 = phi double [ %277, %275 ]
  %.lcssa10 = phi i32 [ %278, %275 ]
  store i32 %.lcssa10, ptr %9, align 4
  store double %.lcssa12, ptr %19, align 8
  store double %.lcssa14, ptr %12, align 8
  %299 = load double, ptr %12, align 8
  %300 = call double @fmod(double noundef %299, double noundef f0x401921FB54442D18) #4
  store double %300, ptr %12, align 8
  %301 = load double, ptr %12, align 8
  %302 = load double, ptr %14, align 8
  %303 = fsub double %301, %302
  store double %303, ptr %20, align 8
  %304 = load double, ptr %20, align 8
  %305 = load double, ptr %13, align 8
  %306 = load double, ptr %20, align 8
  %307 = call double @sin(double noundef %306) #4
  %308 = call double @llvm.fmuladd.f64(double %305, double %307, double %304)
  store double %308, ptr %21, align 8
  store i32 0, ptr %9, align 4
  %309 = load double, ptr %20, align 8
  %310 = load double, ptr %13, align 8
  %311 = load double, ptr %13, align 8
  %312 = fneg double %311
  %.promoted15 = load double, ptr %21, align 8
  %.promoted19 = load i32, ptr %9, align 4
  br label %313

313:                                              ; preds = %325, %298
  %314 = phi i32 [ %323, %325 ], [ %.promoted19, %298 ]
  %315 = phi double [ %322, %325 ], [ %.promoted15, %298 ]
  %316 = fsub double %309, %315
  %317 = call double @sin(double noundef %315) #4
  %318 = call double @llvm.fmuladd.f64(double %310, double %317, double %316)
  %319 = call double @cos(double noundef %315) #4
  %320 = call double @llvm.fmuladd.f64(double %312, double %319, double 1.000000e+00)
  %321 = fdiv double %318, %320
  %322 = fadd double %315, %321
  %323 = add nsw i32 %314, 1
  %324 = icmp sge i32 %323, 10
  br i1 %324, label %328, label %325

325:                                              ; preds = %313
  %326 = call double @llvm.fabs.f64(double %321)
  %327 = fcmp olt double %326, f0x3D719799812DEA11
  br i1 %327, label %328, label %313

328:                                              ; preds = %313, %325
  %.lcssa20 = phi i32 [ %323, %313 ], [ %323, %325 ]
  %.lcssa18 = phi double [ %321, %313 ], [ %321, %325 ]
  %.lcssa16 = phi double [ %322, %313 ], [ %322, %325 ]
  store double %.lcssa16, ptr %21, align 8
  store double %.lcssa18, ptr %22, align 8
  store i32 %.lcssa20, ptr %9, align 4
  %329 = load double, ptr %21, align 8
  %330 = fdiv double %329, 2.000000e+00
  store double %330, ptr %23, align 8
  %331 = load double, ptr %13, align 8
  %332 = fadd double 1.000000e+00, %331
  %333 = load double, ptr %13, align 8
  %334 = fsub double 1.000000e+00, %333
  %335 = fdiv double %332, %334
  %336 = call double @sqrt(double noundef %335) #4
  %337 = load double, ptr %23, align 8
  %338 = call double @sin(double noundef %337) #4
  %339 = fmul double %336, %338
  %340 = load double, ptr %23, align 8
  %341 = call double @cos(double noundef %340) #4
  %342 = call double @atan2(double noundef %339, double noundef %341) #4
  %343 = fmul double 2.000000e+00, %342
  store double %343, ptr %24, align 8
  %344 = load double, ptr %11, align 8
  %345 = load double, ptr %13, align 8
  %346 = load double, ptr %21, align 8
  %347 = call double @cos(double noundef %346) #4
  %348 = fneg double %345
  %349 = call double @llvm.fmuladd.f64(double %348, double %347, double 1.000000e+00)
  %350 = fmul double %344, %349
  store double %350, ptr %25, align 8
  %351 = load i32, ptr %5, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %352
  %354 = load double, ptr %353, align 8
  %355 = fdiv double 1.000000e+00, %354
  %356 = fadd double 1.000000e+00, %355
  %357 = load double, ptr %11, align 8
  %358 = load double, ptr %11, align 8
  %359 = fmul double %357, %358
  %360 = load double, ptr %11, align 8
  %361 = fmul double %359, %360
  %362 = fdiv double %356, %361
  %363 = call double @sqrt(double noundef %362) #4
  %364 = fmul double f0x3F919D6D51A6B69A, %363
  store double %364, ptr %26, align 8
  %365 = load double, ptr %15, align 8
  %366 = fdiv double %365, 2.000000e+00
  %367 = call double @sin(double noundef %366) #4
  store double %367, ptr %27, align 8
  %368 = load double, ptr %27, align 8
  %369 = load double, ptr %16, align 8
  %370 = call double @cos(double noundef %369) #4
  %371 = fmul double %368, %370
  store double %371, ptr %28, align 8
  %372 = load double, ptr %27, align 8
  %373 = load double, ptr %16, align 8
  %374 = call double @sin(double noundef %373) #4
  %375 = fmul double %372, %374
  store double %375, ptr %29, align 8
  %376 = load double, ptr %24, align 8
  %377 = load double, ptr %14, align 8
  %378 = fadd double %376, %377
  store double %378, ptr %30, align 8
  %379 = load double, ptr %30, align 8
  %380 = call double @sin(double noundef %379) #4
  store double %380, ptr %31, align 8
  %381 = load double, ptr %30, align 8
  %382 = call double @cos(double noundef %381) #4
  store double %382, ptr %32, align 8
  %383 = load double, ptr %29, align 8
  %384 = load double, ptr %32, align 8
  %385 = load double, ptr %28, align 8
  %386 = load double, ptr %31, align 8
  %387 = fmul double %385, %386
  %388 = fneg double %387
  %389 = call double @llvm.fmuladd.f64(double %383, double %384, double %388)
  %390 = fmul double 2.000000e+00, %389
  store double %390, ptr %33, align 8
  %391 = load double, ptr %11, align 8
  %392 = load double, ptr %13, align 8
  %393 = load double, ptr %13, align 8
  %394 = fneg double %392
  %395 = call double @llvm.fmuladd.f64(double %394, double %393, double 1.000000e+00)
  %396 = call double @sqrt(double noundef %395) #4
  %397 = fdiv double %391, %396
  store double %397, ptr %34, align 8
  %398 = load double, ptr %15, align 8
  %399 = fdiv double %398, 2.000000e+00
  %400 = call double @cos(double noundef %399) #4
  store double %400, ptr %35, align 8
  %401 = load double, ptr %13, align 8
  %402 = load double, ptr %14, align 8
  %403 = call double @sin(double noundef %402) #4
  %404 = load double, ptr %31, align 8
  %405 = call double @llvm.fmuladd.f64(double %401, double %403, double %404)
  %406 = load double, ptr %34, align 8
  %407 = fmul double %405, %406
  store double %407, ptr %36, align 8
  %408 = load double, ptr %13, align 8
  %409 = load double, ptr %14, align 8
  %410 = call double @cos(double noundef %409) #4
  %411 = load double, ptr %32, align 8
  %412 = call double @llvm.fmuladd.f64(double %408, double %410, double %411)
  %413 = load double, ptr %34, align 8
  %414 = fmul double %412, %413
  store double %414, ptr %37, align 8
  %415 = load double, ptr %29, align 8
  %416 = fmul double 2.000000e+00, %415
  %417 = load double, ptr %28, align 8
  %418 = fmul double %416, %417
  store double %418, ptr %38, align 8
  %419 = load double, ptr %25, align 8
  %420 = load double, ptr %32, align 8
  %421 = load double, ptr %33, align 8
  %422 = load double, ptr %29, align 8
  %423 = fneg double %421
  %424 = call double @llvm.fmuladd.f64(double %423, double %422, double %420)
  %425 = fmul double %419, %424
  store double %425, ptr %39, align 8
  %426 = load double, ptr %25, align 8
  %427 = load double, ptr %31, align 8
  %428 = load double, ptr %33, align 8
  %429 = load double, ptr %28, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %429, double %427)
  %431 = fmul double %426, %430
  store double %431, ptr %40, align 8
  %432 = load double, ptr %25, align 8
  %433 = load double, ptr %33, align 8
  %434 = fneg double %433
  %435 = load double, ptr %35, align 8
  %436 = fmul double %434, %435
  %437 = fmul double %432, %436
  store double %437, ptr %41, align 8
  %438 = load double, ptr %39, align 8
  %439 = load ptr, ptr %6, align 8
  %440 = getelementptr inbounds [3 x double], ptr %439, i64 0
  %441 = getelementptr inbounds [3 x double], ptr %440, i64 0, i64 0
  store double %438, ptr %441, align 8
  %442 = load double, ptr %40, align 8
  %443 = load double, ptr %41, align 8
  %444 = fmul double %443, f0x3FD9752E50F4B399
  %445 = fneg double %444
  %446 = call double @llvm.fmuladd.f64(double %442, double f0x3FED5C0357681EF3, double %445)
  %447 = load ptr, ptr %6, align 8
  %448 = getelementptr inbounds [3 x double], ptr %447, i64 0
  %449 = getelementptr inbounds [3 x double], ptr %448, i64 0, i64 1
  store double %446, ptr %449, align 8
  %450 = load double, ptr %40, align 8
  %451 = load double, ptr %41, align 8
  %452 = fmul double %451, f0x3FED5C0357681EF3
  %453 = call double @llvm.fmuladd.f64(double %450, double f0x3FD9752E50F4B399, double %452)
  %454 = load ptr, ptr %6, align 8
  %455 = getelementptr inbounds [3 x double], ptr %454, i64 0
  %456 = getelementptr inbounds [3 x double], ptr %455, i64 0, i64 2
  store double %453, ptr %456, align 8
  %457 = load double, ptr %26, align 8
  %458 = load double, ptr %29, align 8
  %459 = fmul double 2.000000e+00, %458
  %460 = load double, ptr %29, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %460, double -1.000000e+00)
  %462 = load double, ptr %36, align 8
  %463 = load double, ptr %38, align 8
  %464 = load double, ptr %37, align 8
  %465 = fmul double %463, %464
  %466 = call double @llvm.fmuladd.f64(double %461, double %462, double %465)
  %467 = fmul double %457, %466
  store double %467, ptr %39, align 8
  %468 = load double, ptr %26, align 8
  %469 = load double, ptr %28, align 8
  %470 = fmul double 2.000000e+00, %469
  %471 = load double, ptr %28, align 8
  %472 = fneg double %470
  %473 = call double @llvm.fmuladd.f64(double %472, double %471, double 1.000000e+00)
  %474 = load double, ptr %37, align 8
  %475 = load double, ptr %38, align 8
  %476 = load double, ptr %36, align 8
  %477 = fmul double %475, %476
  %478 = fneg double %477
  %479 = call double @llvm.fmuladd.f64(double %473, double %474, double %478)
  %480 = fmul double %468, %479
  store double %480, ptr %40, align 8
  %481 = load double, ptr %26, align 8
  %482 = load double, ptr %35, align 8
  %483 = fmul double 2.000000e+00, %482
  %484 = load double, ptr %29, align 8
  %485 = load double, ptr %36, align 8
  %486 = load double, ptr %28, align 8
  %487 = load double, ptr %37, align 8
  %488 = fmul double %486, %487
  %489 = call double @llvm.fmuladd.f64(double %484, double %485, double %488)
  %490 = fmul double %483, %489
  %491 = fmul double %481, %490
  store double %491, ptr %41, align 8
  %492 = load double, ptr %39, align 8
  %493 = load ptr, ptr %6, align 8
  %494 = getelementptr inbounds [3 x double], ptr %493, i64 1
  %495 = getelementptr inbounds [3 x double], ptr %494, i64 0, i64 0
  store double %492, ptr %495, align 8
  %496 = load double, ptr %40, align 8
  %497 = load double, ptr %41, align 8
  %498 = fmul double %497, f0x3FD9752E50F4B399
  %499 = fneg double %498
  %500 = call double @llvm.fmuladd.f64(double %496, double f0x3FED5C0357681EF3, double %499)
  %501 = load ptr, ptr %6, align 8
  %502 = getelementptr inbounds [3 x double], ptr %501, i64 1
  %503 = getelementptr inbounds [3 x double], ptr %502, i64 0, i64 1
  store double %500, ptr %503, align 8
  %504 = load double, ptr %40, align 8
  %505 = load double, ptr %41, align 8
  %506 = fmul double %505, f0x3FED5C0357681EF3
  %507 = call double @llvm.fmuladd.f64(double %504, double f0x3FD9752E50F4B399, double %506)
  %508 = load ptr, ptr %6, align 8
  %509 = getelementptr inbounds [3 x double], ptr %508, i64 1
  %510 = getelementptr inbounds [3 x double], ptr %509, i64 0, i64 2
  store double %507, ptr %510, align 8
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
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %.promoted = load i32, ptr %6, align 4
  br label %19

19:                                               ; preds = %27, %15
  %20 = phi i32 [ %28, %27 ], [ %.promoted, %15 ]
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
  br label %29

27:                                               ; preds = %22
  %28 = add nsw i32 %20, 1
  br label %19, !llvm.loop !10

.loopexit:                                        ; preds = %19
  %.lcssa = phi i32 [ %20, %19 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %29

29:                                               ; preds = %.loopexit, %26, %2
  store i32 0, ptr %6, align 4
  %30 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %31 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  %32 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %33 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 0
  %34 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %35 = getelementptr inbounds [2 x [3 x double]], ptr %10, i64 0, i64 0
  %.promoted8 = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %7, align 4
  %.promoted12 = load i32, ptr %8, align 4
  br label %36

36:                                               ; preds = %56, %29
  %.lcssa37.lcssa13 = phi i32 [ %.lcssa37.lcssa, %56 ], [ %.promoted12, %29 ]
  %.lcssa511 = phi i32 [ %.lcssa5, %56 ], [ %.promoted10, %29 ]
  %37 = phi i32 [ %57, %56 ], [ %.promoted8, %29 ]
  %38 = icmp slt i32 %37, 20
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  store double f0x4142B42C80000000, ptr %30, align 16
  store double 0.000000e+00, ptr %31, align 8
  br label %40

40:                                               ; preds = %54, %39
  %.lcssa37 = phi i32 [ %.lcssa3, %54 ], [ %.lcssa37.lcssa13, %39 ]
  %41 = phi i32 [ %55, %54 ], [ 0, %39 ]
  %42 = icmp slt i32 %41, 36525
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load double, ptr %32, align 16
  %45 = fadd double %44, 1.000000e+00
  store double %45, ptr %32, align 16
  br label %46

46:                                               ; preds = %49, %43
  %47 = phi i32 [ %53, %49 ], [ 0, %43 ]
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  call void @planetpv(ptr noundef %33, i32 noundef %47, ptr noundef %34)
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %50
  %52 = getelementptr inbounds [3 x double], ptr %51, i64 0, i64 0
  call void @radecdist(ptr noundef %35, ptr noundef %52)
  %53 = add nsw i32 %47, 1
  br label %46, !llvm.loop !11

54:                                               ; preds = %46
  %.lcssa3 = phi i32 [ %47, %46 ]
  %55 = add nsw i32 %41, 1
  br label %40, !llvm.loop !12

56:                                               ; preds = %40
  %.lcssa37.lcssa = phi i32 [ %.lcssa37, %40 ]
  %.lcssa5 = phi i32 [ %41, %40 ]
  %57 = add nsw i32 %37, 1
  br label %36, !llvm.loop !13

58:                                               ; preds = %36
  %.lcssa37.lcssa13.lcssa = phi i32 [ %.lcssa37.lcssa13, %36 ]
  %.lcssa511.lcssa = phi i32 [ %.lcssa511, %36 ]
  %.lcssa9 = phi i32 [ %37, %36 ]
  store i32 %.lcssa9, ptr %6, align 4
  store i32 %.lcssa511.lcssa, ptr %7, align 4
  store i32 %.lcssa37.lcssa13.lcssa, ptr %8, align 4
  store i32 0, ptr %8, align 4
  %.promoted14 = load i32, ptr %8, align 4
  br label %59

59:                                               ; preds = %62, %58
  %60 = phi i32 [ %76, %62 ], [ %.promoted14, %58 ]
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %63
  %65 = getelementptr inbounds [3 x double], ptr %64, i64 0, i64 0
  %66 = load double, ptr %65, align 8
  %67 = sext i32 %60 to i64
  %68 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %67
  %69 = getelementptr inbounds [3 x double], ptr %68, i64 0, i64 1
  %70 = load double, ptr %69, align 8
  %71 = sext i32 %60 to i64
  %72 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %71
  %73 = getelementptr inbounds [3 x double], ptr %72, i64 0, i64 2
  %74 = load double, ptr %73, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %66, double noundef %70, double noundef %74)
  %76 = add nsw i32 %60, 1
  br label %59, !llvm.loop !14

77:                                               ; preds = %59
  %.lcssa15 = phi i32 [ %60, %59 ]
  store i32 %.lcssa15, ptr %8, align 4
  %78 = call ptr @__acrt_iob_func(i32 noundef 1)
  %79 = call i32 @fflush(ptr noundef %78)
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
