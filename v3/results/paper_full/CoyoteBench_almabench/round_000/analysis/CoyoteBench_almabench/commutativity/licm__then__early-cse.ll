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
  %6 = fcmp oge double %5, f0x400921FB54442D18
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load double, ptr %2, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  %10 = select i1 %9, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %11 = fsub double %4, %10
  store double %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = load double, ptr %3, align 8
  ret double %13
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
  %41 = load double, ptr %40, align 8
  %42 = fsub double %41, f0x4142B42C80000000
  %43 = getelementptr inbounds double, ptr %40, i64 1
  %44 = load double, ptr %43, align 8
  %45 = fadd double %42, %44
  %46 = fdiv double %45, 3.652500e+05
  store double %46, ptr %8, align 8
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 1
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 2
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %54, double %46, double %52)
  %56 = call double @llvm.fmuladd.f64(double %55, double %46, double %50)
  store double %56, ptr %9, align 8
  %57 = load i32, ptr %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = getelementptr inbounds [3 x double], ptr %59, i64 0, i64 1
  %62 = load double, ptr %61, align 8
  %63 = getelementptr inbounds [3 x double], ptr %59, i64 0, i64 2
  %64 = load double, ptr %63, align 8
  %65 = load double, ptr %8, align 8
  %66 = call double @llvm.fmuladd.f64(double %64, double %65, double %62)
  %67 = fmul double %66, %65
  %68 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %60, double %67)
  %69 = fmul double %68, f0x3ED455A5B2FF8F9D
  store double %69, ptr %10, align 8
  %70 = load i32, ptr %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = getelementptr inbounds [3 x double], ptr %72, i64 0, i64 1
  %75 = load double, ptr %74, align 8
  %76 = getelementptr inbounds [3 x double], ptr %72, i64 0, i64 2
  %77 = load double, ptr %76, align 8
  %78 = load double, ptr %8, align 8
  %79 = call double @llvm.fmuladd.f64(double %77, double %78, double %75)
  %80 = call double @llvm.fmuladd.f64(double %79, double %78, double %73)
  store double %80, ptr %11, align 8
  %81 = load i32, ptr %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = getelementptr inbounds [3 x double], ptr %83, i64 0, i64 1
  %86 = load double, ptr %85, align 8
  %87 = getelementptr inbounds [3 x double], ptr %83, i64 0, i64 2
  %88 = load double, ptr %87, align 8
  %89 = load double, ptr %8, align 8
  %90 = call double @llvm.fmuladd.f64(double %88, double %89, double %86)
  %91 = fmul double %90, %89
  %92 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %84, double %91)
  %93 = fmul double %92, f0x3ED455A5B2FF8F9D
  %94 = call double @anpm(double noundef %93)
  store double %94, ptr %12, align 8
  %95 = load i32, ptr %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %96
  %98 = load double, ptr %97, align 8
  %99 = getelementptr inbounds [3 x double], ptr %97, i64 0, i64 1
  %100 = load double, ptr %99, align 8
  %101 = getelementptr inbounds [3 x double], ptr %97, i64 0, i64 2
  %102 = load double, ptr %101, align 8
  %103 = load double, ptr %8, align 8
  %104 = call double @llvm.fmuladd.f64(double %102, double %103, double %100)
  %105 = fmul double %104, %103
  %106 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %98, double %105)
  %107 = fmul double %106, f0x3ED455A5B2FF8F9D
  store double %107, ptr %13, align 8
  %108 = load i32, ptr %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %109
  %111 = load double, ptr %110, align 8
  %112 = getelementptr inbounds [3 x double], ptr %110, i64 0, i64 1
  %113 = load double, ptr %112, align 8
  %114 = getelementptr inbounds [3 x double], ptr %110, i64 0, i64 2
  %115 = load double, ptr %114, align 8
  %116 = load double, ptr %8, align 8
  %117 = call double @llvm.fmuladd.f64(double %115, double %116, double %113)
  %118 = fmul double %117, %116
  %119 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %111, double %118)
  %120 = fmul double %119, f0x3ED455A5B2FF8F9D
  %121 = call double @anpm(double noundef %120)
  store double %121, ptr %14, align 8
  %122 = load double, ptr %8, align 8
  %123 = fmul double f0x3FD702A41F2E9970, %122
  store double %123, ptr %15, align 8
  store i32 0, ptr %7, align 4
  %124 = load i32, ptr %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %125
  %127 = load double, ptr %15, align 8
  %128 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %125
  %129 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %125
  %130 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %125
  %131 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %125
  %132 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %125
  %.promoted1 = load double, ptr %16, align 8
  %.promoted3 = load double, ptr %17, align 8
  %.promoted5 = load double, ptr %9, align 8
  %.promoted7 = load double, ptr %10, align 8
  br label %133

