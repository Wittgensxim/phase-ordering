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
  %128 = load i32, ptr %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %129
  %131 = load double, ptr %15, align 8
  %132 = load i32, ptr %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %133
  %135 = load i32, ptr %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %136
  %138 = load i32, ptr %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %139
  %141 = load i32, ptr %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %142
  %.promoted = load i32, ptr %7, align 4
  %.promoted1 = load double, ptr %16, align 8
  %.promoted3 = load double, ptr %17, align 8
  %.promoted5 = load double, ptr %9, align 8
  %.promoted7 = load double, ptr %10, align 8
  br label %144

144:                                              ; preds = %182, %3
  %145 = phi double [ %181, %182 ], [ %.promoted7, %3 ]
  %146 = phi double [ %170, %182 ], [ %.promoted5, %3 ]
  %147 = phi double [ %159, %182 ], [ %.promoted3, %3 ]
  %148 = phi double [ %155, %182 ], [ %.promoted1, %3 ]
  %149 = phi i32 [ %183, %182 ], [ %.promoted, %3 ]
  %150 = icmp slt i32 %149, 8
  br i1 %150, label %151, label %184

151:                                              ; preds = %144
  %152 = sext i32 %149 to i64
  %153 = getelementptr inbounds [9 x double], ptr %126, i64 0, i64 %152
  %154 = load double, ptr %153, align 8
  %155 = fmul double %154, %127
  %156 = sext i32 %149 to i64
  %157 = getelementptr inbounds [10 x double], ptr %130, i64 0, i64 %156
  %158 = load double, ptr %157, align 8
  %159 = fmul double %158, %131
  %160 = sext i32 %149 to i64
  %161 = getelementptr inbounds [9 x double], ptr %134, i64 0, i64 %160
  %162 = load double, ptr %161, align 8
  %163 = call double @cos(double noundef %155) #4
  %164 = sext i32 %149 to i64
  %165 = getelementptr inbounds [9 x double], ptr %137, i64 0, i64 %164
  %166 = load double, ptr %165, align 8
  %167 = call double @sin(double noundef %155) #4
  %168 = fmul double %166, %167
  %169 = call double @llvm.fmuladd.f64(double %162, double %163, double %168)
  %170 = call double @llvm.fmuladd.f64(double %169, double f0x3E7AD7F29ABCAF48, double %146)
  %171 = sext i32 %149 to i64
  %172 = getelementptr inbounds [10 x double], ptr %140, i64 0, i64 %171
  %173 = load double, ptr %172, align 8
  %174 = call double @cos(double noundef %159) #4
  %175 = sext i32 %149 to i64
  %176 = getelementptr inbounds [10 x double], ptr %143, i64 0, i64 %175
  %177 = load double, ptr %176, align 8
  %178 = call double @sin(double noundef %159) #4
  %179 = fmul double %177, %178
  %180 = call double @llvm.fmuladd.f64(double %173, double %174, double %179)
  %181 = call double @llvm.fmuladd.f64(double %180, double f0x3E7AD7F29ABCAF48, double %145)
  br label %182

182:                                              ; preds = %151
  %183 = add nsw i32 %149, 1
  br label %144, !llvm.loop !7

184:                                              ; preds = %144
  %.lcssa8 = phi double [ %145, %144 ]
  %.lcssa6 = phi double [ %146, %144 ]
  %.lcssa4 = phi double [ %147, %144 ]
  %.lcssa2 = phi double [ %148, %144 ]
  %.lcssa = phi i32 [ %149, %144 ]
  store i32 %.lcssa, ptr %7, align 4
  store double %.lcssa2, ptr %16, align 8
  store double %.lcssa4, ptr %17, align 8
  store double %.lcssa6, ptr %9, align 8
  store double %.lcssa8, ptr %10, align 8
  %185 = load i32, ptr %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %186
  %188 = getelementptr inbounds [9 x double], ptr %187, i64 0, i64 8
  %189 = load double, ptr %188, align 8
  %190 = load double, ptr %15, align 8
  %191 = fmul double %189, %190
  store double %191, ptr %16, align 8
  %192 = load double, ptr %9, align 8
  %193 = load double, ptr %8, align 8
  %194 = load i32, ptr %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %195
  %197 = getelementptr inbounds [9 x double], ptr %196, i64 0, i64 8
  %198 = load double, ptr %197, align 8
  %199 = call double @cos(double noundef %191) #4
  %200 = load i32, ptr %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %201
  %203 = getelementptr inbounds [9 x double], ptr %202, i64 0, i64 8
  %204 = load double, ptr %203, align 8
  %205 = load double, ptr %16, align 8
  %206 = call double @sin(double noundef %205) #4
  %207 = fmul double %204, %206
  %208 = call double @llvm.fmuladd.f64(double %198, double %199, double %207)
  %209 = fmul double %193, %208
  %210 = call double @llvm.fmuladd.f64(double %209, double f0x3E7AD7F29ABCAF48, double %192)
  store double %210, ptr %9, align 8
  store i32 8, ptr %7, align 4
  %211 = load i32, ptr %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %212
  %214 = load double, ptr %15, align 8
  %215 = load double, ptr %8, align 8
  %216 = load i32, ptr %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %217
  %219 = load i32, ptr %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %220
  %.promoted9 = load i32, ptr %7, align 4
  %.promoted11 = load double, ptr %17, align 8
  %.promoted13 = load double, ptr %10, align 8
  br label %222

