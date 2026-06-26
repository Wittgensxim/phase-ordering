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
  %124 = load i32, ptr %7, align 4
  %125 = icmp slt i32 %124, 8
  br i1 %125, label %.lr.ph, label %194

.lr.ph:                                           ; preds = %3
  br label %126

126:                                              ; preds = %.lr.ph, %189
  %127 = phi i32 [ %124, %.lr.ph ], [ %192, %189 ]
  %128 = load i32, ptr %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %129
  %131 = sext i32 %127 to i64
  %132 = getelementptr inbounds [9 x double], ptr %130, i64 0, i64 %131
  %133 = load double, ptr %132, align 8
  %134 = load double, ptr %15, align 8
  %135 = fmul double %133, %134
  store double %135, ptr %16, align 8
  %136 = load i32, ptr %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %137
  %139 = load i32, ptr %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [10 x double], ptr %138, i64 0, i64 %140
  %142 = load double, ptr %141, align 8
  %143 = load double, ptr %15, align 8
  %144 = fmul double %142, %143
  store double %144, ptr %17, align 8
  %145 = load double, ptr %9, align 8
  %146 = load i32, ptr %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %147
  %149 = load i32, ptr %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [9 x double], ptr %148, i64 0, i64 %150
  %152 = load double, ptr %151, align 8
  %153 = load double, ptr %16, align 8
  %154 = call double @cos(double noundef %153) #4
  %155 = load i32, ptr %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %156
  %158 = load i32, ptr %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [9 x double], ptr %157, i64 0, i64 %159
  %161 = load double, ptr %160, align 8
  %162 = load double, ptr %16, align 8
  %163 = call double @sin(double noundef %162) #4
  %164 = fmul double %161, %163
  %165 = call double @llvm.fmuladd.f64(double %152, double %154, double %164)
  %166 = call double @llvm.fmuladd.f64(double %165, double f0x3E7AD7F29ABCAF48, double %145)
  store double %166, ptr %9, align 8
  %167 = load double, ptr %10, align 8
  %168 = load i32, ptr %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %169
  %171 = load i32, ptr %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [10 x double], ptr %170, i64 0, i64 %172
  %174 = load double, ptr %173, align 8
  %175 = load double, ptr %17, align 8
  %176 = call double @cos(double noundef %175) #4
  %177 = load i32, ptr %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %178
  %180 = load i32, ptr %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [10 x double], ptr %179, i64 0, i64 %181
  %183 = load double, ptr %182, align 8
  %184 = load double, ptr %17, align 8
  %185 = call double @sin(double noundef %184) #4
  %186 = fmul double %183, %185
  %187 = call double @llvm.fmuladd.f64(double %174, double %176, double %186)
  %188 = call double @llvm.fmuladd.f64(double %187, double f0x3E7AD7F29ABCAF48, double %167)
  store double %188, ptr %10, align 8
  br label %189

189:                                              ; preds = %126
  %190 = load i32, ptr %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %7, align 4
  %192 = load i32, ptr %7, align 4
  %193 = icmp slt i32 %192, 8
  br i1 %193, label %126, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %189
  br label %194

194:                                              ; preds = %._crit_edge, %3
  %195 = load i32, ptr %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %196
  %198 = getelementptr inbounds [9 x double], ptr %197, i64 0, i64 8
  %199 = load double, ptr %198, align 8
  %200 = load double, ptr %15, align 8
  %201 = fmul double %199, %200
  store double %201, ptr %16, align 8
  %202 = load double, ptr %9, align 8
  %203 = load double, ptr %8, align 8
  %204 = load i32, ptr %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %205
  %207 = getelementptr inbounds [9 x double], ptr %206, i64 0, i64 8
  %208 = load double, ptr %207, align 8
  %209 = call double @cos(double noundef %201) #4
  %210 = load i32, ptr %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %211
  %213 = getelementptr inbounds [9 x double], ptr %212, i64 0, i64 8
  %214 = load double, ptr %213, align 8
  %215 = load double, ptr %16, align 8
  %216 = call double @sin(double noundef %215) #4
  %217 = fmul double %214, %216
  %218 = call double @llvm.fmuladd.f64(double %208, double %209, double %217)
  %219 = fmul double %203, %218
  %220 = call double @llvm.fmuladd.f64(double %219, double f0x3E7AD7F29ABCAF48, double %202)
  store double %220, ptr %9, align 8
  store i32 8, ptr %7, align 4
  %221 = load i32, ptr %7, align 4
  %222 = icmp sle i32 %221, 9
  br i1 %222, label %.lr.ph2, label %261

