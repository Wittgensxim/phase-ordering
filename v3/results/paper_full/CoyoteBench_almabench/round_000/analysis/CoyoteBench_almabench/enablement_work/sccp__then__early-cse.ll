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
  %43 = getelementptr inbounds nuw double, ptr %40, i64 1
  %44 = load double, ptr %43, align 8
  %45 = fadd double %42, %44
  %46 = fdiv double %45, 3.652500e+05
  store double %46, ptr %8, align 8
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = getelementptr inbounds nuw [3 x double], ptr %49, i64 0, i64 1
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds nuw [3 x double], ptr %49, i64 0, i64 2
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %54, double %46, double %52)
  %56 = call double @llvm.fmuladd.f64(double %55, double %46, double %50)
  store double %56, ptr %9, align 8
  %57 = load i32, ptr %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = getelementptr inbounds nuw [3 x double], ptr %59, i64 0, i64 1
  %62 = load double, ptr %61, align 8
  %63 = getelementptr inbounds nuw [3 x double], ptr %59, i64 0, i64 2
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
  %74 = getelementptr inbounds nuw [3 x double], ptr %72, i64 0, i64 1
  %75 = load double, ptr %74, align 8
  %76 = getelementptr inbounds nuw [3 x double], ptr %72, i64 0, i64 2
  %77 = load double, ptr %76, align 8
  %78 = load double, ptr %8, align 8
  %79 = call double @llvm.fmuladd.f64(double %77, double %78, double %75)
  %80 = call double @llvm.fmuladd.f64(double %79, double %78, double %73)
  store double %80, ptr %11, align 8
  %81 = load i32, ptr %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = getelementptr inbounds nuw [3 x double], ptr %83, i64 0, i64 1
  %86 = load double, ptr %85, align 8
  %87 = getelementptr inbounds nuw [3 x double], ptr %83, i64 0, i64 2
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
  %99 = getelementptr inbounds nuw [3 x double], ptr %97, i64 0, i64 1
  %100 = load double, ptr %99, align 8
  %101 = getelementptr inbounds nuw [3 x double], ptr %97, i64 0, i64 2
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
  %112 = getelementptr inbounds nuw [3 x double], ptr %110, i64 0, i64 1
  %113 = load double, ptr %112, align 8
  %114 = getelementptr inbounds nuw [3 x double], ptr %110, i64 0, i64 2
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
  br label %124

124:                                              ; preds = %189, %3
  %125 = load i32, ptr %7, align 4
  %126 = icmp slt i32 %125, 8
  br i1 %126, label %127, label %192

127:                                              ; preds = %124
  %128 = load i32, ptr %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %129
  %131 = sext i32 %125 to i64
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

189:                                              ; preds = %127
  %190 = load i32, ptr %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %7, align 4
  br label %124, !llvm.loop !7

192:                                              ; preds = %124
  %193 = load i32, ptr %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %194
  %196 = getelementptr inbounds nuw [9 x double], ptr %195, i64 0, i64 8
  %197 = load double, ptr %196, align 8
  %198 = load double, ptr %15, align 8
  %199 = fmul double %197, %198
  store double %199, ptr %16, align 8
  %200 = load double, ptr %9, align 8
  %201 = load double, ptr %8, align 8
  %202 = load i32, ptr %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %203
  %205 = getelementptr inbounds nuw [9 x double], ptr %204, i64 0, i64 8
  %206 = load double, ptr %205, align 8
  %207 = call double @cos(double noundef %199) #4
  %208 = load i32, ptr %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %209
  %211 = getelementptr inbounds nuw [9 x double], ptr %210, i64 0, i64 8
  %212 = load double, ptr %211, align 8
  %213 = load double, ptr %16, align 8
  %214 = call double @sin(double noundef %213) #4
  %215 = fmul double %212, %214
  %216 = call double @llvm.fmuladd.f64(double %206, double %207, double %215)
  %217 = fmul double %201, %216
  %218 = call double @llvm.fmuladd.f64(double %217, double f0x3E7AD7F29ABCAF48, double %200)
  store double %218, ptr %9, align 8
  store i32 8, ptr %7, align 4
  br label %219

