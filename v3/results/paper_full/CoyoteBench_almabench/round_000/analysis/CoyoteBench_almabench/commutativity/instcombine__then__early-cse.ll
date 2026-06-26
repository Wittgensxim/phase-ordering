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
  %6 = fcmp ult double %5, f0x400921FB54442D18
  br i1 %6, label %12, label %7

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
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
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
  store i32 %1, ptr %4, align 4
  store ptr %2, ptr %5, align 8
  %37 = load double, ptr %0, align 8
  %38 = fadd double %37, f0xC142B42C80000000
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load double, ptr %39, align 8
  %41 = fadd double %38, %40
  %42 = fdiv double %41, 3.652500e+05
  store double %42, ptr %7, align 8
  %43 = load i32, ptr %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [24 x i8], ptr @a, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %50 = load double, ptr %49, align 8
  %51 = call double @llvm.fmuladd.f64(double %50, double %42, double %48)
  %52 = call double @llvm.fmuladd.f64(double %51, double %42, double %46)
  store double %52, ptr %8, align 8
  %53 = load i32, ptr %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %58 = load double, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %60 = load double, ptr %59, align 8
  %61 = load double, ptr %7, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %61, double %58)
  %63 = fmul double %62, %61
  %64 = call double @llvm.fmuladd.f64(double %56, double 3.600000e+03, double %63)
  %65 = fmul double %64, f0x3ED455A5B2FF8F9D
  store double %65, ptr %9, align 8
  %66 = load i32, ptr %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [24 x i8], ptr @e, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %71 = load double, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %73 = load double, ptr %72, align 8
  %74 = load double, ptr %7, align 8
  %75 = call double @llvm.fmuladd.f64(double %73, double %74, double %71)
  %76 = call double @llvm.fmuladd.f64(double %75, double %74, double %69)
  store double %76, ptr %10, align 8
  %77 = load i32, ptr %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [24 x i8], ptr @pi, i64 %78
  %80 = load double, ptr %79, align 8
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %82 = load double, ptr %81, align 8
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %84 = load double, ptr %83, align 8
  %85 = load double, ptr %7, align 8
  %86 = call double @llvm.fmuladd.f64(double %84, double %85, double %82)
  %87 = fmul double %86, %85
  %88 = call double @llvm.fmuladd.f64(double %80, double 3.600000e+03, double %87)
  %89 = fmul double %88, f0x3ED455A5B2FF8F9D
  %90 = call double @anpm(double noundef %89)
  store double %90, ptr %11, align 8
  %91 = load i32, ptr %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %96 = load double, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %98 = load double, ptr %97, align 8
  %99 = load double, ptr %7, align 8
  %100 = call double @llvm.fmuladd.f64(double %98, double %99, double %96)
  %101 = fmul double %100, %99
  %102 = call double @llvm.fmuladd.f64(double %94, double 3.600000e+03, double %101)
  %103 = fmul double %102, f0x3ED455A5B2FF8F9D
  store double %103, ptr %12, align 8
  %104 = load i32, ptr %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [24 x i8], ptr @omega, i64 %105
  %107 = load double, ptr %106, align 8
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 8
  %109 = load double, ptr %108, align 8
  %110 = getelementptr inbounds nuw i8, ptr %106, i64 16
  %111 = load double, ptr %110, align 8
  %112 = load double, ptr %7, align 8
  %113 = call double @llvm.fmuladd.f64(double %111, double %112, double %109)
  %114 = fmul double %113, %112
  %115 = call double @llvm.fmuladd.f64(double %107, double 3.600000e+03, double %114)
  %116 = fmul double %115, f0x3ED455A5B2FF8F9D
  %117 = call double @anpm(double noundef %116)
  store double %117, ptr %13, align 8
  %118 = load double, ptr %7, align 8
  %119 = fmul double %118, f0x3FD702A41F2E9970
  store double %119, ptr %14, align 8
  br label %120

120:                                              ; preds = %184, %3
  %storemerge = phi i32 [ 0, %3 ], [ %186, %184 ]
  store i32 %storemerge, ptr %6, align 4
  %121 = icmp slt i32 %storemerge, 8
  br i1 %121, label %122, label %187

