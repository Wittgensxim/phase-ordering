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
  %203 = sext i32 %197 to i64
  %204 = getelementptr inbounds [72 x i8], ptr @sa, i64 %203
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 64
  %206 = load double, ptr %205, align 8
  %207 = load double, ptr %15, align 8
  %208 = call double @sin(double noundef %207) #4
  %209 = fmul double %206, %208
  %210 = call double @llvm.fmuladd.f64(double %201, double %202, double %209)
  %211 = fmul double %196, %210
  %212 = call double @llvm.fmuladd.f64(double %211, double f0x3E7AD7F29ABCAF48, double %195)
  store double %212, ptr %8, align 8
  br label %213

213:                                              ; preds = %247, %187
  %storemerge1 = phi i32 [ 8, %187 ], [ %249, %247 ]
  store i32 %storemerge1, ptr %6, align 4
  %214 = icmp slt i32 %storemerge1, 10
  br i1 %214, label %215, label %250

215:                                              ; preds = %213
  %216 = load i32, ptr %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [80 x i8], ptr @kq, i64 %217
  %219 = sext i32 %storemerge1 to i64
  %220 = getelementptr inbounds [8 x i8], ptr %218, i64 %219
  %221 = load double, ptr %220, align 8
  %222 = load double, ptr %14, align 8
  %223 = fmul double %221, %222
  store double %223, ptr %16, align 8
  %224 = load double, ptr %9, align 8
  %225 = load double, ptr %7, align 8
  %226 = load i32, ptr %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [80 x i8], ptr @cl, i64 %227
  %229 = load i32, ptr %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [8 x i8], ptr %228, i64 %230
  %232 = load double, ptr %231, align 8
  %233 = call double @cos(double noundef %223) #4
  %234 = load i32, ptr %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [80 x i8], ptr @sl, i64 %235
  %237 = load i32, ptr %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [8 x i8], ptr %236, i64 %238
  %240 = load double, ptr %239, align 8
  %241 = load double, ptr %16, align 8
  %242 = call double @sin(double noundef %241) #4
  %243 = fmul double %240, %242
  %244 = call double @llvm.fmuladd.f64(double %232, double %233, double %243)
  %245 = fmul double %225, %244
  %246 = call double @llvm.fmuladd.f64(double %245, double f0x3E7AD7F29ABCAF48, double %224)
  store double %246, ptr %9, align 8
  br label %247

247:                                              ; preds = %215
  %248 = load i32, ptr %6, align 4
  %249 = add nsw i32 %248, 1
  br label %213, !llvm.loop !9

250:                                              ; preds = %213
  %251 = load double, ptr %9, align 8
  %252 = call double @fmod(double noundef %251, double noundef f0x401921FB54442D18) #4
  store double %252, ptr %9, align 8
  %253 = load double, ptr %11, align 8
  %254 = fsub double %252, %253
  store double %254, ptr %17, align 8
  %255 = load double, ptr %10, align 8
  %256 = call double @sin(double noundef %254) #4
  %257 = call double @llvm.fmuladd.f64(double %255, double %256, double %254)
  store double %257, ptr %18, align 8
  store i32 0, ptr %6, align 4
  br label %258

258:                                              ; preds = %279, %250
  %259 = load double, ptr %17, align 8
  %260 = load double, ptr %18, align 8
  %261 = fsub double %259, %260
  %262 = load double, ptr %10, align 8
  %263 = call double @sin(double noundef %260) #4
  %264 = call double @llvm.fmuladd.f64(double %262, double %263, double %261)
  %265 = call double @cos(double noundef %260) #4
  %266 = fneg double %262
  %267 = call double @llvm.fmuladd.f64(double %266, double %265, double 1.000000e+00)
  %268 = fdiv double %264, %267
  store double %268, ptr %19, align 8
  %269 = load double, ptr %18, align 8
  %270 = fadd double %269, %268
  store double %270, ptr %18, align 8
  %271 = load i32, ptr %6, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %6, align 4
  %273 = icmp sgt i32 %271, 8
  br i1 %273, label %278, label %274