222:                                              ; preds = %244, %184
  %223 = phi double [ %243, %244 ], [ %.promoted13, %184 ]
  %224 = phi double [ %231, %244 ], [ %.promoted11, %184 ]
  %225 = phi i32 [ %245, %244 ], [ %.promoted9, %184 ]
  %226 = icmp sle i32 %225, 9
  br i1 %226, label %227, label %246

227:                                              ; preds = %222
  %228 = sext i32 %225 to i64
  %229 = getelementptr inbounds [10 x double], ptr %213, i64 0, i64 %228
  %230 = load double, ptr %229, align 8
  %231 = fmul double %230, %214
  %232 = sext i32 %225 to i64
  %233 = getelementptr inbounds [10 x double], ptr %218, i64 0, i64 %232
  %234 = load double, ptr %233, align 8
  %235 = call double @cos(double noundef %231) #4
  %236 = sext i32 %225 to i64
  %237 = getelementptr inbounds [10 x double], ptr %221, i64 0, i64 %236
  %238 = load double, ptr %237, align 8
  %239 = call double @sin(double noundef %231) #4
  %240 = fmul double %238, %239
  %241 = call double @llvm.fmuladd.f64(double %234, double %235, double %240)
  %242 = fmul double %215, %241
  %243 = call double @llvm.fmuladd.f64(double %242, double f0x3E7AD7F29ABCAF48, double %223)
  br label %244

244:                                              ; preds = %227
  %245 = add nsw i32 %225, 1
  br label %222, !llvm.loop !9

246:                                              ; preds = %222
  %.lcssa14 = phi double [ %223, %222 ]
  %.lcssa12 = phi double [ %224, %222 ]
  %.lcssa10 = phi i32 [ %225, %222 ]
  store i32 %.lcssa10, ptr %7, align 4
  store double %.lcssa12, ptr %17, align 8
  store double %.lcssa14, ptr %10, align 8
  %247 = load double, ptr %10, align 8
  %248 = call double @fmod(double noundef %247, double noundef f0x401921FB54442D18) #4
  store double %248, ptr %10, align 8
  %249 = load double, ptr %12, align 8
  %250 = fsub double %248, %249
  store double %250, ptr %18, align 8
  %251 = load double, ptr %11, align 8
  %252 = call double @sin(double noundef %250) #4
  %253 = call double @llvm.fmuladd.f64(double %251, double %252, double %250)
  store double %253, ptr %19, align 8
  store i32 0, ptr %7, align 4
  %254 = load double, ptr %18, align 8
  %255 = load double, ptr %11, align 8
  %256 = load double, ptr %11, align 8
  %257 = fneg double %256
  %.promoted15 = load double, ptr %19, align 8
  %.promoted19 = load i32, ptr %7, align 4
  br label %258

258:                                              ; preds = %274, %246
  %259 = phi i32 [ %268, %274 ], [ %.promoted19, %246 ]
  %260 = phi double [ %267, %274 ], [ %.promoted15, %246 ]
  %261 = fsub double %254, %260
  %262 = call double @sin(double noundef %260) #4
  %263 = call double @llvm.fmuladd.f64(double %255, double %262, double %261)
  %264 = call double @cos(double noundef %260) #4
  %265 = call double @llvm.fmuladd.f64(double %257, double %264, double 1.000000e+00)
  %266 = fdiv double %263, %265
  %267 = fadd double %260, %266
  %268 = add nsw i32 %259, 1
  %269 = icmp sge i32 %268, 10
  br i1 %269, label %273, label %270