.lr.ph2:                                          ; preds = %194
  br label %223

223:                                              ; preds = %.lr.ph2, %256
  %224 = phi i32 [ %221, %.lr.ph2 ], [ %259, %256 ]
  %225 = load i32, ptr %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %226
  %228 = sext i32 %224 to i64
  %229 = getelementptr inbounds [10 x double], ptr %227, i64 0, i64 %228
  %230 = load double, ptr %229, align 8
  %231 = load double, ptr %15, align 8
  %232 = fmul double %230, %231
  store double %232, ptr %17, align 8
  %233 = load double, ptr %10, align 8
  %234 = load double, ptr %8, align 8
  %235 = load i32, ptr %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %236
  %238 = load i32, ptr %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [10 x double], ptr %237, i64 0, i64 %239
  %241 = load double, ptr %240, align 8
  %242 = call double @cos(double noundef %232) #4
  %243 = load i32, ptr %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %244
  %246 = load i32, ptr %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [10 x double], ptr %245, i64 0, i64 %247
  %249 = load double, ptr %248, align 8
  %250 = load double, ptr %17, align 8
  %251 = call double @sin(double noundef %250) #4
  %252 = fmul double %249, %251
  %253 = call double @llvm.fmuladd.f64(double %241, double %242, double %252)
  %254 = fmul double %234, %253
  %255 = call double @llvm.fmuladd.f64(double %254, double f0x3E7AD7F29ABCAF48, double %233)
  store double %255, ptr %10, align 8
  br label %256

256:                                              ; preds = %223
  %257 = load i32, ptr %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %7, align 4
  %259 = load i32, ptr %7, align 4
  %260 = icmp sle i32 %259, 9
  br i1 %260, label %223, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %256
  br label %261

261:                                              ; preds = %._crit_edge3, %194
  %262 = load double, ptr %10, align 8
  %263 = call double @fmod(double noundef %262, double noundef f0x401921FB54442D18) #4
  store double %263, ptr %10, align 8
  %264 = load double, ptr %12, align 8
  %265 = fsub double %263, %264
  store double %265, ptr %18, align 8
  %266 = load double, ptr %11, align 8
  %267 = call double @sin(double noundef %265) #4
  %268 = call double @llvm.fmuladd.f64(double %266, double %267, double %265)
  store double %268, ptr %19, align 8
  store i32 0, ptr %7, align 4
  br label %269

269:                                              ; preds = %287, %261
  %270 = load double, ptr %18, align 8
  %271 = load double, ptr %19, align 8
  %272 = fsub double %270, %271
  %273 = load double, ptr %11, align 8
  %274 = call double @sin(double noundef %271) #4
  %275 = call double @llvm.fmuladd.f64(double %273, double %274, double %272)
  %276 = load double, ptr %11, align 8
  %277 = load double, ptr %19, align 8
  %278 = call double @cos(double noundef %277) #4
  %279 = fneg double %276
  %280 = call double @llvm.fmuladd.f64(double %279, double %278, double 1.000000e+00)
  %281 = fdiv double %275, %280
  store double %281, ptr %20, align 8
  %282 = load double, ptr %19, align 8
  %283 = fadd double %282, %281
  store double %283, ptr %19, align 8
  %284 = load i32, ptr %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr %7, align 4
  %286 = icmp sge i32 %285, 10
  br i1 %286, label %291, label %287

287:                                              ; preds = %269
  %288 = load double, ptr %20, align 8
  %289 = call double @llvm.fabs.f64(double %288)
  %290 = fcmp olt double %289, f0x3D719799812DEA11
  br i1 %290, label %291, label %269

291:                                              ; preds = %287, %269
  br label %292