274:                                              ; preds = %258
  %275 = load double, ptr %19, align 8
  %276 = call double @llvm.fabs.f64(double %275)
  %277 = fcmp olt double %276, f0x3D719799812DEA11
  br i1 %277, label %278, label %279

278:                                              ; preds = %274, %258
  br label %280

279:                                              ; preds = %274
  br label %258

280:                                              ; preds = %278
  %281 = load double, ptr %18, align 8
  %282 = fmul double %281, 5.000000e-01
  store double %282, ptr %20, align 8
  %283 = load double, ptr %10, align 8
  %284 = fadd double %283, 1.000000e+00
  %285 = fsub double 1.000000e+00, %283
  %286 = fdiv double %284, %285
  %287 = call double @sqrt(double noundef %286) #4
  %288 = call double @sin(double noundef %282) #4
  %289 = fmul double %287, %288
  %290 = load double, ptr %20, align 8
  %291 = call double @cos(double noundef %290) #4
  %292 = call double @atan2(double noundef %289, double noundef %291) #4
  %293 = fmul double %292, 2.000000e+00
  store double %293, ptr %21, align 8
  %294 = load double, ptr %8, align 8
  %295 = load double, ptr %10, align 8
  %296 = load double, ptr %18, align 8
  %297 = call double @cos(double noundef %296) #4
  %298 = fneg double %295
  %299 = call double @llvm.fmuladd.f64(double %298, double %297, double 1.000000e+00)
  %300 = fmul double %294, %299
  store double %300, ptr %22, align 8
  %301 = load i32, ptr %4, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [8 x i8], ptr @amas, i64 %302
  %304 = load double, ptr %303, align 8
  %305 = fdiv double 1.000000e+00, %304
  %306 = fadd double %305, 1.000000e+00
  %307 = load double, ptr %8, align 8
  %308 = fmul double %307, %307
  %309 = fmul double %308, %307
  %310 = fdiv double %306, %309
  %311 = call double @sqrt(double noundef %310) #4
  %312 = fmul double %311, f0x3F919D6D51A6B69A
  store double %312, ptr %23, align 8
  %313 = load double, ptr %12, align 8
  %314 = fmul double %313, 5.000000e-01
  %315 = call double @sin(double noundef %314) #4
  %316 = load double, ptr %13, align 8
  %317 = call double @cos(double noundef %316) #4
  %318 = fmul double %315, %317
  store double %318, ptr %24, align 8
  %319 = call double @sin(double noundef %316) #4
  %320 = fmul double %315, %319
  store double %320, ptr %25, align 8
  %321 = load double, ptr %21, align 8
  %322 = load double, ptr %11, align 8
  %323 = fadd double %321, %322
  %324 = call double @sin(double noundef %323) #4
  store double %324, ptr %26, align 8
  %325 = call double @cos(double noundef %323) #4
  store double %325, ptr %27, align 8
  %326 = load double, ptr %25, align 8
  %327 = load double, ptr %24, align 8
  %328 = fneg double %324
  %329 = fmul double %327, %328
  %330 = call double @llvm.fmuladd.f64(double %326, double %325, double %329)
  %331 = fmul double %330, 2.000000e+00
  store double %331, ptr %28, align 8
  %332 = load double, ptr %8, align 8
  %333 = load double, ptr %10, align 8
  %334 = fneg double %333
  %335 = call double @llvm.fmuladd.f64(double %334, double %333, double 1.000000e+00)
  %336 = call double @sqrt(double noundef %335) #4
  %337 = fdiv double %332, %336
  store double %337, ptr %29, align 8
  %338 = load double, ptr %12, align 8
  %339 = fmul double %338, 5.000000e-01
  %340 = call double @cos(double noundef %339) #4
  store double %340, ptr %30, align 8
  %341 = load double, ptr %10, align 8
  %342 = load double, ptr %11, align 8
  %343 = call double @sin(double noundef %342) #4
  %344 = load double, ptr %26, align 8
  %345 = call double @llvm.fmuladd.f64(double %341, double %343, double %344)
  %346 = load double, ptr %29, align 8
  %347 = fmul double %345, %346
  store double %347, ptr %31, align 8
  %348 = load double, ptr %10, align 8
  %349 = load double, ptr %11, align 8
  %350 = call double @cos(double noundef %349) #4
  %351 = load double, ptr %27, align 8
  %352 = call double @llvm.fmuladd.f64(double %348, double %350, double %351)
  %353 = load double, ptr %29, align 8
  %354 = fmul double %352, %353
  store double %354, ptr %32, align 8
  %355 = load double, ptr %25, align 8
  %356 = fmul double %355, 2.000000e+00
  %357 = load double, ptr %24, align 8
  %358 = fmul double %356, %357
  store double %358, ptr %33, align 8
  %359 = load double, ptr %22, align 8
  %360 = load double, ptr %27, align 8
  %361 = load double, ptr %28, align 8
  %362 = load double, ptr %25, align 8
  %363 = fneg double %361
  %364 = call double @llvm.fmuladd.f64(double %363, double %362, double %360)
  %365 = fmul double %359, %364
  store double %365, ptr %34, align 8
  %366 = load double, ptr %22, align 8
  %367 = load double, ptr %26, align 8
  %368 = load double, ptr %28, align 8
  %369 = load double, ptr %24, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %369, double %367)
  %371 = fmul double %366, %370
  store double %371, ptr %35, align 8
  %372 = load double, ptr %22, align 8
  %373 = fneg double %368
  %374 = load double, ptr %30, align 8
  %375 = fmul double %374, %373
  %376 = fmul double %372, %375
  store double %376, ptr %36, align 8
  %377 = load double, ptr %34, align 8
  %378 = load ptr, ptr %5, align 8
  store double %377, ptr %378, align 8
  %379 = load double, ptr %35, align 8
  %380 = fmul double %376, f0xBFD9752E50F4B399
  %381 = call double @llvm.fmuladd.f64(double %379, double f0x3FED5C0357681EF3, double %380)
  %382 = getelementptr inbounds nuw i8, ptr %378, i64 8
  store double %381, ptr %382, align 8
  %383 = load double, ptr %36, align 8
  %384 = fmul double %383, f0x3FED5C0357681EF3
  %385 = call double @llvm.fmuladd.f64(double %379, double f0x3FD9752E50F4B399, double %384)
  %386 = load ptr, ptr %5, align 8
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 16
  store double %385, ptr %387, align 8
  %388 = load double, ptr %23, align 8
  %389 = load double, ptr %25, align 8
  %390 = fmul double %389, 2.000000e+00
  %391 = call double @llvm.fmuladd.f64(double %390, double %389, double -1.000000e+00)
  %392 = load double, ptr %31, align 8
  %393 = load double, ptr %33, align 8
  %394 = load double, ptr %32, align 8
  %395 = fmul double %393, %394
  %396 = call double @llvm.fmuladd.f64(double %391, double %392, double %395)
  %397 = fmul double %388, %396
  store double %397, ptr %34, align 8
  %398 = load double, ptr %23, align 8
  %399 = load double, ptr %24, align 8
  %400 = fmul double %399, -2.000000e+00
  %401 = call double @llvm.fmuladd.f64(double %400, double %399, double 1.000000e+00)
  %402 = load double, ptr %32, align 8
  %403 = load double, ptr %33, align 8
  %404 = load double, ptr %31, align 8
  %405 = fneg double %404
  %406 = fmul double %403, %405
  %407 = call double @llvm.fmuladd.f64(double %401, double %402, double %406)
  %408 = fmul double %398, %407
  store double %408, ptr %35, align 8
  %409 = load double, ptr %23, align 8
  %410 = load double, ptr %30, align 8
  %411 = fmul double %410, 2.000000e+00
  %412 = load double, ptr %25, align 8
  %413 = load double, ptr %31, align 8
  %414 = load double, ptr %24, align 8
  %415 = load double, ptr %32, align 8
  %416 = fmul double %414, %415
  %417 = call double @llvm.fmuladd.f64(double %412, double %413, double %416)
  %418 = fmul double %411, %417
  %419 = fmul double %409, %418
  store double %419, ptr %36, align 8
  %420 = load double, ptr %34, align 8
  %421 = load ptr, ptr %5, align 8
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 24
  store double %420, ptr %422, align 8
  %423 = load double, ptr %35, align 8
  %424 = fmul double %419, f0xBFD9752E50F4B399
  %425 = call double @llvm.fmuladd.f64(double %423, double f0x3FED5C0357681EF3, double %424)
  %426 = getelementptr inbounds nuw i8, ptr %421, i64 32
  store double %425, ptr %426, align 8
  %427 = load double, ptr %36, align 8
  %428 = fmul double %427, f0x3FED5C0357681EF3
  %429 = call double @llvm.fmuladd.f64(double %423, double f0x3FD9752E50F4B399, double %428)
  %430 = load ptr, ptr %5, align 8
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 40
  store double %429, ptr %431, align 8
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
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load double, ptr %10, align 8
  %12 = call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = call double @sqrt(double noundef %12) #4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store double %13, ptr %15, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load double, ptr %17, align 8
  %19 = load double, ptr %16, align 8
  %20 = call double @atan2(double noundef %18, double noundef %19) #4
  %21 = fmul double %20, f0x400E8EC8A4AEACC4
  %22 = load ptr, ptr %4, align 8
  %23 = fcmp olt double %21, 0.000000e+00
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = fadd double %21, 2.400000e+01
  br label %26