122:                                              ; preds = %120
  %123 = load i32, ptr %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [72 x i8], ptr @kp, i64 %124
  %126 = sext i32 %storemerge to i64
  %127 = getelementptr inbounds [8 x i8], ptr %125, i64 %126
  %128 = load double, ptr %127, align 8
  %129 = load double, ptr %14, align 8
  %130 = fmul double %128, %129
  store double %130, ptr %15, align 8
  %131 = load i32, ptr %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [80 x i8], ptr @kq, i64 %132
  %134 = load i32, ptr %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [8 x i8], ptr %133, i64 %135
  %137 = load double, ptr %136, align 8
  %138 = load double, ptr %14, align 8
  %139 = fmul double %137, %138
  store double %139, ptr %16, align 8
  %140 = load double, ptr %8, align 8
  %141 = load i32, ptr %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [72 x i8], ptr @ca, i64 %142
  %144 = load i32, ptr %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [8 x i8], ptr %143, i64 %145
  %147 = load double, ptr %146, align 8
  %148 = load double, ptr %15, align 8
  %149 = call double @cos(double noundef %148) #4
  %150 = load i32, ptr %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [72 x i8], ptr @sa, i64 %151
  %153 = load i32, ptr %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x i8], ptr %152, i64 %154
  %156 = load double, ptr %155, align 8
  %157 = load double, ptr %15, align 8
  %158 = call double @sin(double noundef %157) #4
  %159 = fmul double %156, %158
  %160 = call double @llvm.fmuladd.f64(double %147, double %149, double %159)
  %161 = call double @llvm.fmuladd.f64(double %160, double f0x3E7AD7F29ABCAF48, double %140)
  store double %161, ptr %8, align 8
  %162 = load double, ptr %9, align 8
  %163 = load i32, ptr %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [80 x i8], ptr @cl, i64 %164
  %166 = load i32, ptr %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [8 x i8], ptr %165, i64 %167
  %169 = load double, ptr %168, align 8
  %170 = load double, ptr %16, align 8
  %171 = call double @cos(double noundef %170) #4
  %172 = load i32, ptr %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [80 x i8], ptr @sl, i64 %173
  %175 = load i32, ptr %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x i8], ptr %174, i64 %176
  %178 = load double, ptr %177, align 8
  %179 = load double, ptr %16, align 8
  %180 = call double @sin(double noundef %179) #4
  %181 = fmul double %178, %180
  %182 = call double @llvm.fmuladd.f64(double %169, double %171, double %181)
  %183 = call double @llvm.fmuladd.f64(double %182, double f0x3E7AD7F29ABCAF48, double %162)
  store double %183, ptr %9, align 8
  br label %184

184:                                              ; preds = %122
  %185 = load i32, ptr %6, align 4
  %186 = add nsw i32 %185, 1
  br label %120, !llvm.loop !7

187:                                              ; preds = %120
  %188 = load i32, ptr %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [72 x i8], ptr @kp, i64 %189
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 64
  %192 = load double, ptr %191, align 8
  %193 = load double, ptr %14, align 8
  %194 = fmul double %192, %193
  store double %194, ptr %15, align 8
  %195 = load double, ptr %8, align 8
  %196 = load double, ptr %7, align 8
  %197 = load i32, ptr %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [72 x i8], ptr @ca, i64 %198
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 64
  %201 = load double, ptr %200, align 8
  %202 = call double @cos(double noundef %194) #4
  %203 = load i32, ptr %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [72 x i8], ptr @sa, i64 %204
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 64
  %207 = load double, ptr %206, align 8
  %208 = load double, ptr %15, align 8
  %209 = call double @sin(double noundef %208) #4
  %210 = fmul double %207, %209
  %211 = call double @llvm.fmuladd.f64(double %201, double %202, double %210)
  %212 = fmul double %196, %211
  %213 = call double @llvm.fmuladd.f64(double %212, double f0x3E7AD7F29ABCAF48, double %195)
  store double %213, ptr %8, align 8
  br label %214

