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
  br label %177

177:                                              ; preds = %180, %3
  %178 = load i32, ptr %9, align 4
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %245

180:                                              ; preds = %177
  %181 = load i32, ptr %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %182
  %184 = load i32, ptr %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [9 x double], ptr %183, i64 0, i64 %185
  %187 = load double, ptr %186, align 8
  %188 = load double, ptr %17, align 8
  %189 = fmul double %187, %188
  store double %189, ptr %18, align 8
  %190 = load i32, ptr %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %191
  %193 = load i32, ptr %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [10 x double], ptr %192, i64 0, i64 %194
  %196 = load double, ptr %195, align 8
  %197 = load double, ptr %17, align 8
  %198 = fmul double %196, %197
  store double %198, ptr %19, align 8
  %199 = load double, ptr %11, align 8
  %200 = load i32, ptr %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %201
  %203 = load i32, ptr %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [9 x double], ptr %202, i64 0, i64 %204
  %206 = load double, ptr %205, align 8
  %207 = load double, ptr %18, align 8
  %208 = call double @cos(double noundef %207) #4
  %209 = load i32, ptr %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %210
  %212 = load i32, ptr %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [9 x double], ptr %211, i64 0, i64 %213
  %215 = load double, ptr %214, align 8
  %216 = load double, ptr %18, align 8
  %217 = call double @sin(double noundef %216) #4
  %218 = fmul double %215, %217
  %219 = call double @llvm.fmuladd.f64(double %206, double %208, double %218)
  %220 = call double @llvm.fmuladd.f64(double %219, double f0x3E7AD7F29ABCAF48, double %199)
  store double %220, ptr %11, align 8
  %221 = load double, ptr %12, align 8
  %222 = load i32, ptr %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %223
  %225 = load i32, ptr %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [10 x double], ptr %224, i64 0, i64 %226
  %228 = load double, ptr %227, align 8
  %229 = load double, ptr %19, align 8
  %230 = call double @cos(double noundef %229) #4
  %231 = load i32, ptr %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %232
  %234 = load i32, ptr %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [10 x double], ptr %233, i64 0, i64 %235
  %237 = load double, ptr %236, align 8
  %238 = load double, ptr %19, align 8
  %239 = call double @sin(double noundef %238) #4
  %240 = fmul double %237, %239
  %241 = call double @llvm.fmuladd.f64(double %228, double %230, double %240)
  %242 = call double @llvm.fmuladd.f64(double %241, double f0x3E7AD7F29ABCAF48, double %221)
  store double %242, ptr %12, align 8
  %243 = load i32, ptr %9, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr %9, align 4
  br label %177, !llvm.loop !7

245:                                              ; preds = %177
  %246 = load i32, ptr %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %247
  %249 = getelementptr inbounds [9 x double], ptr %248, i64 0, i64 8
  %250 = load double, ptr %249, align 8
  %251 = load double, ptr %17, align 8
  %252 = fmul double %250, %251
  store double %252, ptr %18, align 8
  %253 = load double, ptr %11, align 8
  %254 = load double, ptr %10, align 8
  %255 = load i32, ptr %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %256
  %258 = getelementptr inbounds [9 x double], ptr %257, i64 0, i64 8
  %259 = load double, ptr %258, align 8
  %260 = load double, ptr %18, align 8
  %261 = call double @cos(double noundef %260) #4
  %262 = load i32, ptr %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %263
  %265 = getelementptr inbounds [9 x double], ptr %264, i64 0, i64 8
  %266 = load double, ptr %265, align 8
  %267 = load double, ptr %18, align 8
  %268 = call double @sin(double noundef %267) #4
  %269 = fmul double %266, %268
  %270 = call double @llvm.fmuladd.f64(double %259, double %261, double %269)
  %271 = fmul double %254, %270
  %272 = call double @llvm.fmuladd.f64(double %271, double f0x3E7AD7F29ABCAF48, double %253)
  store double %272, ptr %11, align 8
  store i32 8, ptr %9, align 4
  br label %273

273:                                              ; preds = %276, %245
  %274 = load i32, ptr %9, align 4
  %275 = icmp sle i32 %274, 9
  br i1 %275, label %276, label %312

276:                                              ; preds = %273
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
  br label %273, !llvm.loop !9