26:                                               ; preds = %24, %2
  %storemerge = phi double [ %25, %24 ], [ %21, %2 ]
  store double %storemerge, ptr %22, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %29 = load double, ptr %28, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %32 = load double, ptr %31, align 8
  %33 = fdiv double %29, %32
  %34 = call double @asin(double noundef %33) #4
  %35 = fmul double %34, f0x404CA5DC1A63C1F8
  %36 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store double %35, ptr %36, align 8
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

28:                                               ; preds = %51, %27
  %storemerge1 = phi i32 [ 0, %27 ], [ %53, %51 ]
  store i32 %storemerge1, ptr %5, align 4
  %29 = icmp slt i32 %storemerge1, 20
  br i1 %29, label %30, label %54

30:                                               ; preds = %28
  store double f0x4142B42C80000000, ptr %8, align 16
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double 0.000000e+00, ptr %31, align 8
  br label %32

32:                                               ; preds = %47, %30
  %storemerge3 = phi i32 [ 0, %30 ], [ %49, %47 ]
  store i32 %storemerge3, ptr %6, align 4
  %33 = icmp slt i32 %storemerge3, 36525
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = load double, ptr %8, align 16
  %36 = fadd double %35, 1.000000e+00
  store double %36, ptr %8, align 16
  br label %37

