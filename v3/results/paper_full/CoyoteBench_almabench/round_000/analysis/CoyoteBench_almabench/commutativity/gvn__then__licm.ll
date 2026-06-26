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
  %8 = fcmp olt double %0, 0.000000e+00
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %11 = fsub double %4, %10
  store double %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi double [ %11, %7 ], [ %4, %1 ]
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
  %42 = load double, ptr %0, align 8
  %43 = fsub double %42, f0x4142B42C80000000
  %44 = getelementptr inbounds double, ptr %0, i64 1
  %45 = load double, ptr %44, align 8
  %46 = fadd double %43, %45
  %47 = fdiv double %46, 3.652500e+05
  store double %47, ptr %10, align 8
  %48 = sext i32 %1 to i64
  %49 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 1
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 2
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %54, double %47, double %52)
  %56 = call double @llvm.fmuladd.f64(double %55, double %47, double %50)
  store double %56, ptr %11, align 8
  %57 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %48
  %58 = load double, ptr %57, align 8
  %59 = getelementptr inbounds [3 x double], ptr %57, i64 0, i64 1
  %60 = load double, ptr %59, align 8
  %61 = getelementptr inbounds [3 x double], ptr %57, i64 0, i64 2
  %62 = load double, ptr %61, align 8
  %63 = call double @llvm.fmuladd.f64(double %62, double %47, double %60)
  %64 = fmul double %63, %47
  %65 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %58, double %64)
  %66 = fmul double %65, f0x3ED455A5B2FF8F9D
  store double %66, ptr %12, align 8
  %67 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %48
  %68 = load double, ptr %67, align 8
  %69 = getelementptr inbounds [3 x double], ptr %67, i64 0, i64 1
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds [3 x double], ptr %67, i64 0, i64 2
  %72 = load double, ptr %71, align 8
  %73 = call double @llvm.fmuladd.f64(double %72, double %47, double %70)
  %74 = call double @llvm.fmuladd.f64(double %73, double %47, double %68)
  store double %74, ptr %13, align 8
  %75 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %48
  %76 = load double, ptr %75, align 8
  %77 = getelementptr inbounds [3 x double], ptr %75, i64 0, i64 1
  %78 = load double, ptr %77, align 8
  %79 = getelementptr inbounds [3 x double], ptr %75, i64 0, i64 2
  %80 = load double, ptr %79, align 8
  %81 = call double @llvm.fmuladd.f64(double %80, double %47, double %78)
  %82 = fmul double %81, %47
  %83 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %76, double %82)
  %84 = fmul double %83, f0x3ED455A5B2FF8F9D
  %85 = call double @anpm(double noundef %84)
  store double %85, ptr %14, align 8
  %86 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %48
  %87 = load double, ptr %86, align 8
  %88 = getelementptr inbounds [3 x double], ptr %86, i64 0, i64 1
  %89 = load double, ptr %88, align 8
  %90 = getelementptr inbounds [3 x double], ptr %86, i64 0, i64 2
  %91 = load double, ptr %90, align 8
  %92 = call double @llvm.fmuladd.f64(double %91, double %47, double %89)
  %93 = fmul double %92, %47
  %94 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %87, double %93)
  %95 = fmul double %94, f0x3ED455A5B2FF8F9D
  store double %95, ptr %15, align 8
  %96 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %48
  %97 = load double, ptr %96, align 8
  %98 = getelementptr inbounds [3 x double], ptr %96, i64 0, i64 1
  %99 = load double, ptr %98, align 8
  %100 = getelementptr inbounds [3 x double], ptr %96, i64 0, i64 2
  %101 = load double, ptr %100, align 8
  %102 = call double @llvm.fmuladd.f64(double %101, double %47, double %99)
  %103 = fmul double %102, %47
  %104 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %97, double %103)
  %105 = fmul double %104, f0x3ED455A5B2FF8F9D
  %106 = call double @anpm(double noundef %105)
  store double %106, ptr %16, align 8
  %107 = fmul double f0x3FD702A41F2E9970, %47
  store double %107, ptr %17, align 8
  store i32 0, ptr %9, align 4
  %108 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %48
  %109 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %48
  %110 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %48
  %111 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %48
  %112 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %48
  %113 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %48
  %.promoted = load double, ptr %11, align 1
  %.promoted8 = load double, ptr %12, align 1
  %.promoted10 = load i32, ptr %9, align 1
  br label %114