270:                                              ; preds = %258
  %271 = call double @llvm.fabs.f64(double %266)
  %272 = fcmp olt double %271, f0x3D719799812DEA11
  br i1 %272, label %273, label %274

273:                                              ; preds = %270, %258
  %.lcssa20 = phi i32 [ %268, %270 ], [ %268, %258 ]
  %.lcssa18 = phi double [ %266, %270 ], [ %266, %258 ]
  %.lcssa16 = phi double [ %267, %270 ], [ %267, %258 ]
  store double %.lcssa16, ptr %19, align 8
  store double %.lcssa18, ptr %20, align 8
  store i32 %.lcssa20, ptr %7, align 4
  br label %275

274:                                              ; preds = %270
  br label %258

275:                                              ; preds = %273
  %276 = load double, ptr %19, align 8
  %277 = fdiv double %276, 2.000000e+00
  store double %277, ptr %21, align 8
  %278 = load double, ptr %11, align 8
  %279 = fadd double 1.000000e+00, %278
  %280 = fsub double 1.000000e+00, %278
  %281 = fdiv double %279, %280
  %282 = call double @sqrt(double noundef %281) #4
  %283 = load double, ptr %21, align 8
  %284 = call double @sin(double noundef %283) #4
  %285 = fmul double %282, %284
  %286 = load double, ptr %21, align 8
  %287 = call double @cos(double noundef %286) #4
  %288 = call double @atan2(double noundef %285, double noundef %287) #4
  %289 = fmul double 2.000000e+00, %288
  store double %289, ptr %22, align 8
  %290 = load double, ptr %9, align 8
  %291 = load double, ptr %11, align 8
  %292 = load double, ptr %19, align 8
  %293 = call double @cos(double noundef %292) #4
  %294 = fneg double %291
  %295 = call double @llvm.fmuladd.f64(double %294, double %293, double 1.000000e+00)
  %296 = fmul double %290, %295
  store double %296, ptr %23, align 8
  %297 = load i32, ptr %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %298
  %300 = load double, ptr %299, align 8
  %301 = fdiv double 1.000000e+00, %300
  %302 = fadd double 1.000000e+00, %301
  %303 = load double, ptr %9, align 8
  %304 = fmul double %303, %303
  %305 = fmul double %304, %303
  %306 = fdiv double %302, %305
  %307 = call double @sqrt(double noundef %306) #4
  %308 = fmul double f0x3F919D6D51A6B69A, %307
  store double %308, ptr %24, align 8
  %309 = load double, ptr %13, align 8
  %310 = fdiv double %309, 2.000000e+00
  %311 = call double @sin(double noundef %310) #4
  store double %311, ptr %25, align 8
  %312 = load double, ptr %14, align 8
  %313 = call double @cos(double noundef %312) #4
  %314 = fmul double %311, %313
  store double %314, ptr %26, align 8
  %315 = load double, ptr %25, align 8
  %316 = load double, ptr %14, align 8
  %317 = call double @sin(double noundef %316) #4
  %318 = fmul double %315, %317
  store double %318, ptr %27, align 8
  %319 = load double, ptr %22, align 8
  %320 = load double, ptr %12, align 8
  %321 = fadd double %319, %320
  store double %321, ptr %28, align 8
  %322 = call double @sin(double noundef %321) #4
  store double %322, ptr %29, align 8
  %323 = load double, ptr %28, align 8
  %324 = call double @cos(double noundef %323) #4
  store double %324, ptr %30, align 8
  %325 = load double, ptr %27, align 8
  %326 = load double, ptr %26, align 8
  %327 = load double, ptr %29, align 8
  %328 = fmul double %326, %327
  %329 = fneg double %328
  %330 = call double @llvm.fmuladd.f64(double %325, double %324, double %329)
  %331 = fmul double 2.000000e+00, %330
  store double %331, ptr %31, align 8
  %332 = load double, ptr %9, align 8
  %333 = load double, ptr %11, align 8
  %334 = fneg double %333
  %335 = call double @llvm.fmuladd.f64(double %334, double %333, double 1.000000e+00)
  %336 = call double @sqrt(double noundef %335) #4
  %337 = fdiv double %332, %336
  store double %337, ptr %32, align 8
  %338 = load double, ptr %13, align 8
  %339 = fdiv double %338, 2.000000e+00
  %340 = call double @cos(double noundef %339) #4
  store double %340, ptr %33, align 8
  %341 = load double, ptr %11, align 8
  %342 = load double, ptr %12, align 8
  %343 = call double @sin(double noundef %342) #4
  %344 = load double, ptr %29, align 8
  %345 = call double @llvm.fmuladd.f64(double %341, double %343, double %344)
  %346 = load double, ptr %32, align 8
  %347 = fmul double %345, %346
  store double %347, ptr %34, align 8
  %348 = load double, ptr %11, align 8
  %349 = load double, ptr %12, align 8
  %350 = call double @cos(double noundef %349) #4
  %351 = load double, ptr %30, align 8
  %352 = call double @llvm.fmuladd.f64(double %348, double %350, double %351)
  %353 = load double, ptr %32, align 8
  %354 = fmul double %352, %353
  store double %354, ptr %35, align 8
  %355 = load double, ptr %27, align 8
  %356 = fmul double 2.000000e+00, %355
  %357 = load double, ptr %26, align 8
  %358 = fmul double %356, %357
  store double %358, ptr %36, align 8
  %359 = load double, ptr %23, align 8
  %360 = load double, ptr %30, align 8
  %361 = load double, ptr %31, align 8
  %362 = load double, ptr %27, align 8
  %363 = fneg double %361
  %364 = call double @llvm.fmuladd.f64(double %363, double %362, double %360)
  %365 = fmul double %359, %364
  store double %365, ptr %37, align 8
  %366 = load double, ptr %23, align 8
  %367 = load double, ptr %29, align 8
  %368 = load double, ptr %31, align 8
  %369 = load double, ptr %26, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %369, double %367)
  %371 = fmul double %366, %370
  store double %371, ptr %38, align 8
  %372 = load double, ptr %23, align 8
  %373 = load double, ptr %31, align 8
  %374 = fneg double %373
  %375 = load double, ptr %33, align 8
  %376 = fmul double %374, %375
  %377 = fmul double %372, %376
  store double %377, ptr %39, align 8
  %378 = load double, ptr %37, align 8
  %379 = load ptr, ptr %6, align 8
  store double %378, ptr %379, align 8
  %380 = load double, ptr %38, align 8
  %381 = load double, ptr %39, align 8
  %382 = fmul double %381, f0x3FD9752E50F4B399
  %383 = fneg double %382
  %384 = call double @llvm.fmuladd.f64(double %380, double f0x3FED5C0357681EF3, double %383)
  %385 = load ptr, ptr %6, align 8
  %386 = getelementptr inbounds [3 x double], ptr %385, i64 0, i64 1
  store double %384, ptr %386, align 8
  %387 = load double, ptr %38, align 8
  %388 = load double, ptr %39, align 8
  %389 = fmul double %388, f0x3FED5C0357681EF3
  %390 = call double @llvm.fmuladd.f64(double %387, double f0x3FD9752E50F4B399, double %389)
  %391 = load ptr, ptr %6, align 8
  %392 = getelementptr inbounds [3 x double], ptr %391, i64 0, i64 2
  store double %390, ptr %392, align 8
  %393 = load double, ptr %24, align 8
  %394 = load double, ptr %27, align 8
  %395 = fmul double 2.000000e+00, %394
  %396 = call double @llvm.fmuladd.f64(double %395, double %394, double -1.000000e+00)
  %397 = load double, ptr %34, align 8
  %398 = load double, ptr %36, align 8
  %399 = load double, ptr %35, align 8
  %400 = fmul double %398, %399
  %401 = call double @llvm.fmuladd.f64(double %396, double %397, double %400)
  %402 = fmul double %393, %401
  store double %402, ptr %37, align 8
  %403 = load double, ptr %24, align 8
  %404 = load double, ptr %26, align 8
  %405 = fmul double 2.000000e+00, %404
  %406 = fneg double %405
  %407 = call double @llvm.fmuladd.f64(double %406, double %404, double 1.000000e+00)
  %408 = load double, ptr %35, align 8
  %409 = load double, ptr %36, align 8
  %410 = load double, ptr %34, align 8
  %411 = fmul double %409, %410
  %412 = fneg double %411
  %413 = call double @llvm.fmuladd.f64(double %407, double %408, double %412)
  %414 = fmul double %403, %413
  store double %414, ptr %38, align 8
  %415 = load double, ptr %24, align 8
  %416 = load double, ptr %33, align 8
  %417 = fmul double 2.000000e+00, %416
  %418 = load double, ptr %27, align 8
  %419 = load double, ptr %34, align 8
  %420 = load double, ptr %26, align 8
  %421 = load double, ptr %35, align 8
  %422 = fmul double %420, %421
  %423 = call double @llvm.fmuladd.f64(double %418, double %419, double %422)
  %424 = fmul double %417, %423
  %425 = fmul double %415, %424
  store double %425, ptr %39, align 8
  %426 = load double, ptr %37, align 8
  %427 = load ptr, ptr %6, align 8
  %428 = getelementptr inbounds [3 x double], ptr %427, i64 1
  store double %426, ptr %428, align 8
  %429 = load double, ptr %38, align 8
  %430 = load double, ptr %39, align 8
  %431 = fmul double %430, f0x3FD9752E50F4B399
  %432 = fneg double %431
  %433 = call double @llvm.fmuladd.f64(double %429, double f0x3FED5C0357681EF3, double %432)
  %434 = load ptr, ptr %6, align 8
  %435 = getelementptr inbounds [3 x double], ptr %434, i64 1
  %436 = getelementptr inbounds [3 x double], ptr %435, i64 0, i64 1
  store double %433, ptr %436, align 8
  %437 = load double, ptr %38, align 8
  %438 = load double, ptr %39, align 8
  %439 = fmul double %438, f0x3FED5C0357681EF3
  %440 = call double @llvm.fmuladd.f64(double %437, double f0x3FD9752E50F4B399, double %439)
  %441 = load ptr, ptr %6, align 8
  %442 = getelementptr inbounds [3 x double], ptr %441, i64 1
  %443 = getelementptr inbounds [3 x double], ptr %442, i64 0, i64 2
  store double %440, ptr %443, align 8
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
  %32 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  %.promoted8 = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %7, align 4
  %.promoted12 = load i32, ptr %8, align 4
  br label %33