37:                                               ; preds = %43, %34
  %storemerge4 = phi i32 [ 0, %34 ], [ %45, %43 ]
  store i32 %storemerge4, ptr %7, align 4
  %38 = icmp slt i32 %storemerge4, 8
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  call void @planetpv(ptr noundef nonnull %8, i32 noundef %storemerge4, ptr noundef nonnull %9)
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [24 x i8], ptr %10, i64 %41
  call void @radecdist(ptr noundef nonnull %9, ptr noundef nonnull %42)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %7, align 4
  %45 = add nsw i32 %44, 1
  br label %37, !llvm.loop !11

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %6, align 4
  %49 = add nsw i32 %48, 1
  br label %32, !llvm.loop !12

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, 1
  br label %28, !llvm.loop !13

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %66, %54
  %storemerge2 = phi i32 [ 0, %54 ], [ %68, %66 ]
  store i32 %storemerge2, ptr %7, align 4
  %56 = icmp slt i32 %storemerge2, 8
  br i1 %56, label %57, label %69

57:                                               ; preds = %55
  %58 = sext i32 %storemerge2 to i64
  %59 = getelementptr inbounds [24 x i8], ptr %10, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %62 = load double, ptr %61, align 8
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %64 = load double, ptr %63, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %60, double noundef %62, double noundef %64) #4
  br label %66

66:                                               ; preds = %57
  %67 = load i32, ptr %7, align 4
  %68 = add nsw i32 %67, 1
  br label %55, !llvm.loop !14

69:                                               ; preds = %55
  %70 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %71 = call i32 @fflush(ptr noundef %70) #4
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