114:                                              ; preds = %124, %3
  %115 = phi i32 [ %150, %124 ], [ %.promoted10, %3 ]
  %116 = phi double [ %149, %124 ], [ %.promoted8, %3 ]
  %117 = phi double [ %140, %124 ], [ %.promoted, %3 ]
  %118 = phi double [ %131, %124 ], [ poison, %3 ]
  %119 = phi double [ %128, %124 ], [ poison, %3 ]
  %120 = phi double [ %149, %124 ], [ %66, %3 ]
  %121 = phi double [ %140, %124 ], [ %56, %3 ]
  %122 = phi i32 [ %150, %124 ], [ 0, %3 ]
  %123 = icmp slt i32 %122, 8
  br i1 %123, label %124, label %151

124:                                              ; preds = %114
  %125 = sext i32 %122 to i64
  %126 = getelementptr inbounds [9 x double], ptr %108, i64 0, i64 %125
  %127 = load double, ptr %126, align 8
  %128 = fmul double %127, %107
  %129 = getelementptr inbounds [10 x double], ptr %109, i64 0, i64 %125
  %130 = load double, ptr %129, align 8
  %131 = fmul double %130, %107
  %132 = getelementptr inbounds [9 x double], ptr %110, i64 0, i64 %125
  %133 = load double, ptr %132, align 8
  %134 = call double @cos(double noundef %128) #4
  %135 = getelementptr inbounds [9 x double], ptr %111, i64 0, i64 %125
  %136 = load double, ptr %135, align 8
  %137 = call double @sin(double noundef %128) #4
  %138 = fmul double %136, %137
  %139 = call double @llvm.fmuladd.f64(double %133, double %134, double %138)
  %140 = call double @llvm.fmuladd.f64(double %139, double f0x3E7AD7F29ABCAF48, double %121)
  %141 = getelementptr inbounds [10 x double], ptr %112, i64 0, i64 %125
  %142 = load double, ptr %141, align 8
  %143 = call double @cos(double noundef %131) #4
  %144 = getelementptr inbounds [10 x double], ptr %113, i64 0, i64 %125
  %145 = load double, ptr %144, align 8
  %146 = call double @sin(double noundef %131) #4
  %147 = fmul double %145, %146
  %148 = call double @llvm.fmuladd.f64(double %142, double %143, double %147)
  %149 = call double @llvm.fmuladd.f64(double %148, double f0x3E7AD7F29ABCAF48, double %120)
  %150 = add nsw i32 %122, 1
  br label %114, !llvm.loop !7