292:                                              ; preds = %291
  %293 = load double, ptr %19, align 8
  %294 = fdiv double %293, 2.000000e+00
  store double %294, ptr %21, align 8
  %295 = load double, ptr %11, align 8
  %296 = fadd double 1.000000e+00, %295
  %297 = fsub double 1.000000e+00, %295
  %298 = fdiv double %296, %297
  %299 = call double @sqrt(double noundef %298) #4
  %300 = load double, ptr %21, align 8
  %301 = call double @sin(double noundef %300) #4
  %302 = fmul double %299, %301
  %303 = load double, ptr %21, align 8
  %304 = call double @cos(double noundef %303) #4
  %305 = call double @atan2(double noundef %302, double noundef %304) #4
  %306 = fmul double 2.000000e+00, %305
  store double %306, ptr %22, align 8
  %307 = load double, ptr %9, align 8
  %308 = load double, ptr %11, align 8
  %309 = load double, ptr %19, align 8
  %310 = call double @cos(double noundef %309) #4
  %311 = fneg double %308
  %312 = call double @llvm.fmuladd.f64(double %311, double %310, double 1.000000e+00)
  %313 = fmul double %307, %312
  store double %313, ptr %23, align 8
  %314 = load i32, ptr %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %315
  %317 = load double, ptr %316, align 8
  %318 = fdiv double 1.000000e+00, %317
  %319 = fadd double 1.000000e+00, %318
  %320 = load double, ptr %9, align 8
  %321 = fmul double %320, %320
  %322 = fmul double %321, %320
  %323 = fdiv double %319, %322
  %324 = call double @sqrt(double noundef %323) #4
  %325 = fmul double f0x3F919D6D51A6B69A, %324
  store double %325, ptr %24, align 8
  %326 = load double, ptr %13, align 8
  %327 = fdiv double %326, 2.000000e+00
  %328 = call double @sin(double noundef %327) #4
  store double %328, ptr %25, align 8
  %329 = load double, ptr %14, align 8
  %330 = call double @cos(double noundef %329) #4
  %331 = fmul double %328, %330
  store double %331, ptr %26, align 8
  %332 = load double, ptr %25, align 8
  %333 = load double, ptr %14, align 8
  %334 = call double @sin(double noundef %333) #4
  %335 = fmul double %332, %334
  store double %335, ptr %27, align 8
  %336 = load double, ptr %22, align 8
  %337 = load double, ptr %12, align 8
  %338 = fadd double %336, %337
  store double %338, ptr %28, align 8
  %339 = call double @sin(double noundef %338) #4
  store double %339, ptr %29, align 8
  %340 = load double, ptr %28, align 8
  %341 = call double @cos(double noundef %340) #4
  store double %341, ptr %30, align 8
  %342 = load double, ptr %27, align 8
  %343 = load double, ptr %26, align 8
  %344 = load double, ptr %29, align 8
  %345 = fmul double %343, %344
  %346 = fneg double %345
  %347 = call double @llvm.fmuladd.f64(double %342, double %341, double %346)
  %348 = fmul double 2.000000e+00, %347
  store double %348, ptr %31, align 8
  %349 = load double, ptr %9, align 8
  %350 = load double, ptr %11, align 8
  %351 = fneg double %350
  %352 = call double @llvm.fmuladd.f64(double %351, double %350, double 1.000000e+00)
  %353 = call double @sqrt(double noundef %352) #4
  %354 = fdiv double %349, %353
  store double %354, ptr %32, align 8
  %355 = load double, ptr %13, align 8
  %356 = fdiv double %355, 2.000000e+00
  %357 = call double @cos(double noundef %356) #4
  store double %357, ptr %33, align 8
  %358 = load double, ptr %11, align 8
  %359 = load double, ptr %12, align 8
  %360 = call double @sin(double noundef %359) #4
  %361 = load double, ptr %29, align 8
  %362 = call double @llvm.fmuladd.f64(double %358, double %360, double %361)
  %363 = load double, ptr %32, align 8
  %364 = fmul double %362, %363
  store double %364, ptr %34, align 8
  %365 = load double, ptr %11, align 8
  %366 = load double, ptr %12, align 8
  %367 = call double @cos(double noundef %366) #4
  %368 = load double, ptr %30, align 8
  %369 = call double @llvm.fmuladd.f64(double %365, double %367, double %368)
  %370 = load double, ptr %32, align 8
  %371 = fmul double %369, %370
  store double %371, ptr %35, align 8
  %372 = load double, ptr %27, align 8
  %373 = fmul double 2.000000e+00, %372
  %374 = load double, ptr %26, align 8
  %375 = fmul double %373, %374
  store double %375, ptr %36, align 8
  %376 = load double, ptr %23, align 8
  %377 = load double, ptr %30, align 8
  %378 = load double, ptr %31, align 8
  %379 = load double, ptr %27, align 8
  %380 = fneg double %378
  %381 = call double @llvm.fmuladd.f64(double %380, double %379, double %377)
  %382 = fmul double %376, %381
  store double %382, ptr %37, align 8
  %383 = load double, ptr %23, align 8
  %384 = load double, ptr %29, align 8
  %385 = load double, ptr %31, align 8
  %386 = load double, ptr %26, align 8
  %387 = call double @llvm.fmuladd.f64(double %385, double %386, double %384)
  %388 = fmul double %383, %387
  store double %388, ptr %38, align 8
  %389 = load double, ptr %23, align 8
  %390 = load double, ptr %31, align 8
  %391 = fneg double %390
  %392 = load double, ptr %33, align 8
  %393 = fmul double %391, %392
  %394 = fmul double %389, %393
  store double %394, ptr %39, align 8
  %395 = load double, ptr %37, align 8
  %396 = load ptr, ptr %6, align 8
  store double %395, ptr %396, align 8
  %397 = load double, ptr %38, align 8
  %398 = load double, ptr %39, align 8
  %399 = fmul double %398, f0x3FD9752E50F4B399
  %400 = fneg double %399
  %401 = call double @llvm.fmuladd.f64(double %397, double f0x3FED5C0357681EF3, double %400)
  %402 = load ptr, ptr %6, align 8
  %403 = getelementptr inbounds [3 x double], ptr %402, i64 0, i64 1
  store double %401, ptr %403, align 8
  %404 = load double, ptr %38, align 8
  %405 = load double, ptr %39, align 8
  %406 = fmul double %405, f0x3FED5C0357681EF3
  %407 = call double @llvm.fmuladd.f64(double %404, double f0x3FD9752E50F4B399, double %406)
  %408 = load ptr, ptr %6, align 8
  %409 = getelementptr inbounds [3 x double], ptr %408, i64 0, i64 2
  store double %407, ptr %409, align 8
  %410 = load double, ptr %24, align 8
  %411 = load double, ptr %27, align 8
  %412 = fmul double 2.000000e+00, %411
  %413 = call double @llvm.fmuladd.f64(double %412, double %411, double -1.000000e+00)
  %414 = load double, ptr %34, align 8
  %415 = load double, ptr %36, align 8
  %416 = load double, ptr %35, align 8
  %417 = fmul double %415, %416
  %418 = call double @llvm.fmuladd.f64(double %413, double %414, double %417)
  %419 = fmul double %410, %418
  store double %419, ptr %37, align 8
  %420 = load double, ptr %24, align 8
  %421 = load double, ptr %26, align 8
  %422 = fmul double 2.000000e+00, %421
  %423 = fneg double %422
  %424 = call double @llvm.fmuladd.f64(double %423, double %421, double 1.000000e+00)
  %425 = load double, ptr %35, align 8
  %426 = load double, ptr %36, align 8
  %427 = load double, ptr %34, align 8
  %428 = fmul double %426, %427
  %429 = fneg double %428
  %430 = call double @llvm.fmuladd.f64(double %424, double %425, double %429)
  %431 = fmul double %420, %430
  store double %431, ptr %38, align 8
  %432 = load double, ptr %24, align 8
  %433 = load double, ptr %33, align 8
  %434 = fmul double 2.000000e+00, %433
  %435 = load double, ptr %27, align 8
  %436 = load double, ptr %34, align 8
  %437 = load double, ptr %26, align 8
  %438 = load double, ptr %35, align 8
  %439 = fmul double %437, %438
  %440 = call double @llvm.fmuladd.f64(double %435, double %436, double %439)
  %441 = fmul double %434, %440
  %442 = fmul double %432, %441
  store double %442, ptr %39, align 8
  %443 = load double, ptr %37, align 8
  %444 = load ptr, ptr %6, align 8
  %445 = getelementptr inbounds [3 x double], ptr %444, i64 1
  store double %443, ptr %445, align 8
  %446 = load double, ptr %38, align 8
  %447 = load double, ptr %39, align 8
  %448 = fmul double %447, f0x3FD9752E50F4B399
  %449 = fneg double %448
  %450 = call double @llvm.fmuladd.f64(double %446, double f0x3FED5C0357681EF3, double %449)
  %451 = load ptr, ptr %6, align 8
  %452 = getelementptr inbounds [3 x double], ptr %451, i64 1
  %453 = getelementptr inbounds [3 x double], ptr %452, i64 0, i64 1
  store double %450, ptr %453, align 8
  %454 = load double, ptr %38, align 8
  %455 = load double, ptr %39, align 8
  %456 = fmul double %455, f0x3FED5C0357681EF3
  %457 = call double @llvm.fmuladd.f64(double %454, double f0x3FD9752E50F4B399, double %456)
  %458 = load ptr, ptr %6, align 8
  %459 = getelementptr inbounds [3 x double], ptr %458, i64 1
  %460 = getelementptr inbounds [3 x double], ptr %459, i64 0, i64 2
  store double %457, ptr %460, align 8
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
  br i1 %36, label %.lr.ph6, label %68