33:                                               ; preds = %55, %31
  %.lcssa37.lcssa13 = phi i32 [ %.lcssa37.lcssa, %55 ], [ %.promoted12, %31 ]
  %.lcssa511 = phi i32 [ %.lcssa5, %55 ], [ %.promoted10, %31 ]
  %34 = phi i32 [ %56, %55 ], [ %.promoted8, %31 ]
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  store double f0x4142B42C80000000, ptr %9, align 16
  store double 0.000000e+00, ptr %32, align 8
  br label %37

37:                                               ; preds = %52, %36
  %.lcssa37 = phi i32 [ %.lcssa3, %52 ], [ %.lcssa37.lcssa13, %36 ]
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
  %.lcssa3 = phi i32 [ %44, %43 ]
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %38, 1
  br label %37, !llvm.loop !12

54:                                               ; preds = %37
  %.lcssa37.lcssa = phi i32 [ %.lcssa37, %37 ]
  %.lcssa5 = phi i32 [ %38, %37 ]
  br label %55

55:                                               ; preds = %54
  %56 = add nsw i32 %34, 1
  br label %33, !llvm.loop !13

57:                                               ; preds = %33
  %.lcssa37.lcssa13.lcssa = phi i32 [ %.lcssa37.lcssa13, %33 ]
  %.lcssa511.lcssa = phi i32 [ %.lcssa511, %33 ]
  %.lcssa9 = phi i32 [ %34, %33 ]
  store i32 %.lcssa9, ptr %6, align 4
  store i32 %.lcssa511.lcssa, ptr %7, align 4
  store i32 %.lcssa37.lcssa13.lcssa, ptr %8, align 4
  store i32 0, ptr %8, align 4
  %.promoted14 = load i32, ptr %8, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = phi i32 [ %71, %70 ], [ %.promoted14, %57 ]
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
  %.lcssa15 = phi i32 [ %59, %58 ]
  store i32 %.lcssa15, ptr %8, align 4
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