151:                                              ; preds = %114
  %.lcssa11 = phi i32 [ %115, %114 ]
  %.lcssa9 = phi double [ %116, %114 ]
  %.lcssa7 = phi double [ %117, %114 ]
  %.lcssa6 = phi double [ %118, %114 ]
  %.lcssa5 = phi double [ %119, %114 ]
  %.lcssa4 = phi double [ %120, %114 ]
  %.lcssa3 = phi double [ %121, %114 ]
  store double %.lcssa5, ptr %18, align 8
  store double %.lcssa6, ptr %19, align 8
  store double %.lcssa7, ptr %11, align 1
  store double %.lcssa9, ptr %12, align 1
  store i32 %.lcssa11, ptr %9, align 1
  %152 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %48
  %153 = getelementptr inbounds [9 x double], ptr %152, i64 0, i64 8
  %154 = load double, ptr %153, align 8
  %155 = fmul double %154, %107
  store double %155, ptr %18, align 8
  %156 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %48
  %157 = getelementptr inbounds [9 x double], ptr %156, i64 0, i64 8
  %158 = load double, ptr %157, align 8
  %159 = call double @cos(double noundef %155) #4
  %160 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %48
  %161 = getelementptr inbounds [9 x double], ptr %160, i64 0, i64 8
  %162 = load double, ptr %161, align 8
  %163 = call double @sin(double noundef %155) #4
  %164 = fmul double %162, %163
  %165 = call double @llvm.fmuladd.f64(double %158, double %159, double %164)
  %166 = fmul double %47, %165
  %167 = call double @llvm.fmuladd.f64(double %166, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  store double %167, ptr %11, align 8
  store i32 8, ptr %9, align 4
  %168 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %48
  %169 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %48
  %170 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %48
  %.promoted13 = load double, ptr %12, align 1
  %.promoted15 = load i32, ptr %9, align 1
  br label %171

171:                                              ; preds = %178, %151
  %172 = phi i32 [ %193, %178 ], [ %.promoted15, %151 ]
  %173 = phi double [ %192, %178 ], [ %.promoted13, %151 ]
  %174 = phi double [ %182, %178 ], [ poison, %151 ]
  %175 = phi double [ %192, %178 ], [ %.lcssa4, %151 ]
  %176 = phi i32 [ %193, %178 ], [ 8, %151 ]
  %177 = icmp sle i32 %176, 9
  br i1 %177, label %178, label %194

178:                                              ; preds = %171
  %179 = sext i32 %176 to i64
  %180 = getelementptr inbounds [10 x double], ptr %168, i64 0, i64 %179
  %181 = load double, ptr %180, align 8
  %182 = fmul double %181, %107
  %183 = getelementptr inbounds [10 x double], ptr %169, i64 0, i64 %179
  %184 = load double, ptr %183, align 8
  %185 = call double @cos(double noundef %182) #4
  %186 = getelementptr inbounds [10 x double], ptr %170, i64 0, i64 %179
  %187 = load double, ptr %186, align 8
  %188 = call double @sin(double noundef %182) #4
  %189 = fmul double %187, %188
  %190 = call double @llvm.fmuladd.f64(double %184, double %185, double %189)
  %191 = fmul double %47, %190
  %192 = call double @llvm.fmuladd.f64(double %191, double f0x3E7AD7F29ABCAF48, double %175)
  %193 = add nsw i32 %176, 1
  br label %171, !llvm.loop !9

194:                                              ; preds = %171
  %.lcssa16 = phi i32 [ %172, %171 ]
  %.lcssa14 = phi double [ %173, %171 ]
  %.lcssa12 = phi double [ %174, %171 ]
  %.lcssa2 = phi double [ %175, %171 ]
  store double %.lcssa12, ptr %19, align 8
  store double %.lcssa14, ptr %12, align 1
  store i32 %.lcssa16, ptr %9, align 1
  %195 = call double @fmod(double noundef %.lcssa2, double noundef f0x401921FB54442D18) #4
  store double %195, ptr %12, align 8
  %196 = fsub double %195, %85
  store double %196, ptr %20, align 8
  %197 = call double @sin(double noundef %196) #4
  %198 = call double @llvm.fmuladd.f64(double %74, double %197, double %196)
  store double %198, ptr %21, align 8
  store i32 0, ptr %9, align 4
  %199 = fneg double %74
  br label %200

200:                                              ; preds = %302, %194
  %201 = phi i32 [ %210, %302 ], [ 0, %194 ]
  %202 = phi double [ %209, %302 ], [ %198, %194 ]
  %203 = fsub double %196, %202
  %204 = call double @sin(double noundef %202) #4
  %205 = call double @llvm.fmuladd.f64(double %74, double %204, double %203)
  %206 = call double @cos(double noundef %202) #4
  %207 = call double @llvm.fmuladd.f64(double %199, double %206, double 1.000000e+00)
  %208 = fdiv double %205, %207
  %209 = fadd double %202, %208
  %210 = add nsw i32 %201, 1
  %211 = icmp sge i32 %210, 10
  br i1 %211, label %215, label %212

212:                                              ; preds = %200
  %213 = call double @llvm.fabs.f64(double %208)
  %214 = fcmp olt double %213, f0x3D719799812DEA11
  br i1 %214, label %215, label %302

215:                                              ; preds = %212, %200
  %.lcssa22 = phi i32 [ %210, %212 ], [ %210, %200 ]
  %.lcssa20 = phi double [ %209, %212 ], [ %209, %200 ]
  %.lcssa18 = phi double [ %208, %212 ], [ %208, %200 ]
  %.lcssa1 = phi double [ %199, %212 ], [ %199, %200 ]
  %.lcssa = phi double [ %209, %212 ], [ %209, %200 ]
  store double %.lcssa18, ptr %22, align 1
  store double %.lcssa20, ptr %21, align 1
  store i32 %.lcssa22, ptr %9, align 1
  %216 = fdiv double %.lcssa, 2.000000e+00
  store double %216, ptr %23, align 8
  %217 = fadd double 1.000000e+00, %74
  %218 = fsub double 1.000000e+00, %74
  %219 = fdiv double %217, %218
  %220 = call double @sqrt(double noundef %219) #4
  %221 = call double @sin(double noundef %216) #4
  %222 = fmul double %220, %221
  %223 = call double @cos(double noundef %216) #4
  %224 = call double @atan2(double noundef %222, double noundef %223) #4
  %225 = fmul double 2.000000e+00, %224
  store double %225, ptr %24, align 8
  %226 = call double @cos(double noundef %.lcssa) #4
  %227 = call double @llvm.fmuladd.f64(double %.lcssa1, double %226, double 1.000000e+00)
  %228 = fmul double %167, %227
  store double %228, ptr %25, align 8
  %229 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %48
  %230 = load double, ptr %229, align 8
  %231 = fdiv double 1.000000e+00, %230
  %232 = fadd double 1.000000e+00, %231
  %233 = fmul double %167, %167
  %234 = fmul double %233, %167
  %235 = fdiv double %232, %234
  %236 = call double @sqrt(double noundef %235) #4
  %237 = fmul double f0x3F919D6D51A6B69A, %236
  store double %237, ptr %26, align 8
  %238 = fdiv double %95, 2.000000e+00
  %239 = call double @sin(double noundef %238) #4
  store double %239, ptr %27, align 8
  %240 = call double @cos(double noundef %106) #4
  %241 = fmul double %239, %240
  store double %241, ptr %28, align 8
  %242 = call double @sin(double noundef %106) #4
  %243 = fmul double %239, %242
  store double %243, ptr %29, align 8
  %244 = fadd double %225, %85
  store double %244, ptr %30, align 8
  %245 = call double @sin(double noundef %244) #4
  store double %245, ptr %31, align 8
  %246 = call double @cos(double noundef %244) #4
  store double %246, ptr %32, align 8
  %247 = fmul double %241, %245
  %248 = fneg double %247
  %249 = call double @llvm.fmuladd.f64(double %243, double %246, double %248)
  %250 = fmul double 2.000000e+00, %249
  store double %250, ptr %33, align 8
  %251 = call double @llvm.fmuladd.f64(double %.lcssa1, double %74, double 1.000000e+00)
  %252 = call double @sqrt(double noundef %251) #4
  %253 = fdiv double %167, %252
  store double %253, ptr %34, align 8
  %254 = call double @cos(double noundef %238) #4
  store double %254, ptr %35, align 8
  %255 = call double @sin(double noundef %85) #4
  %256 = call double @llvm.fmuladd.f64(double %74, double %255, double %245)
  %257 = fmul double %256, %253
  store double %257, ptr %36, align 8
  %258 = call double @cos(double noundef %85) #4
  %259 = call double @llvm.fmuladd.f64(double %74, double %258, double %246)
  %260 = fmul double %259, %253
  store double %260, ptr %37, align 8
  %261 = fmul double 2.000000e+00, %243
  %262 = fmul double %261, %241
  store double %262, ptr %38, align 8
  %263 = fneg double %250
  %264 = call double @llvm.fmuladd.f64(double %263, double %243, double %246)
  %265 = fmul double %228, %264
  store double %265, ptr %39, align 8
  %266 = call double @llvm.fmuladd.f64(double %250, double %241, double %245)
  %267 = fmul double %228, %266
  store double %267, ptr %40, align 8
  %268 = fmul double %263, %254
  %269 = fmul double %228, %268
  store double %269, ptr %41, align 8
  store double %265, ptr %2, align 8
  %270 = fmul double %269, f0x3FD9752E50F4B399
  %271 = fneg double %270
  %272 = call double @llvm.fmuladd.f64(double %267, double f0x3FED5C0357681EF3, double %271)
  %273 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  store double %272, ptr %273, align 8
  %274 = fmul double %269, f0x3FED5C0357681EF3
  %275 = call double @llvm.fmuladd.f64(double %267, double f0x3FD9752E50F4B399, double %274)
  %276 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  store double %275, ptr %276, align 8
  %277 = call double @llvm.fmuladd.f64(double %261, double %243, double -1.000000e+00)
  %278 = fmul double %262, %260
  %279 = call double @llvm.fmuladd.f64(double %277, double %257, double %278)
  %280 = fmul double %237, %279
  store double %280, ptr %39, align 8
  %281 = fmul double 2.000000e+00, %241
  %282 = fneg double %281
  %283 = call double @llvm.fmuladd.f64(double %282, double %241, double 1.000000e+00)
  %284 = fmul double %262, %257
  %285 = fneg double %284
  %286 = call double @llvm.fmuladd.f64(double %283, double %260, double %285)
  %287 = fmul double %237, %286
  store double %287, ptr %40, align 8
  %288 = fmul double 2.000000e+00, %254
  %289 = fmul double %241, %260
  %290 = call double @llvm.fmuladd.f64(double %243, double %257, double %289)
  %291 = fmul double %288, %290
  %292 = fmul double %237, %291
  store double %292, ptr %41, align 8
  %293 = load ptr, ptr %6, align 8
  %294 = getelementptr inbounds [3 x double], ptr %293, i64 1
  store double %280, ptr %294, align 8
  %295 = fmul double %292, f0x3FD9752E50F4B399
  %296 = fneg double %295
  %297 = call double @llvm.fmuladd.f64(double %287, double f0x3FED5C0357681EF3, double %296)
  %298 = getelementptr inbounds [3 x double], ptr %294, i64 0, i64 1
  store double %297, ptr %298, align 8
  %299 = fmul double %292, f0x3FED5C0357681EF3
  %300 = call double @llvm.fmuladd.f64(double %287, double f0x3FD9752E50F4B399, double %299)
  %301 = getelementptr inbounds [3 x double], ptr %294, i64 0, i64 2
  store double %300, ptr %301, align 8
  ret void

302:                                              ; preds = %212
  br label %200
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
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %7 = load double, ptr %6, align 8
  %8 = fmul double %7, %7
  %9 = call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %11 = load double, ptr %10, align 8
  %12 = call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = call double @sqrt(double noundef %12) #4
  %14 = getelementptr inbounds double, ptr %1, i64 2
  store double %13, ptr %14, align 8
  %15 = load double, ptr %6, align 8
  %16 = load double, ptr %0, align 8
  %17 = call double @atan2(double noundef %15, double noundef %16) #4
  %18 = fmul double %17, f0x400E8EC8A4AEACC4
  store double %18, ptr %1, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = fadd double %18, 2.400000e+01
  store double %21, ptr %1, align 8
  br label %22

22:                                               ; preds = %20, %2
  %23 = load double, ptr %10, align 8
  %24 = load double, ptr %14, align 8
  %25 = fdiv double %23, %24
  %26 = call double @asin(double noundef %25) #4
  %27 = fmul double %26, f0x404CA5DC1A63C1F8
  %28 = getelementptr inbounds double, ptr %1, i64 1
  store double %27, ptr %28, align 8
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
  %13 = icmp sgt i32 %0, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %15 = getelementptr inbounds ptr, ptr %1, i64 1
  %.promoted = load i32, ptr %6, align 1
  br label %16

16:                                               ; preds = %25, %14
  %17 = phi i32 [ %26, %25 ], [ %.promoted, %14 ]
  %18 = phi i32 [ %26, %25 ], [ 1, %14 ]
  %19 = icmp slt i32 %18, %0
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %16
  %21 = load ptr, ptr %15, align 8
  %22 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str) #4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  %.lcssa1 = phi i32 [ %17, %20 ]
  store i32 %.lcssa1, ptr %6, align 1
  store i8 1, ptr %12, align 1
  br label %27