312:                                              ; preds = %273
  %313 = load double, ptr %12, align 8
  %314 = call double @fmod(double noundef %313, double noundef f0x401921FB54442D18) #4
  store double %314, ptr %12, align 8
  %315 = load double, ptr %12, align 8
  %316 = load double, ptr %14, align 8
  %317 = fsub double %315, %316
  store double %317, ptr %20, align 8
  %318 = load double, ptr %20, align 8
  %319 = load double, ptr %13, align 8
  %320 = load double, ptr %20, align 8
  %321 = call double @sin(double noundef %320) #4
  %322 = call double @llvm.fmuladd.f64(double %319, double %321, double %318)
  store double %322, ptr %21, align 8
  store i32 0, ptr %9, align 4
  br label %323

323:                                              ; preds = %344, %312
  %324 = load double, ptr %20, align 8
  %325 = load double, ptr %21, align 8
  %326 = fsub double %324, %325
  %327 = load double, ptr %13, align 8
  %328 = load double, ptr %21, align 8
  %329 = call double @sin(double noundef %328) #4
  %330 = call double @llvm.fmuladd.f64(double %327, double %329, double %326)
  %331 = load double, ptr %13, align 8
  %332 = load double, ptr %21, align 8
  %333 = call double @cos(double noundef %332) #4
  %334 = fneg double %331
  %335 = call double @llvm.fmuladd.f64(double %334, double %333, double 1.000000e+00)
  %336 = fdiv double %330, %335
  store double %336, ptr %22, align 8
  %337 = load double, ptr %21, align 8
  %338 = load double, ptr %22, align 8
  %339 = fadd double %337, %338
  store double %339, ptr %21, align 8
  %340 = load i32, ptr %9, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr %9, align 4
  %342 = load i32, ptr %9, align 4
  %343 = icmp sge i32 %342, 10
  br i1 %343, label %348, label %344

344:                                              ; preds = %323
  %345 = load double, ptr %22, align 8
  %346 = call double @llvm.fabs.f64(double %345)
  %347 = fcmp olt double %346, f0x3D719799812DEA11
  br i1 %347, label %348, label %323