214:                                              ; preds = %248, %187
  %storemerge1 = phi i32 [ 8, %187 ], [ %250, %248 ]
  store i32 %storemerge1, ptr %6, align 4
  %215 = icmp slt i32 %storemerge1, 10
  br i1 %215, label %216, label %251

216:                                              ; preds = %214
  %217 = load i32, ptr %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [80 x i8], ptr @kq, i64 %218
  %220 = sext i32 %storemerge1 to i64
  %221 = getelementptr inbounds [8 x i8], ptr %219, i64 %220
  %222 = load double, ptr %221, align 8
  %223 = load double, ptr %14, align 8
  %224 = fmul double %222, %223
  store double %224, ptr %16, align 8
  %225 = load double, ptr %9, align 8
  %226 = load double, ptr %7, align 8
  %227 = load i32, ptr %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [80 x i8], ptr @cl, i64 %228
  %230 = load i32, ptr %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [8 x i8], ptr %229, i64 %231
  %233 = load double, ptr %232, align 8
  %234 = call double @cos(double noundef %224) #4
  %235 = load i32, ptr %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [80 x i8], ptr @sl, i64 %236
  %238 = load i32, ptr %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [8 x i8], ptr %237, i64 %239
  %241 = load double, ptr %240, align 8
  %242 = load double, ptr %16, align 8
  %243 = call double @sin(double noundef %242) #4
  %244 = fmul double %241, %243
  %245 = call double @llvm.fmuladd.f64(double %233, double %234, double %244)
  %246 = fmul double %226, %245
  %247 = call double @llvm.fmuladd.f64(double %246, double f0x3E7AD7F29ABCAF48, double %225)
  store double %247, ptr %9, align 8
  br label %248

248:                                              ; preds = %216
  %249 = load i32, ptr %6, align 4
  %250 = add nsw i32 %249, 1
  br label %214, !llvm.loop !9

251:                                              ; preds = %214
  %252 = load double, ptr %9, align 8
  %253 = call double @fmod(double noundef %252, double noundef f0x401921FB54442D18) #4
  store double %253, ptr %9, align 8
  %254 = load double, ptr %11, align 8
  %255 = fsub double %253, %254
  store double %255, ptr %17, align 8
  %256 = load double, ptr %10, align 8
  %257 = call double @sin(double noundef %255) #4
  %258 = call double @llvm.fmuladd.f64(double %256, double %257, double %255)
  store double %258, ptr %18, align 8
  store i32 0, ptr %6, align 4
  br label %259

259:                                              ; preds = %280, %251
  %260 = load double, ptr %17, align 8
  %261 = load double, ptr %18, align 8
  %262 = fsub double %260, %261
  %263 = load double, ptr %10, align 8
  %264 = call double @sin(double noundef %261) #4
  %265 = call double @llvm.fmuladd.f64(double %263, double %264, double %262)
  %266 = call double @cos(double noundef %261) #4
  %267 = fneg double %263
  %268 = call double @llvm.fmuladd.f64(double %267, double %266, double 1.000000e+00)
  %269 = fdiv double %265, %268
  store double %269, ptr %19, align 8
  %270 = load double, ptr %18, align 8
  %271 = fadd double %270, %269
  store double %271, ptr %18, align 8
  %272 = load i32, ptr %6, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %6, align 4
  %274 = icmp sgt i32 %272, 8
  br i1 %274, label %279, label %275

275:                                              ; preds = %259
  %276 = load double, ptr %19, align 8
  %277 = call double @llvm.fabs.f64(double %276)
  %278 = fcmp olt double %277, f0x3D719799812DEA11
  br i1 %278, label %279, label %280

279:                                              ; preds = %275, %259
  br label %281

280:                                              ; preds = %275
  br label %259