25:                                               ; preds = %20
  %26 = add nsw i32 %18, 1
  br label %16, !llvm.loop !10

.loopexit:                                        ; preds = %16
  %.lcssa = phi i32 [ %17, %16 ]
  store i32 %.lcssa, ptr %6, align 1
  br label %27

27:                                               ; preds = %.loopexit, %24
  br label %28

28:                                               ; preds = %27, %2
  store i32 0, ptr %6, align 4
  %29 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  %.promoted8 = load i32, ptr %7, align 4
  %.promoted10 = load i32, ptr %8, align 4
  %.promoted12 = load i32, ptr %6, align 1
  br label %30

30:                                               ; preds = %52, %28
  %31 = phi i32 [ %53, %52 ], [ %.promoted12, %28 ]
  %.lcssa35.lcssa11 = phi i32 [ %.lcssa35.lcssa, %52 ], [ %.promoted10, %28 ]
  %.lcssa79 = phi i32 [ %.lcssa7, %52 ], [ %.promoted8, %28 ]
  %32 = phi i32 [ %53, %52 ], [ 0, %28 ]
  %33 = icmp slt i32 %32, 20
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  store double f0x4142B42C80000000, ptr %9, align 16
  store double 0.000000e+00, ptr %29, align 8
  br label %35

35:                                               ; preds = %50, %34
  %36 = phi i32 [ %51, %50 ], [ 0, %34 ]
  %.lcssa35 = phi i32 [ %.lcssa3, %50 ], [ %.lcssa35.lcssa11, %34 ]
  %37 = phi i32 [ %51, %50 ], [ 0, %34 ]
  %38 = icmp slt i32 %37, 36525
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load double, ptr %9, align 16
  %41 = fadd double %40, 1.000000e+00
  store double %41, ptr %9, align 16
  br label %42