219:                                              ; preds = %254, %192
  %220 = load i32, ptr %7, align 4
  %221 = icmp sle i32 %220, 9
  br i1 %221, label %222, label %257

222:                                              ; preds = %219
  %223 = load i32, ptr %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %224
  %226 = sext i32 %220 to i64
  %227 = getelementptr inbounds [10 x double], ptr %225, i64 0, i64 %226
  %228 = load double, ptr %227, align 8
  %229 = load double, ptr %15, align 8
  %230 = fmul double %228, %229
  store double %230, ptr %17, align 8
  %231 = load double, ptr %10, align 8
  %232 = load double, ptr %8, align 8
  %233 = load i32, ptr %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %234
  %236 = load i32, ptr %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [10 x double], ptr %235, i64 0, i64 %237
  %239 = load double, ptr %238, align 8
  %240 = call double @cos(double noundef %230) #4
  %241 = load i32, ptr %5, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %242
  %244 = load i32, ptr %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [10 x double], ptr %243, i64 0, i64 %245
  %247 = load double, ptr %246, align 8
  %248 = load double, ptr %17, align 8
  %249 = call double @sin(double noundef %248) #4
  %250 = fmul double %247, %249
  %251 = call double @llvm.fmuladd.f64(double %239, double %240, double %250)
  %252 = fmul double %232, %251
  %253 = call double @llvm.fmuladd.f64(double %252, double f0x3E7AD7F29ABCAF48, double %231)
  store double %253, ptr %10, align 8
  br label %254

254:                                              ; preds = %222
  %255 = load i32, ptr %7, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %7, align 4
  br label %219, !llvm.loop !9

257:                                              ; preds = %219
  %258 = load double, ptr %10, align 8
  %259 = call double @fmod(double noundef %258, double noundef f0x401921FB54442D18) #4
  store double %259, ptr %10, align 8
  %260 = load double, ptr %12, align 8
  %261 = fsub double %259, %260
  store double %261, ptr %18, align 8
  %262 = load double, ptr %11, align 8
  %263 = call double @sin(double noundef %261) #4
  %264 = call double @llvm.fmuladd.f64(double %262, double %263, double %261)
  store double %264, ptr %19, align 8
  store i32 0, ptr %7, align 4
  br label %265

265:                                              ; preds = %288, %257
  %266 = load double, ptr %18, align 8
  %267 = load double, ptr %19, align 8
  %268 = fsub double %266, %267
  %269 = load double, ptr %11, align 8
  %270 = call double @sin(double noundef %267) #4
  %271 = call double @llvm.fmuladd.f64(double %269, double %270, double %268)
  %272 = load double, ptr %11, align 8
  %273 = load double, ptr %19, align 8
  %274 = call double @cos(double noundef %273) #4
  %275 = fneg double %272
  %276 = call double @llvm.fmuladd.f64(double %275, double %274, double 1.000000e+00)
  %277 = fdiv double %271, %276
  store double %277, ptr %20, align 8
  %278 = load double, ptr %19, align 8
  %279 = fadd double %278, %277
  store double %279, ptr %19, align 8
  %280 = load i32, ptr %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %7, align 4
  %282 = icmp sge i32 %281, 10
  br i1 %282, label %287, label %283

283:                                              ; preds = %265
  %284 = load double, ptr %20, align 8
  %285 = call double @llvm.fabs.f64(double %284)
  %286 = fcmp olt double %285, f0x3D719799812DEA11
  br i1 %286, label %287, label %288

287:                                              ; preds = %283, %265
  br label %289

288:                                              ; preds = %283
  br label %265