281:                                              ; preds = %279
  %282 = load double, ptr %18, align 8
  %283 = fmul double %282, 5.000000e-01
  store double %283, ptr %20, align 8
  %284 = load double, ptr %10, align 8
  %285 = fadd double %284, 1.000000e+00
  %286 = fsub double 1.000000e+00, %284
  %287 = fdiv double %285, %286
  %288 = call double @sqrt(double noundef %287) #4
  %289 = call double @sin(double noundef %283) #4
  %290 = fmul double %288, %289
  %291 = load double, ptr %20, align 8
  %292 = call double @cos(double noundef %291) #4
  %293 = call double @atan2(double noundef %290, double noundef %292) #4
  %294 = fmul double %293, 2.000000e+00
  store double %294, ptr %21, align 8
  %295 = load double, ptr %8, align 8
  %296 = load double, ptr %10, align 8
  %297 = load double, ptr %18, align 8
  %298 = call double @cos(double noundef %297) #4
  %299 = fneg double %296
  %300 = call double @llvm.fmuladd.f64(double %299, double %298, double 1.000000e+00)
  %301 = fmul double %295, %300
  store double %301, ptr %22, align 8
  %302 = load i32, ptr %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [8 x i8], ptr @amas, i64 %303
  %305 = load double, ptr %304, align 8
  %306 = fdiv double 1.000000e+00, %305
  %307 = fadd double %306, 1.000000e+00
  %308 = load double, ptr %8, align 8
  %309 = fmul double %308, %308
  %310 = fmul double %309, %308
  %311 = fdiv double %307, %310
  %312 = call double @sqrt(double noundef %311) #4
  %313 = fmul double %312, f0x3F919D6D51A6B69A
  store double %313, ptr %23, align 8
  %314 = load double, ptr %12, align 8
  %315 = fmul double %314, 5.000000e-01
  %316 = call double @sin(double noundef %315) #4
  %317 = load double, ptr %13, align 8
  %318 = call double @cos(double noundef %317) #4
  %319 = fmul double %316, %318
  store double %319, ptr %24, align 8
  %320 = call double @sin(double noundef %317) #4
  %321 = fmul double %316, %320
  store double %321, ptr %25, align 8
  %322 = load double, ptr %21, align 8
  %323 = load double, ptr %11, align 8
  %324 = fadd double %322, %323
  %325 = call double @sin(double noundef %324) #4
  store double %325, ptr %26, align 8
  %326 = call double @cos(double noundef %324) #4
  store double %326, ptr %27, align 8
  %327 = load double, ptr %25, align 8
  %328 = load double, ptr %24, align 8
  %329 = fneg double %325
  %330 = fmul double %328, %329
  %331 = call double @llvm.fmuladd.f64(double %327, double %326, double %330)
  %332 = fmul double %331, 2.000000e+00
  store double %332, ptr %28, align 8
  %333 = load double, ptr %8, align 8
  %334 = load double, ptr %10, align 8
  %335 = fneg double %334
  %336 = call double @llvm.fmuladd.f64(double %335, double %334, double 1.000000e+00)
  %337 = call double @sqrt(double noundef %336) #4
  %338 = fdiv double %333, %337
  store double %338, ptr %29, align 8
  %339 = load double, ptr %12, align 8
  %340 = fmul double %339, 5.000000e-01
  %341 = call double @cos(double noundef %340) #4
  store double %341, ptr %30, align 8
  %342 = load double, ptr %10, align 8
  %343 = load double, ptr %11, align 8
  %344 = call double @sin(double noundef %343) #4
  %345 = load double, ptr %26, align 8
  %346 = call double @llvm.fmuladd.f64(double %342, double %344, double %345)
  %347 = load double, ptr %29, align 8
  %348 = fmul double %346, %347
  store double %348, ptr %31, align 8
  %349 = load double, ptr %10, align 8
  %350 = load double, ptr %11, align 8
  %351 = call double @cos(double noundef %350) #4
  %352 = load double, ptr %27, align 8
  %353 = call double @llvm.fmuladd.f64(double %349, double %351, double %352)
  %354 = load double, ptr %29, align 8
  %355 = fmul double %353, %354
  store double %355, ptr %32, align 8
  %356 = load double, ptr %25, align 8
  %357 = fmul double %356, 2.000000e+00
  %358 = load double, ptr %24, align 8
  %359 = fmul double %357, %358
  store double %359, ptr %33, align 8
  %360 = load double, ptr %22, align 8
  %361 = load double, ptr %27, align 8
  %362 = load double, ptr %28, align 8
  %363 = load double, ptr %25, align 8
  %364 = fneg double %362
  %365 = call double @llvm.fmuladd.f64(double %364, double %363, double %361)
  %366 = fmul double %360, %365
  store double %366, ptr %34, align 8
  %367 = load double, ptr %22, align 8
  %368 = load double, ptr %26, align 8
  %369 = load double, ptr %28, align 8
  %370 = load double, ptr %24, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %370, double %368)
  %372 = fmul double %367, %371
  store double %372, ptr %35, align 8
  %373 = load double, ptr %22, align 8
  %374 = fneg double %369
  %375 = load double, ptr %30, align 8
  %376 = fmul double %375, %374
  %377 = fmul double %373, %376
  store double %377, ptr %36, align 8
  %378 = load double, ptr %34, align 8
  %379 = load ptr, ptr %5, align 8
  store double %378, ptr %379, align 8
  %380 = load double, ptr %35, align 8
  %381 = fmul double %377, f0xBFD9752E50F4B399
  %382 = call double @llvm.fmuladd.f64(double %380, double f0x3FED5C0357681EF3, double %381)
  %383 = getelementptr inbounds nuw i8, ptr %379, i64 8
  store double %382, ptr %383, align 8
  %384 = load double, ptr %36, align 8
  %385 = fmul double %384, f0x3FED5C0357681EF3
  %386 = call double @llvm.fmuladd.f64(double %380, double f0x3FD9752E50F4B399, double %385)
  %387 = load ptr, ptr %5, align 8
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 16
  store double %386, ptr %388, align 8
  %389 = load double, ptr %23, align 8
  %390 = load double, ptr %25, align 8
  %391 = fmul double %390, 2.000000e+00
  %392 = call double @llvm.fmuladd.f64(double %391, double %390, double -1.000000e+00)
  %393 = load double, ptr %31, align 8
  %394 = load double, ptr %33, align 8
  %395 = load double, ptr %32, align 8
  %396 = fmul double %394, %395
  %397 = call double @llvm.fmuladd.f64(double %392, double %393, double %396)
  %398 = fmul double %389, %397
  store double %398, ptr %34, align 8
  %399 = load double, ptr %23, align 8
  %400 = load double, ptr %24, align 8
  %401 = fmul double %400, -2.000000e+00
  %402 = call double @llvm.fmuladd.f64(double %401, double %400, double 1.000000e+00)
  %403 = load double, ptr %32, align 8
  %404 = load double, ptr %33, align 8
  %405 = load double, ptr %31, align 8
  %406 = fneg double %405
  %407 = fmul double %404, %406
  %408 = call double @llvm.fmuladd.f64(double %402, double %403, double %407)
  %409 = fmul double %399, %408
  store double %409, ptr %35, align 8
  %410 = load double, ptr %23, align 8
  %411 = load double, ptr %30, align 8
  %412 = fmul double %411, 2.000000e+00
  %413 = load double, ptr %25, align 8
  %414 = load double, ptr %31, align 8
  %415 = load double, ptr %24, align 8
  %416 = load double, ptr %32, align 8
  %417 = fmul double %415, %416
  %418 = call double @llvm.fmuladd.f64(double %413, double %414, double %417)
  %419 = fmul double %412, %418
  %420 = fmul double %410, %419
  store double %420, ptr %36, align 8
  %421 = load double, ptr %34, align 8
  %422 = load ptr, ptr %5, align 8
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 24
  store double %421, ptr %423, align 8
  %424 = load double, ptr %35, align 8
  %425 = fmul double %420, f0xBFD9752E50F4B399
  %426 = call double @llvm.fmuladd.f64(double %424, double f0x3FED5C0357681EF3, double %425)
  %427 = getelementptr inbounds nuw i8, ptr %422, i64 32
  store double %426, ptr %427, align 8
  %428 = load double, ptr %36, align 8
  %429 = fmul double %428, f0x3FED5C0357681EF3
  %430 = call double @llvm.fmuladd.f64(double %424, double f0x3FD9752E50F4B399, double %429)
  %431 = load ptr, ptr %5, align 8
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 40
  store double %430, ptr %432, align 8
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
  %5 = load double, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8
  %8 = fmul double %7, %7
  %9 = call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %12, double %12, double %9)
  %14 = call double @sqrt(double noundef %13) #4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double %14, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load double, ptr %18, align 8
  %20 = load double, ptr %17, align 8
  %21 = call double @atan2(double noundef %19, double noundef %20) #4
  %22 = fmul double %21, f0x400E8EC8A4AEACC4
  %23 = load ptr, ptr %4, align 8
  store double %22, ptr %23, align 8
  %24 = fcmp olt double %22, 0.000000e+00
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = load double, ptr %26, align 8
  %28 = fadd double %27, 2.400000e+01
  store double %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %32 = load double, ptr %31, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %35 = load double, ptr %34, align 8
  %36 = fdiv double %32, %35
  %37 = call double @asin(double noundef %36) #4
  %38 = fmul double %37, f0x404CA5DC1A63C1F8
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store double %38, ptr %39, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x double], align 16
  %9 = alloca [2 x [3 x double]], align 16
  %10 = alloca [8 x [3 x double]], align 16
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %23, %12
  %storemerge = phi i32 [ 1, %12 ], [ %25, %23 ]
  store i32 %storemerge, ptr %5, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %storemerge, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %21, label %22