42:                                               ; preds = %46, %39
  %43 = phi i32 [ %49, %46 ], [ 0, %39 ]
  %44 = phi i32 [ %49, %46 ], [ 0, %39 ]
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  call void @planetpv(ptr noundef %9, i32 noundef %44, ptr noundef %10)
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %47
  call void @radecdist(ptr noundef %10, ptr noundef %48)
  %49 = add nsw i32 %44, 1
  br label %42, !llvm.loop !11

50:                                               ; preds = %42
  %.lcssa3 = phi i32 [ %43, %42 ]
  %51 = add nsw i32 %37, 1
  br label %35, !llvm.loop !12

52:                                               ; preds = %35
  %.lcssa7 = phi i32 [ %36, %35 ]
  %.lcssa35.lcssa = phi i32 [ %.lcssa35, %35 ]
  %53 = add nsw i32 %32, 1
  br label %30, !llvm.loop !13

54:                                               ; preds = %30
  %.lcssa13 = phi i32 [ %31, %30 ]
  %.lcssa35.lcssa11.lcssa = phi i32 [ %.lcssa35.lcssa11, %30 ]
  %.lcssa79.lcssa = phi i32 [ %.lcssa79, %30 ]
  store i32 %.lcssa79.lcssa, ptr %7, align 4
  store i32 %.lcssa35.lcssa11.lcssa, ptr %8, align 4
  store i32 %.lcssa13, ptr %6, align 1
  store i32 0, ptr %8, align 4
  %.promoted14 = load i32, ptr %8, align 1
  br label %55

55:                                               ; preds = %59, %54
  %56 = phi i32 [ %68, %59 ], [ %.promoted14, %54 ]
  %57 = phi i32 [ %68, %59 ], [ 0, %54 ]
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = getelementptr inbounds [3 x double], ptr %61, i64 0, i64 1
  %64 = load double, ptr %63, align 8
  %65 = getelementptr inbounds [3 x double], ptr %61, i64 0, i64 2
  %66 = load double, ptr %65, align 8
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %62, double noundef %64, double noundef %66)
  %68 = add nsw i32 %57, 1
  br label %55, !llvm.loop !14

69:                                               ; preds = %55
  %.lcssa15 = phi i32 [ %56, %55 ]
  store i32 %.lcssa15, ptr %8, align 1
  %70 = call ptr @__acrt_iob_func(i32 noundef 1)
  %71 = call i32 @fflush(ptr noundef %70)
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