289:                                              ; preds = %287
  %290 = load double, ptr %19, align 8
  %291 = fdiv double %290, 2.000000e+00
  store double %291, ptr %21, align 8
  %292 = load double, ptr %11, align 8
  %293 = fadd double 1.000000e+00, %292
  %294 = fsub double 1.000000e+00, %292
  %295 = fdiv double %293, %294
  %296 = call double @sqrt(double noundef %295) #4
  %297 = load double, ptr %21, align 8
  %298 = call double @sin(double noundef %297) #4
  %299 = fmul double %296, %298
  %300 = load double, ptr %21, align 8
  %301 = call double @cos(double noundef %300) #4
  %302 = call double @atan2(double noundef %299, double noundef %301) #4
  %303 = fmul double 2.000000e+00, %302
  store double %303, ptr %22, align 8
  %304 = load double, ptr %9, align 8
  %305 = load double, ptr %11, align 8
  %306 = load double, ptr %19, align 8
  %307 = call double @cos(double noundef %306) #4
  %308 = fneg double %305
  %309 = call double @llvm.fmuladd.f64(double %308, double %307, double 1.000000e+00)
  %310 = fmul double %304, %309
  store double %310, ptr %23, align 8
  %311 = load i32, ptr %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %312
  %314 = load double, ptr %313, align 8
  %315 = fdiv double 1.000000e+00, %314
  %316 = fadd double 1.000000e+00, %315
  %317 = load double, ptr %9, align 8
  %318 = fmul double %317, %317
  %319 = fmul double %318, %317
  %320 = fdiv double %316, %319
  %321 = call double @sqrt(double noundef %320) #4
  %322 = fmul double f0x3F919D6D51A6B69A, %321
  store double %322, ptr %24, align 8
  %323 = load double, ptr %13, align 8
  %324 = fdiv double %323, 2.000000e+00
  %325 = call double @sin(double noundef %324) #4
  store double %325, ptr %25, align 8
  %326 = load double, ptr %14, align 8
  %327 = call double @cos(double noundef %326) #4
  %328 = fmul double %325, %327
  store double %328, ptr %26, align 8
  %329 = load double, ptr %25, align 8
  %330 = load double, ptr %14, align 8
  %331 = call double @sin(double noundef %330) #4
  %332 = fmul double %329, %331
  store double %332, ptr %27, align 8
  %333 = load double, ptr %22, align 8
  %334 = load double, ptr %12, align 8
  %335 = fadd double %333, %334
  store double %335, ptr %28, align 8
  %336 = call double @sin(double noundef %335) #4
  store double %336, ptr %29, align 8
  %337 = load double, ptr %28, align 8
  %338 = call double @cos(double noundef %337) #4
  store double %338, ptr %30, align 8
  %339 = load double, ptr %27, align 8
  %340 = load double, ptr %26, align 8
  %341 = load double, ptr %29, align 8
  %342 = fmul double %340, %341
  %343 = fneg double %342
  %344 = call double @llvm.fmuladd.f64(double %339, double %338, double %343)
  %345 = fmul double 2.000000e+00, %344
  store double %345, ptr %31, align 8
  %346 = load double, ptr %9, align 8
  %347 = load double, ptr %11, align 8
  %348 = fneg double %347
  %349 = call double @llvm.fmuladd.f64(double %348, double %347, double 1.000000e+00)
  %350 = call double @sqrt(double noundef %349) #4
  %351 = fdiv double %346, %350
  store double %351, ptr %32, align 8
  %352 = load double, ptr %13, align 8
  %353 = fdiv double %352, 2.000000e+00
  %354 = call double @cos(double noundef %353) #4
  store double %354, ptr %33, align 8
  %355 = load double, ptr %11, align 8
  %356 = load double, ptr %12, align 8
  %357 = call double @sin(double noundef %356) #4
  %358 = load double, ptr %29, align 8
  %359 = call double @llvm.fmuladd.f64(double %355, double %357, double %358)
  %360 = load double, ptr %32, align 8
  %361 = fmul double %359, %360
  store double %361, ptr %34, align 8
  %362 = load double, ptr %11, align 8
  %363 = load double, ptr %12, align 8
  %364 = call double @cos(double noundef %363) #4
  %365 = load double, ptr %30, align 8
  %366 = call double @llvm.fmuladd.f64(double %362, double %364, double %365)
  %367 = load double, ptr %32, align 8
  %368 = fmul double %366, %367
  store double %368, ptr %35, align 8
  %369 = load double, ptr %27, align 8
  %370 = fmul double 2.000000e+00, %369
  %371 = load double, ptr %26, align 8
  %372 = fmul double %370, %371
  store double %372, ptr %36, align 8
  %373 = load double, ptr %23, align 8
  %374 = load double, ptr %30, align 8
  %375 = load double, ptr %31, align 8
  %376 = load double, ptr %27, align 8
  %377 = fneg double %375
  %378 = call double @llvm.fmuladd.f64(double %377, double %376, double %374)
  %379 = fmul double %373, %378
  store double %379, ptr %37, align 8
  %380 = load double, ptr %23, align 8
  %381 = load double, ptr %29, align 8
  %382 = load double, ptr %31, align 8
  %383 = load double, ptr %26, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %383, double %381)
  %385 = fmul double %380, %384
  store double %385, ptr %38, align 8
  %386 = load double, ptr %23, align 8
  %387 = load double, ptr %31, align 8
  %388 = fneg double %387
  %389 = load double, ptr %33, align 8
  %390 = fmul double %388, %389
  %391 = fmul double %386, %390
  store double %391, ptr %39, align 8
  %392 = load double, ptr %37, align 8
  %393 = load ptr, ptr %6, align 8
  store double %392, ptr %393, align 8
  %394 = load double, ptr %38, align 8
  %395 = load double, ptr %39, align 8
  %396 = fmul double %395, f0x3FD9752E50F4B399
  %397 = fneg double %396
  %398 = call double @llvm.fmuladd.f64(double %394, double f0x3FED5C0357681EF3, double %397)
  %399 = load ptr, ptr %6, align 8
  %400 = getelementptr inbounds nuw [3 x double], ptr %399, i64 0, i64 1
  store double %398, ptr %400, align 8
  %401 = load double, ptr %38, align 8
  %402 = load double, ptr %39, align 8
  %403 = fmul double %402, f0x3FED5C0357681EF3
  %404 = call double @llvm.fmuladd.f64(double %401, double f0x3FD9752E50F4B399, double %403)
  %405 = load ptr, ptr %6, align 8
  %406 = getelementptr inbounds nuw [3 x double], ptr %405, i64 0, i64 2
  store double %404, ptr %406, align 8
  %407 = load double, ptr %24, align 8
  %408 = load double, ptr %27, align 8
  %409 = fmul double 2.000000e+00, %408
  %410 = call double @llvm.fmuladd.f64(double %409, double %408, double -1.000000e+00)
  %411 = load double, ptr %34, align 8
  %412 = load double, ptr %36, align 8
  %413 = load double, ptr %35, align 8
  %414 = fmul double %412, %413
  %415 = call double @llvm.fmuladd.f64(double %410, double %411, double %414)
  %416 = fmul double %407, %415
  store double %416, ptr %37, align 8
  %417 = load double, ptr %24, align 8
  %418 = load double, ptr %26, align 8
  %419 = fmul double 2.000000e+00, %418
  %420 = fneg double %419
  %421 = call double @llvm.fmuladd.f64(double %420, double %418, double 1.000000e+00)
  %422 = load double, ptr %35, align 8
  %423 = load double, ptr %36, align 8
  %424 = load double, ptr %34, align 8
  %425 = fmul double %423, %424
  %426 = fneg double %425
  %427 = call double @llvm.fmuladd.f64(double %421, double %422, double %426)
  %428 = fmul double %417, %427
  store double %428, ptr %38, align 8
  %429 = load double, ptr %24, align 8
  %430 = load double, ptr %33, align 8
  %431 = fmul double 2.000000e+00, %430
  %432 = load double, ptr %27, align 8
  %433 = load double, ptr %34, align 8
  %434 = load double, ptr %26, align 8
  %435 = load double, ptr %35, align 8
  %436 = fmul double %434, %435
  %437 = call double @llvm.fmuladd.f64(double %432, double %433, double %436)
  %438 = fmul double %431, %437
  %439 = fmul double %429, %438
  store double %439, ptr %39, align 8
  %440 = load double, ptr %37, align 8
  %441 = load ptr, ptr %6, align 8
  %442 = getelementptr inbounds nuw [3 x double], ptr %441, i64 1
  store double %440, ptr %442, align 8
  %443 = load double, ptr %38, align 8
  %444 = load double, ptr %39, align 8
  %445 = fmul double %444, f0x3FD9752E50F4B399
  %446 = fneg double %445
  %447 = call double @llvm.fmuladd.f64(double %443, double f0x3FED5C0357681EF3, double %446)
  %448 = load ptr, ptr %6, align 8
  %449 = getelementptr inbounds nuw [3 x double], ptr %448, i64 1
  %450 = getelementptr inbounds nuw [3 x double], ptr %449, i64 0, i64 1
  store double %447, ptr %450, align 8
  %451 = load double, ptr %38, align 8
  %452 = load double, ptr %39, align 8
  %453 = fmul double %452, f0x3FED5C0357681EF3
  %454 = call double @llvm.fmuladd.f64(double %451, double f0x3FD9752E50F4B399, double %453)
  %455 = load ptr, ptr %6, align 8
  %456 = getelementptr inbounds nuw [3 x double], ptr %455, i64 1
  %457 = getelementptr inbounds nuw [3 x double], ptr %456, i64 0, i64 2
  store double %454, ptr %457, align 8
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
  %7 = getelementptr inbounds nuw [3 x double], ptr %5, i64 0, i64 1
  %8 = load double, ptr %7, align 8
  %9 = fmul double %8, %8
  %10 = call double @llvm.fmuladd.f64(double %6, double %6, double %9)
  %11 = getelementptr inbounds nuw [3 x double], ptr %5, i64 0, i64 2
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %12, double %12, double %10)
  %14 = call double @sqrt(double noundef %13) #4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw double, ptr %15, i64 2
  store double %14, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw [3 x double], ptr %17, i64 0, i64 1
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
  %31 = getelementptr inbounds nuw [3 x double], ptr %30, i64 0, i64 2
  %32 = load double, ptr %31, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw double, ptr %33, i64 2
  %35 = load double, ptr %34, align 8
  %36 = fdiv double %32, %35
  %37 = call double @asin(double noundef %36) #4
  %38 = fmul double %37, f0x404CA5DC1A63C1F8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds nuw double, ptr %39, i64 1
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
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds nuw ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i8 1, ptr %12, align 1
  br label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %6, align 4
  br label %16, !llvm.loop !10