348:                                              ; preds = %323, %344
  %349 = load double, ptr %21, align 8
  %350 = fdiv double %349, 2.000000e+00
  store double %350, ptr %23, align 8
  %351 = load double, ptr %13, align 8
  %352 = fadd double 1.000000e+00, %351
  %353 = load double, ptr %13, align 8
  %354 = fsub double 1.000000e+00, %353
  %355 = fdiv double %352, %354
  %356 = call double @sqrt(double noundef %355) #4
  %357 = load double, ptr %23, align 8
  %358 = call double @sin(double noundef %357) #4
  %359 = fmul double %356, %358
  %360 = load double, ptr %23, align 8
  %361 = call double @cos(double noundef %360) #4
  %362 = call double @atan2(double noundef %359, double noundef %361) #4
  %363 = fmul double 2.000000e+00, %362
  store double %363, ptr %24, align 8
  %364 = load double, ptr %11, align 8
  %365 = load double, ptr %13, align 8
  %366 = load double, ptr %21, align 8
  %367 = call double @cos(double noundef %366) #4
  %368 = fneg double %365
  %369 = call double @llvm.fmuladd.f64(double %368, double %367, double 1.000000e+00)
  %370 = fmul double %364, %369
  store double %370, ptr %25, align 8
  %371 = load i32, ptr %5, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %372
  %374 = load double, ptr %373, align 8
  %375 = fdiv double 1.000000e+00, %374
  %376 = fadd double 1.000000e+00, %375
  %377 = load double, ptr %11, align 8
  %378 = load double, ptr %11, align 8
  %379 = fmul double %377, %378
  %380 = load double, ptr %11, align 8
  %381 = fmul double %379, %380
  %382 = fdiv double %376, %381
  %383 = call double @sqrt(double noundef %382) #4
  %384 = fmul double f0x3F919D6D51A6B69A, %383
  store double %384, ptr %26, align 8
  %385 = load double, ptr %15, align 8
  %386 = fdiv double %385, 2.000000e+00
  %387 = call double @sin(double noundef %386) #4
  store double %387, ptr %27, align 8
  %388 = load double, ptr %27, align 8
  %389 = load double, ptr %16, align 8
  %390 = call double @cos(double noundef %389) #4
  %391 = fmul double %388, %390
  store double %391, ptr %28, align 8
  %392 = load double, ptr %27, align 8
  %393 = load double, ptr %16, align 8
  %394 = call double @sin(double noundef %393) #4
  %395 = fmul double %392, %394
  store double %395, ptr %29, align 8
  %396 = load double, ptr %24, align 8
  %397 = load double, ptr %14, align 8
  %398 = fadd double %396, %397
  store double %398, ptr %30, align 8
  %399 = load double, ptr %30, align 8
  %400 = call double @sin(double noundef %399) #4
  store double %400, ptr %31, align 8
  %401 = load double, ptr %30, align 8
  %402 = call double @cos(double noundef %401) #4
  store double %402, ptr %32, align 8
  %403 = load double, ptr %29, align 8
  %404 = load double, ptr %32, align 8
  %405 = load double, ptr %28, align 8
  %406 = load double, ptr %31, align 8
  %407 = fmul double %405, %406
  %408 = fneg double %407
  %409 = call double @llvm.fmuladd.f64(double %403, double %404, double %408)
  %410 = fmul double 2.000000e+00, %409
  store double %410, ptr %33, align 8
  %411 = load double, ptr %11, align 8
  %412 = load double, ptr %13, align 8
  %413 = load double, ptr %13, align 8
  %414 = fneg double %412
  %415 = call double @llvm.fmuladd.f64(double %414, double %413, double 1.000000e+00)
  %416 = call double @sqrt(double noundef %415) #4
  %417 = fdiv double %411, %416
  store double %417, ptr %34, align 8
  %418 = load double, ptr %15, align 8
  %419 = fdiv double %418, 2.000000e+00
  %420 = call double @cos(double noundef %419) #4
  store double %420, ptr %35, align 8
  %421 = load double, ptr %13, align 8
  %422 = load double, ptr %14, align 8
  %423 = call double @sin(double noundef %422) #4
  %424 = load double, ptr %31, align 8
  %425 = call double @llvm.fmuladd.f64(double %421, double %423, double %424)
  %426 = load double, ptr %34, align 8
  %427 = fmul double %425, %426
  store double %427, ptr %36, align 8
  %428 = load double, ptr %13, align 8
  %429 = load double, ptr %14, align 8
  %430 = call double @cos(double noundef %429) #4
  %431 = load double, ptr %32, align 8
  %432 = call double @llvm.fmuladd.f64(double %428, double %430, double %431)
  %433 = load double, ptr %34, align 8
  %434 = fmul double %432, %433
  store double %434, ptr %37, align 8
  %435 = load double, ptr %29, align 8
  %436 = fmul double 2.000000e+00, %435
  %437 = load double, ptr %28, align 8
  %438 = fmul double %436, %437
  store double %438, ptr %38, align 8
  %439 = load double, ptr %25, align 8
  %440 = load double, ptr %32, align 8
  %441 = load double, ptr %33, align 8
  %442 = load double, ptr %29, align 8
  %443 = fneg double %441
  %444 = call double @llvm.fmuladd.f64(double %443, double %442, double %440)
  %445 = fmul double %439, %444
  store double %445, ptr %39, align 8
  %446 = load double, ptr %25, align 8
  %447 = load double, ptr %31, align 8
  %448 = load double, ptr %33, align 8
  %449 = load double, ptr %28, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %449, double %447)
  %451 = fmul double %446, %450
  store double %451, ptr %40, align 8
  %452 = load double, ptr %25, align 8
  %453 = load double, ptr %33, align 8
  %454 = fneg double %453
  %455 = load double, ptr %35, align 8
  %456 = fmul double %454, %455
  %457 = fmul double %452, %456
  store double %457, ptr %41, align 8
  %458 = load double, ptr %39, align 8
  %459 = load ptr, ptr %6, align 8
  %460 = getelementptr inbounds [3 x double], ptr %459, i64 0
  %461 = getelementptr inbounds [3 x double], ptr %460, i64 0, i64 0
  store double %458, ptr %461, align 8
  %462 = load double, ptr %40, align 8
  %463 = load double, ptr %41, align 8
  %464 = fmul double %463, f0x3FD9752E50F4B399
  %465 = fneg double %464
  %466 = call double @llvm.fmuladd.f64(double %462, double f0x3FED5C0357681EF3, double %465)
  %467 = load ptr, ptr %6, align 8
  %468 = getelementptr inbounds [3 x double], ptr %467, i64 0
  %469 = getelementptr inbounds [3 x double], ptr %468, i64 0, i64 1
  store double %466, ptr %469, align 8
  %470 = load double, ptr %40, align 8
  %471 = load double, ptr %41, align 8
  %472 = fmul double %471, f0x3FED5C0357681EF3
  %473 = call double @llvm.fmuladd.f64(double %470, double f0x3FD9752E50F4B399, double %472)
  %474 = load ptr, ptr %6, align 8
  %475 = getelementptr inbounds [3 x double], ptr %474, i64 0
  %476 = getelementptr inbounds [3 x double], ptr %475, i64 0, i64 2
  store double %473, ptr %476, align 8
  %477 = load double, ptr %26, align 8
  %478 = load double, ptr %29, align 8
  %479 = fmul double 2.000000e+00, %478
  %480 = load double, ptr %29, align 8
  %481 = call double @llvm.fmuladd.f64(double %479, double %480, double -1.000000e+00)
  %482 = load double, ptr %36, align 8
  %483 = load double, ptr %38, align 8
  %484 = load double, ptr %37, align 8
  %485 = fmul double %483, %484
  %486 = call double @llvm.fmuladd.f64(double %481, double %482, double %485)
  %487 = fmul double %477, %486
  store double %487, ptr %39, align 8
  %488 = load double, ptr %26, align 8
  %489 = load double, ptr %28, align 8
  %490 = fmul double 2.000000e+00, %489
  %491 = load double, ptr %28, align 8
  %492 = fneg double %490
  %493 = call double @llvm.fmuladd.f64(double %492, double %491, double 1.000000e+00)
  %494 = load double, ptr %37, align 8
  %495 = load double, ptr %38, align 8
  %496 = load double, ptr %36, align 8
  %497 = fmul double %495, %496
  %498 = fneg double %497
  %499 = call double @llvm.fmuladd.f64(double %493, double %494, double %498)
  %500 = fmul double %488, %499
  store double %500, ptr %40, align 8
  %501 = load double, ptr %26, align 8
  %502 = load double, ptr %35, align 8
  %503 = fmul double 2.000000e+00, %502
  %504 = load double, ptr %29, align 8
  %505 = load double, ptr %36, align 8
  %506 = load double, ptr %28, align 8
  %507 = load double, ptr %37, align 8
  %508 = fmul double %506, %507
  %509 = call double @llvm.fmuladd.f64(double %504, double %505, double %508)
  %510 = fmul double %503, %509
  %511 = fmul double %501, %510
  store double %511, ptr %41, align 8
  %512 = load double, ptr %39, align 8
  %513 = load ptr, ptr %6, align 8
  %514 = getelementptr inbounds [3 x double], ptr %513, i64 1
  %515 = getelementptr inbounds [3 x double], ptr %514, i64 0, i64 0
  store double %512, ptr %515, align 8
  %516 = load double, ptr %40, align 8
  %517 = load double, ptr %41, align 8
  %518 = fmul double %517, f0x3FD9752E50F4B399
  %519 = fneg double %518
  %520 = call double @llvm.fmuladd.f64(double %516, double f0x3FED5C0357681EF3, double %519)
  %521 = load ptr, ptr %6, align 8
  %522 = getelementptr inbounds [3 x double], ptr %521, i64 1
  %523 = getelementptr inbounds [3 x double], ptr %522, i64 0, i64 1
  store double %520, ptr %523, align 8
  %524 = load double, ptr %40, align 8
  %525 = load double, ptr %41, align 8
  %526 = fmul double %525, f0x3FED5C0357681EF3
  %527 = call double @llvm.fmuladd.f64(double %524, double f0x3FD9752E50F4B399, double %526)
  %528 = load ptr, ptr %6, align 8
  %529 = getelementptr inbounds [3 x double], ptr %528, i64 1
  %530 = getelementptr inbounds [3 x double], ptr %529, i64 0, i64 2
  store double %527, ptr %530, align 8
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