133:                                              ; preds = %166, %3
  %134 = phi double [ %165, %166 ], [ %.promoted7, %3 ]
  %135 = phi double [ %156, %166 ], [ %.promoted5, %3 ]
  %136 = phi double [ %147, %166 ], [ %.promoted3, %3 ]
  %137 = phi double [ %144, %166 ], [ %.promoted1, %3 ]
  %138 = phi i32 [ %167, %166 ], [ 0, %3 ]
  %139 = icmp slt i32 %138, 8
  br i1 %139, label %140, label %168

140:                                              ; preds = %133
  %141 = sext i32 %138 to i64
  %142 = getelementptr inbounds [9 x double], ptr %126, i64 0, i64 %141
  %143 = load double, ptr %142, align 8
  %144 = fmul double %143, %127
  %145 = getelementptr inbounds [10 x double], ptr %128, i64 0, i64 %141
  %146 = load double, ptr %145, align 8
  %147 = fmul double %146, %127
  %148 = getelementptr inbounds [9 x double], ptr %129, i64 0, i64 %141
  %149 = load double, ptr %148, align 8
  %150 = call double @cos(double noundef %144) #4
  %151 = getelementptr inbounds [9 x double], ptr %130, i64 0, i64 %141
  %152 = load double, ptr %151, align 8
  %153 = call double @sin(double noundef %144) #4
  %154 = fmul double %152, %153
  %155 = call double @llvm.fmuladd.f64(double %149, double %150, double %154)
  %156 = call double @llvm.fmuladd.f64(double %155, double f0x3E7AD7F29ABCAF48, double %135)
  %157 = getelementptr inbounds [10 x double], ptr %131, i64 0, i64 %141
  %158 = load double, ptr %157, align 8
  %159 = call double @cos(double noundef %147) #4
  %160 = getelementptr inbounds [10 x double], ptr %132, i64 0, i64 %141
  %161 = load double, ptr %160, align 8
  %162 = call double @sin(double noundef %147) #4
  %163 = fmul double %161, %162
  %164 = call double @llvm.fmuladd.f64(double %158, double %159, double %163)
  %165 = call double @llvm.fmuladd.f64(double %164, double f0x3E7AD7F29ABCAF48, double %134)
  br label %166

166:                                              ; preds = %140
  %167 = add nsw i32 %138, 1
  br label %133, !llvm.loop !7

168:                                              ; preds = %133
  store i32 %138, ptr %7, align 4
  store double %137, ptr %16, align 8
  store double %136, ptr %17, align 8
  store double %135, ptr %9, align 8
  store double %134, ptr %10, align 8
  %169 = load i32, ptr %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %170
  %172 = getelementptr inbounds [9 x double], ptr %171, i64 0, i64 8
  %173 = load double, ptr %172, align 8
  %174 = load double, ptr %15, align 8
  %175 = fmul double %173, %174
  store double %175, ptr %16, align 8
  %176 = load double, ptr %9, align 8
  %177 = load double, ptr %8, align 8
  %178 = load i32, ptr %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %179
  %181 = getelementptr inbounds [9 x double], ptr %180, i64 0, i64 8
  %182 = load double, ptr %181, align 8
  %183 = call double @cos(double noundef %175) #4
  %184 = load i32, ptr %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %185
  %187 = getelementptr inbounds [9 x double], ptr %186, i64 0, i64 8
  %188 = load double, ptr %187, align 8
  %189 = load double, ptr %16, align 8
  %190 = call double @sin(double noundef %189) #4
  %191 = fmul double %188, %190
  %192 = call double @llvm.fmuladd.f64(double %182, double %183, double %191)
  %193 = fmul double %177, %192
  %194 = call double @llvm.fmuladd.f64(double %193, double f0x3E7AD7F29ABCAF48, double %176)
  store double %194, ptr %9, align 8
  store i32 8, ptr %7, align 4
  %195 = load i32, ptr %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %196
  %198 = load double, ptr %15, align 8
  %199 = load double, ptr %8, align 8
  %200 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %196
  %201 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %196
  %.promoted11 = load double, ptr %17, align 8
  %.promoted13 = load double, ptr %10, align 8
  br label %202