31:                                               ; preds = %26, %16
  br label %32

32:                                               ; preds = %31, %2
  store i32 0, ptr %6, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, ptr %6, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  store double f0x4142B42C80000000, ptr %9, align 16
  %37 = getelementptr inbounds nuw [2 x double], ptr %9, i64 0, i64 1
  store double 0.000000e+00, ptr %37, align 8
  store i32 0, ptr %7, align 4
  br label %38

38:                                               ; preds = %55, %36
  %39 = load i32, ptr %7, align 4
  %40 = icmp slt i32 %39, 36525
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load double, ptr %9, align 16
  %43 = fadd double %42, 1.000000e+00
  store double %43, ptr %9, align 16
  store i32 0, ptr %8, align 4
  br label %44

44:                                               ; preds = %51, %41
  %45 = load i32, ptr %8, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  call void @planetpv(ptr noundef %9, i32 noundef %45, ptr noundef %10)
  %48 = load i32, ptr %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %49
  call void @radecdist(ptr noundef %10, ptr noundef %50)
  br label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %8, align 4
  br label %44, !llvm.loop !11

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %7, align 4
  br label %38, !llvm.loop !12

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %6, align 4
  br label %33, !llvm.loop !13

62:                                               ; preds = %33
  store i32 0, ptr %8, align 4
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, ptr %8, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = sext i32 %64 to i64
  %68 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = getelementptr inbounds nuw [3 x double], ptr %68, i64 0, i64 1
  %71 = load double, ptr %70, align 8
  %72 = getelementptr inbounds nuw [3 x double], ptr %68, i64 0, i64 2
  %73 = load double, ptr %72, align 8
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %69, double noundef %71, double noundef %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, ptr %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %8, align 4
  br label %63, !llvm.loop !14

78:                                               ; preds = %63
  %79 = call ptr @__acrt_iob_func(i32 noundef 1)
  %80 = call i32 @fflush(ptr noundef %79)
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