.lr.ph6:                                          ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph6, %63
  store double f0x4142B42C80000000, ptr %9, align 16
  %38 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  store double 0.000000e+00, ptr %38, align 8
  store i32 0, ptr %7, align 4
  %39 = load i32, ptr %7, align 4
  %40 = icmp slt i32 %39, 36525
  br i1 %40, label %.lr.ph3, label %62

.lr.ph3:                                          ; preds = %37
  br label %41

41:                                               ; preds = %.lr.ph3, %57
  %42 = load double, ptr %9, align 16
  %43 = fadd double %42, 1.000000e+00
  store double %43, ptr %9, align 16
  store i32 0, ptr %8, align 4
  %44 = load i32, ptr %8, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %.lr.ph1, label %56

.lr.ph1:                                          ; preds = %41
  br label %46

46:                                               ; preds = %.lr.ph1, %51
  %47 = phi i32 [ %44, %.lr.ph1 ], [ %54, %51 ]
  call void @planetpv(ptr noundef %9, i32 noundef %47, ptr noundef %10)
  %48 = load i32, ptr %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %49
  call void @radecdist(ptr noundef %10, ptr noundef %50)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %8, align 4
  %54 = load i32, ptr %8, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %46, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %7, align 4
  %60 = load i32, ptr %7, align 4
  %61 = icmp slt i32 %60, 36525
  br i1 %61, label %41, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %57
  br label %62