202:                                              ; preds = %222, %168
  %203 = phi double [ %221, %222 ], [ %.promoted13, %168 ]
  %204 = phi double [ %211, %222 ], [ %.promoted11, %168 ]
  %205 = phi i32 [ %223, %222 ], [ 8, %168 ]
  %206 = icmp sle i32 %205, 9
  br i1 %206, label %207, label %224

207:                                              ; preds = %202
  %208 = sext i32 %205 to i64
  %209 = getelementptr inbounds [10 x double], ptr %197, i64 0, i64 %208
  %210 = load double, ptr %209, align 8
  %211 = fmul double %210, %198
  %212 = getelementptr inbounds [10 x double], ptr %200, i64 0, i64 %208
  %213 = load double, ptr %212, align 8
  %214 = call double @cos(double noundef %211) #4
  %215 = getelementptr inbounds [10 x double], ptr %201, i64 0, i64 %208
  %216 = load double, ptr %215, align 8
  %217 = call double @sin(double noundef %211) #4
  %218 = fmul double %216, %217
  %219 = call double @llvm.fmuladd.f64(double %213, double %214, double %218)
  %220 = fmul double %199, %219
  %221 = call double @llvm.fmuladd.f64(double %220, double f0x3E7AD7F29ABCAF48, double %203)
  br label %222

222:                                              ; preds = %207
  %223 = add nsw i32 %205, 1
  br label %202, !llvm.loop !9

224:                                              ; preds = %202
  store i32 %205, ptr %7, align 4
  store double %204, ptr %17, align 8
  store double %203, ptr %10, align 8
  %225 = call double @fmod(double noundef %203, double noundef f0x401921FB54442D18) #4
  store double %225, ptr %10, align 8
  %226 = load double, ptr %12, align 8
  %227 = fsub double %225, %226
  store double %227, ptr %18, align 8
  %228 = load double, ptr %11, align 8
  %229 = call double @sin(double noundef %227) #4
  %230 = call double @llvm.fmuladd.f64(double %228, double %229, double %227)
  store double %230, ptr %19, align 8
  store i32 0, ptr %7, align 4
  %231 = load double, ptr %18, align 8
  %232 = load double, ptr %11, align 8
  %233 = fneg double %232
  %.promoted15 = load double, ptr %19, align 8
  br label %234

234:                                              ; preds = %250, %224
  %235 = phi i32 [ %244, %250 ], [ 0, %224 ]
  %236 = phi double [ %243, %250 ], [ %.promoted15, %224 ]
  %237 = fsub double %231, %236
  %238 = call double @sin(double noundef %236) #4
  %239 = call double @llvm.fmuladd.f64(double %232, double %238, double %237)
  %240 = call double @cos(double noundef %236) #4
  %241 = call double @llvm.fmuladd.f64(double %233, double %240, double 1.000000e+00)
  %242 = fdiv double %239, %241
  %243 = fadd double %236, %242
  %244 = add nsw i32 %235, 1
  %245 = icmp sge i32 %244, 10
  br i1 %245, label %249, label %246

246:                                              ; preds = %234
  %247 = call double @llvm.fabs.f64(double %242)
  %248 = fcmp olt double %247, f0x3D719799812DEA11
  br i1 %248, label %249, label %250

249:                                              ; preds = %246, %234
  store double %243, ptr %19, align 8
  store double %242, ptr %20, align 8
  store i32 %244, ptr %7, align 4
  br label %251

250:                                              ; preds = %246
  br label %234