21:                                               ; preds = %16
  br label %26

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  br label %13, !llvm.loop !10

26:                                               ; preds = %21, %13
  br label %27

27:                                               ; preds = %26, %2
  br label %28

28:                                               ; preds = %50, %27
  %storemerge1 = phi i32 [ 0, %27 ], [ %52, %50 ]
  store i32 %storemerge1, ptr %5, align 4
  %29 = icmp slt i32 %storemerge1, 20
  br i1 %29, label %30, label %53

30:                                               ; preds = %28
  store double f0x4142B42C80000000, ptr %8, align 16
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double 0.000000e+00, ptr %31, align 8
  br label %32

32:                                               ; preds = %46, %30
  %storemerge3 = phi i32 [ 0, %30 ], [ %48, %46 ]
  store i32 %storemerge3, ptr %6, align 4
  %33 = icmp slt i32 %storemerge3, 36525
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load double, ptr %8, align 16
  %36 = fadd double %35, 1.000000e+00
  store double %36, ptr %8, align 16
  br label %37

37:                                               ; preds = %42, %34
  %storemerge4 = phi i32 [ 0, %34 ], [ %44, %42 ]
  store i32 %storemerge4, ptr %7, align 4
  %38 = icmp slt i32 %storemerge4, 8
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  call void @planetpv(ptr noundef nonnull %8, i32 noundef %storemerge4, ptr noundef nonnull %9)
  %40 = sext i32 %storemerge4 to i64
  %41 = getelementptr inbounds [24 x i8], ptr %10, i64 %40
  call void @radecdist(ptr noundef nonnull %9, ptr noundef nonnull %41)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %7, align 4
  %44 = add nsw i32 %43, 1
  br label %37, !llvm.loop !11

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %6, align 4
  %48 = add nsw i32 %47, 1
  br label %32, !llvm.loop !12

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  br label %28, !llvm.loop !13

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %65, %53
  %storemerge2 = phi i32 [ 0, %53 ], [ %67, %65 ]
  store i32 %storemerge2, ptr %7, align 4
  %55 = icmp slt i32 %storemerge2, 8
  br i1 %55, label %56, label %68

56:                                               ; preds = %54
  %57 = sext i32 %storemerge2 to i64
  %58 = getelementptr inbounds [24 x i8], ptr %10, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %63 = load double, ptr %62, align 8
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %59, double noundef %61, double noundef %63) #4
  br label %65

65:                                               ; preds = %56
  %66 = load i32, ptr %7, align 4
  %67 = add nsw i32 %66, 1
  br label %54, !llvm.loop !14

68:                                               ; preds = %54
  %69 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %70 = call i32 @fflush(ptr noundef %69) #4
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