62:                                               ; preds = %._crit_edge4, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %6, align 4
  %66 = load i32, ptr %6, align 4
  %67 = icmp slt i32 %66, 20
  br i1 %67, label %37, label %._crit_edge7, !llvm.loop !13

._crit_edge7:                                     ; preds = %63
  br label %68

68:                                               ; preds = %._crit_edge7, %34
  store i32 0, ptr %8, align 4
  %69 = load i32, ptr %8, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %.lr.ph9, label %86

.lr.ph9:                                          ; preds = %68
  br label %71

71:                                               ; preds = %.lr.ph9, %81
  %72 = phi i32 [ %69, %.lr.ph9 ], [ %84, %81 ]
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = getelementptr inbounds [3 x double], ptr %74, i64 0, i64 1
  %77 = load double, ptr %76, align 8
  %78 = getelementptr inbounds [3 x double], ptr %74, i64 0, i64 2
  %79 = load double, ptr %78, align 8
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %75, double noundef %77, double noundef %79)
  br label %81

81:                                               ; preds = %71
  %82 = load i32, ptr %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %8, align 4
  %84 = load i32, ptr %8, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %71, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %81
  br label %86

86:                                               ; preds = %._crit_edge10, %68
  %87 = call ptr @__acrt_iob_func(i32 noundef 1)
  %88 = call i32 @fflush(ptr noundef %87)
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