251:                                              ; preds = %249
  %252 = load double, ptr %19, align 8
  %253 = fdiv double %252, 2.000000e+00
  store double %253, ptr %21, align 8
  %254 = load double, ptr %11, align 8
  %255 = fadd double 1.000000e+00, %254
  %256 = fsub double 1.000000e+00, %254
  %257 = fdiv double %255, %256
  %258 = call double @sqrt(double noundef %257) #4
  %259 = load double, ptr %21, align 8
  %260 = call double @sin(double noundef %259) #4
  %261 = fmul double %258, %260
  %262 = load double, ptr %21, align 8
  %263 = call double @cos(double noundef %262) #4
  %264 = call double @atan2(double noundef %261, double noundef %263) #4
  %265 = fmul double 2.000000e+00, %264
  store double %265, ptr %22, align 8
  %266 = load double, ptr %9, align 8
  %267 = load double, ptr %11, align 8
  %268 = load double, ptr %19, align 8
  %269 = call double @cos(double noundef %268) #4
  %270 = fneg double %267
  %271 = call double @llvm.fmuladd.f64(double %270, double %269, double 1.000000e+00)
  %272 = fmul double %266, %271
  store double %272, ptr %23, align 8
  %273 = load i32, ptr %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %274
  %276 = load double, ptr %275, align 8
  %277 = fdiv double 1.000000e+00, %276
  %278 = fadd double 1.000000e+00, %277
  %279 = load double, ptr %9, align 8
  %280 = fmul double %279, %279
  %281 = fmul double %280, %279
  %282 = fdiv double %278, %281
  %283 = call double @sqrt(double noundef %282) #4
  %284 = fmul double f0x3F919D6D51A6B69A, %283
  store double %284, ptr %24, align 8
  %285 = load double, ptr %13, align 8
  %286 = fdiv double %285, 2.000000e+00
  %287 = call double @sin(double noundef %286) #4
  store double %287, ptr %25, align 8
  %288 = load double, ptr %14, align 8
  %289 = call double @cos(double noundef %288) #4
  %290 = fmul double %287, %289
  store double %290, ptr %26, align 8
  %291 = load double, ptr %25, align 8
  %292 = load double, ptr %14, align 8
  %293 = call double @sin(double noundef %292) #4
  %294 = fmul double %291, %293
  store double %294, ptr %27, align 8
  %295 = load double, ptr %22, align 8
  %296 = load double, ptr %12, align 8
  %297 = fadd double %295, %296
  store double %297, ptr %28, align 8
  %298 = call double @sin(double noundef %297) #4
  store double %298, ptr %29, align 8
  %299 = load double, ptr %28, align 8
  %300 = call double @cos(double noundef %299) #4
  store double %300, ptr %30, align 8
  %301 = load double, ptr %27, align 8
  %302 = load double, ptr %26, align 8
  %303 = load double, ptr %29, align 8
  %304 = fmul double %302, %303
  %305 = fneg double %304
  %306 = call double @llvm.fmuladd.f64(double %301, double %300, double %305)
  %307 = fmul double 2.000000e+00, %306
  store double %307, ptr %31, align 8
  %308 = load double, ptr %9, align 8
  %309 = load double, ptr %11, align 8
  %310 = fneg double %309
  %311 = call double @llvm.fmuladd.f64(double %310, double %309, double 1.000000e+00)
  %312 = call double @sqrt(double noundef %311) #4
  %313 = fdiv double %308, %312
  store double %313, ptr %32, align 8
  %314 = load double, ptr %13, align 8
  %315 = fdiv double %314, 2.000000e+00
  %316 = call double @cos(double noundef %315) #4
  store double %316, ptr %33, align 8
  %317 = load double, ptr %11, align 8
  %318 = load double, ptr %12, align 8
  %319 = call double @sin(double noundef %318) #4
  %320 = load double, ptr %29, align 8
  %321 = call double @llvm.fmuladd.f64(double %317, double %319, double %320)
  %322 = load double, ptr %32, align 8
  %323 = fmul double %321, %322
  store double %323, ptr %34, align 8
  %324 = load double, ptr %11, align 8
  %325 = load double, ptr %12, align 8
  %326 = call double @cos(double noundef %325) #4
  %327 = load double, ptr %30, align 8
  %328 = call double @llvm.fmuladd.f64(double %324, double %326, double %327)
  %329 = load double, ptr %32, align 8
  %330 = fmul double %328, %329
  store double %330, ptr %35, align 8
  %331 = load double, ptr %27, align 8
  %332 = fmul double 2.000000e+00, %331
  %333 = load double, ptr %26, align 8
  %334 = fmul double %332, %333
  store double %334, ptr %36, align 8
  %335 = load double, ptr %23, align 8
  %336 = load double, ptr %30, align 8
  %337 = load double, ptr %31, align 8
  %338 = load double, ptr %27, align 8
  %339 = fneg double %337
  %340 = call double @llvm.fmuladd.f64(double %339, double %338, double %336)
  %341 = fmul double %335, %340
  store double %341, ptr %37, align 8
  %342 = load double, ptr %23, align 8
  %343 = load double, ptr %29, align 8
  %344 = load double, ptr %31, align 8
  %345 = load double, ptr %26, align 8
  %346 = call double @llvm.fmuladd.f64(double %344, double %345, double %343)
  %347 = fmul double %342, %346
  store double %347, ptr %38, align 8
  %348 = load double, ptr %23, align 8
  %349 = load double, ptr %31, align 8
  %350 = fneg double %349
  %351 = load double, ptr %33, align 8
  %352 = fmul double %350, %351
  %353 = fmul double %348, %352
  store double %353, ptr %39, align 8
  %354 = load double, ptr %37, align 8
  %355 = load ptr, ptr %6, align 8
  store double %354, ptr %355, align 8
  %356 = load double, ptr %38, align 8
  %357 = load double, ptr %39, align 8
  %358 = fmul double %357, f0x3FD9752E50F4B399
  %359 = fneg double %358
  %360 = call double @llvm.fmuladd.f64(double %356, double f0x3FED5C0357681EF3, double %359)
  %361 = load ptr, ptr %6, align 8
  %362 = getelementptr inbounds [3 x double], ptr %361, i64 0, i64 1
  store double %360, ptr %362, align 8
  %363 = load double, ptr %38, align 8
  %364 = load double, ptr %39, align 8
  %365 = fmul double %364, f0x3FED5C0357681EF3
  %366 = call double @llvm.fmuladd.f64(double %363, double f0x3FD9752E50F4B399, double %365)
  %367 = load ptr, ptr %6, align 8
  %368 = getelementptr inbounds [3 x double], ptr %367, i64 0, i64 2
  store double %366, ptr %368, align 8
  %369 = load double, ptr %24, align 8
  %370 = load double, ptr %27, align 8
  %371 = fmul double 2.000000e+00, %370
  %372 = call double @llvm.fmuladd.f64(double %371, double %370, double -1.000000e+00)
  %373 = load double, ptr %34, align 8
  %374 = load double, ptr %36, align 8
  %375 = load double, ptr %35, align 8
  %376 = fmul double %374, %375
  %377 = call double @llvm.fmuladd.f64(double %372, double %373, double %376)
  %378 = fmul double %369, %377
  store double %378, ptr %37, align 8
  %379 = load double, ptr %24, align 8
  %380 = load double, ptr %26, align 8
  %381 = fmul double 2.000000e+00, %380
  %382 = fneg double %381
  %383 = call double @llvm.fmuladd.f64(double %382, double %380, double 1.000000e+00)
  %384 = load double, ptr %35, align 8
  %385 = load double, ptr %36, align 8
  %386 = load double, ptr %34, align 8
  %387 = fmul double %385, %386
  %388 = fneg double %387
  %389 = call double @llvm.fmuladd.f64(double %383, double %384, double %388)
  %390 = fmul double %379, %389
  store double %390, ptr %38, align 8
  %391 = load double, ptr %24, align 8
  %392 = load double, ptr %33, align 8
  %393 = fmul double 2.000000e+00, %392
  %394 = load double, ptr %27, align 8
  %395 = load double, ptr %34, align 8
  %396 = load double, ptr %26, align 8
  %397 = load double, ptr %35, align 8
  %398 = fmul double %396, %397
  %399 = call double @llvm.fmuladd.f64(double %394, double %395, double %398)
  %400 = fmul double %393, %399
  %401 = fmul double %391, %400
  store double %401, ptr %39, align 8
  %402 = load double, ptr %37, align 8
  %403 = load ptr, ptr %6, align 8
  %404 = getelementptr inbounds [3 x double], ptr %403, i64 1
  store double %402, ptr %404, align 8
  %405 = load double, ptr %38, align 8
  %406 = load double, ptr %39, align 8
  %407 = fmul double %406, f0x3FD9752E50F4B399
  %408 = fneg double %407
  %409 = call double @llvm.fmuladd.f64(double %405, double f0x3FED5C0357681EF3, double %408)
  %410 = load ptr, ptr %6, align 8
  %411 = getelementptr inbounds [3 x double], ptr %410, i64 1
  %412 = getelementptr inbounds [3 x double], ptr %411, i64 0, i64 1
  store double %409, ptr %412, align 8
  %413 = load double, ptr %38, align 8
  %414 = load double, ptr %39, align 8
  %415 = fmul double %414, f0x3FED5C0357681EF3
  %416 = call double @llvm.fmuladd.f64(double %413, double f0x3FD9752E50F4B399, double %415)
  %417 = load ptr, ptr %6, align 8
  %418 = getelementptr inbounds [3 x double], ptr %417, i64 1
  %419 = getelementptr inbounds [3 x double], ptr %418, i64 0, i64 2
  store double %416, ptr %419, align 8
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
  %6 = load double, ptr %5, align 8
  %7 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %8 = load double, ptr %7, align 8
  %9 = fmul double %8, %8
  %10 = call double @llvm.fmuladd.f64(double %6, double %6, double %9)
  %11 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %12, double %12, double %10)
  %14 = call double @sqrt(double noundef %13) #4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds double, ptr %15, i64 2
  store double %14, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 1
  %19 = load double, ptr %18, align 8
  %20 = load double, ptr %17, align 8
  %21 = call double @atan2(double noundef %19, double noundef %20) #4
  %22 = fmul double %21, f0x400E8EC8A4AEACC4
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = load double, ptr %24, align 8
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = fadd double %25, 2.400000e+01
  store double %28, ptr %24, align 8
  br label %29

29:                                               ; preds = %27, %2
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds [3 x double], ptr %30, i64 0, i64 2
  %32 = load double, ptr %31, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds double, ptr %33, i64 2
  %35 = load double, ptr %34, align 8
  %36 = fdiv double %32, %35
  %37 = call double @asin(double noundef %36) #4
  %38 = fmul double %37, f0x404CA5DC1A63C1F8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds double, ptr %39, i64 1
  store double %38, ptr %40, align 8
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
  br label %19

19:                                               ; preds = %28, %15
  %20 = phi i32 [ %29, %28 ], [ 1, %15 ]
  %21 = icmp slt i32 %20, %16
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %19
  %23 = load ptr, ptr %18, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 %20, ptr %6, align 4
  store i8 1, ptr %12, align 1
  br label %30

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %20, 1
  br label %19, !llvm.loop !10

.loopexit:                                        ; preds = %19
  store i32 %20, ptr %6, align 4
  br label %30

30:                                               ; preds = %.loopexit, %26
  br label %31

31:                                               ; preds = %30, %2
  store i32 0, ptr %6, align 4
  %32 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  %.promoted10 = load i32, ptr %7, align 4
  %.promoted12 = load i32, ptr %8, align 4
  br label %33

33:                                               ; preds = %55, %31
  %.lcssa37.lcssa13 = phi i32 [ %.lcssa37, %55 ], [ %.promoted12, %31 ]
  %.lcssa511 = phi i32 [ %38, %55 ], [ %.promoted10, %31 ]
  %34 = phi i32 [ %56, %55 ], [ 0, %31 ]
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  store double f0x4142B42C80000000, ptr %9, align 16
  store double 0.000000e+00, ptr %32, align 8
  br label %37

37:                                               ; preds = %52, %36
  %.lcssa37 = phi i32 [ %44, %52 ], [ %.lcssa37.lcssa13, %36 ]
  %38 = phi i32 [ %53, %52 ], [ 0, %36 ]
  %39 = icmp slt i32 %38, 36525
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load double, ptr %9, align 16
  %42 = fadd double %41, 1.000000e+00
  store double %42, ptr %9, align 16
  br label %43

43:                                               ; preds = %49, %40
  %44 = phi i32 [ %50, %49 ], [ 0, %40 ]
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  call void @planetpv(ptr noundef %9, i32 noundef %44, ptr noundef %10)
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %47
  call void @radecdist(ptr noundef %10, ptr noundef %48)
  br label %49

49:                                               ; preds = %46
  %50 = add nsw i32 %44, 1
  br label %43, !llvm.loop !11

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %38, 1
  br label %37, !llvm.loop !12

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = add nsw i32 %34, 1
  br label %33, !llvm.loop !13

57:                                               ; preds = %33
  store i32 %34, ptr %6, align 4
  store i32 %.lcssa511, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = phi i32 [ %71, %70 ], [ 0, %57 ]
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = getelementptr inbounds [3 x double], ptr %63, i64 0, i64 1
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds [3 x double], ptr %63, i64 0, i64 2
  %68 = load double, ptr %67, align 8
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %64, double noundef %66, double noundef %68)
  br label %70

70:                                               ; preds = %61
  %71 = add nsw i32 %59, 1
  br label %58, !llvm.loop !14

72:                                               ; preds = %58
  store i32 %59, ptr %8, align 4
  %73 = call ptr @__acrt_iob_func(i32 noundef 1)
  %74 = call i32 @fflush(ptr noundef %73)
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
