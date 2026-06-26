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
  br label %108

108:                                              ; preds = %111, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %111 ], [ 0, %3 ]
  %109 = phi double [ %141, %111 ], [ %66, %3 ]
  %110 = phi double [ %130, %111 ], [ %56, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, 8
  br i1 %exitcond, label %111, label %143

111:                                              ; preds = %108
  %112 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %48
  %113 = getelementptr inbounds [9 x double], ptr %112, i64 0, i64 %indvars.iv
  %114 = load double, ptr %113, align 8
  %115 = fmul double %114, %107
  store double %115, ptr %18, align 8
  %116 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %48
  %117 = getelementptr inbounds [10 x double], ptr %116, i64 0, i64 %indvars.iv
  %118 = load double, ptr %117, align 8
  %119 = fmul double %118, %107
  store double %119, ptr %19, align 8
  %120 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %48
  %121 = getelementptr inbounds [9 x double], ptr %120, i64 0, i64 %indvars.iv
  %122 = load double, ptr %121, align 8
  %123 = call double @cos(double noundef %115) #4
  %124 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %48
  %125 = getelementptr inbounds [9 x double], ptr %124, i64 0, i64 %indvars.iv
  %126 = load double, ptr %125, align 8
  %127 = call double @sin(double noundef %115) #4
  %128 = fmul double %126, %127
  %129 = call double @llvm.fmuladd.f64(double %122, double %123, double %128)
  %130 = call double @llvm.fmuladd.f64(double %129, double f0x3E7AD7F29ABCAF48, double %110)
  store double %130, ptr %11, align 8
  %131 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %48
  %132 = getelementptr inbounds [10 x double], ptr %131, i64 0, i64 %indvars.iv
  %133 = load double, ptr %132, align 8
  %134 = call double @cos(double noundef %119) #4
  %135 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %48
  %136 = getelementptr inbounds [10 x double], ptr %135, i64 0, i64 %indvars.iv
  %137 = load double, ptr %136, align 8
  %138 = call double @sin(double noundef %119) #4
  %139 = fmul double %137, %138
  %140 = call double @llvm.fmuladd.f64(double %133, double %134, double %139)
  %141 = call double @llvm.fmuladd.f64(double %140, double f0x3E7AD7F29ABCAF48, double %109)
  store double %141, ptr %12, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %142 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %142, ptr %9, align 4
  br label %108, !llvm.loop !7

143:                                              ; preds = %108
  %.lcssa4 = phi double [ %109, %108 ]
  %.lcssa3 = phi double [ %110, %108 ]
  %144 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %48
  %145 = getelementptr inbounds [9 x double], ptr %144, i64 0, i64 8
  %146 = load double, ptr %145, align 8
  %147 = fmul double %146, %107
  store double %147, ptr %18, align 8
  %148 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %48
  %149 = getelementptr inbounds [9 x double], ptr %148, i64 0, i64 8
  %150 = load double, ptr %149, align 8
  %151 = call double @cos(double noundef %147) #4
  %152 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %48
  %153 = getelementptr inbounds [9 x double], ptr %152, i64 0, i64 8
  %154 = load double, ptr %153, align 8
  %155 = call double @sin(double noundef %147) #4
  %156 = fmul double %154, %155
  %157 = call double @llvm.fmuladd.f64(double %150, double %151, double %156)
  %158 = fmul double %47, %157
  %159 = call double @llvm.fmuladd.f64(double %158, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  store double %159, ptr %11, align 8
  store i32 8, ptr %9, align 4
  br label %160

160:                                              ; preds = %162, %143
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %162 ], [ 8, %143 ]
  %161 = phi double [ %178, %162 ], [ %.lcssa4, %143 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 10
  br i1 %exitcond9, label %162, label %180

162:                                              ; preds = %160
  %163 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %48
  %164 = getelementptr inbounds [10 x double], ptr %163, i64 0, i64 %indvars.iv6
  %165 = load double, ptr %164, align 8
  %166 = fmul double %165, %107
  store double %166, ptr %19, align 8
  %167 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %48
  %168 = getelementptr inbounds [10 x double], ptr %167, i64 0, i64 %indvars.iv6
  %169 = load double, ptr %168, align 8
  %170 = call double @cos(double noundef %166) #4
  %171 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %48
  %172 = getelementptr inbounds [10 x double], ptr %171, i64 0, i64 %indvars.iv6
  %173 = load double, ptr %172, align 8
  %174 = call double @sin(double noundef %166) #4
  %175 = fmul double %173, %174
  %176 = call double @llvm.fmuladd.f64(double %169, double %170, double %175)
  %177 = fmul double %47, %176
  %178 = call double @llvm.fmuladd.f64(double %177, double f0x3E7AD7F29ABCAF48, double %161)
  store double %178, ptr %12, align 8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %179 = trunc nuw nsw i64 %indvars.iv.next7 to i32
  store i32 %179, ptr %9, align 4
  br label %160, !llvm.loop !9

180:                                              ; preds = %160
  %.lcssa2 = phi double [ %161, %160 ]
  %181 = call double @fmod(double noundef %.lcssa2, double noundef f0x401921FB54442D18) #4
  store double %181, ptr %12, align 8
  %182 = fsub double %181, %85
  store double %182, ptr %20, align 8
  %183 = call double @sin(double noundef %182) #4
  %184 = call double @llvm.fmuladd.f64(double %74, double %183, double %182)
  store double %184, ptr %21, align 8
  store i32 0, ptr %9, align 4
  br label %185

185:                                              ; preds = %287, %180
  %186 = phi i32 [ %196, %287 ], [ 0, %180 ]
  %187 = phi double [ %195, %287 ], [ %184, %180 ]
  %188 = fsub double %182, %187
  %189 = call double @sin(double noundef %187) #4
  %190 = call double @llvm.fmuladd.f64(double %74, double %189, double %188)
  %191 = call double @cos(double noundef %187) #4
  %192 = fneg double %74
  %193 = call double @llvm.fmuladd.f64(double %192, double %191, double 1.000000e+00)
  %194 = fdiv double %190, %193
  store double %194, ptr %22, align 8
  %195 = fadd double %187, %194
  store double %195, ptr %21, align 8
  %196 = add nuw nsw i32 %186, 1
  store i32 %196, ptr %9, align 4
  %exitcond10 = icmp eq i32 %186, 9
  br i1 %exitcond10, label %200, label %197

197:                                              ; preds = %185
  %198 = call double @llvm.fabs.f64(double %194)
  %199 = fcmp olt double %198, f0x3D719799812DEA11
  br i1 %199, label %200, label %287

200:                                              ; preds = %197, %185
  %.lcssa1 = phi double [ %192, %197 ], [ %192, %185 ]
  %.lcssa = phi double [ %195, %197 ], [ %195, %185 ]
  %201 = fdiv double %.lcssa, 2.000000e+00
  store double %201, ptr %23, align 8
  %202 = fadd double 1.000000e+00, %74
  %203 = fsub double 1.000000e+00, %74
  %204 = fdiv double %202, %203
  %205 = call double @sqrt(double noundef %204) #4
  %206 = call double @sin(double noundef %201) #4
  %207 = fmul double %205, %206
  %208 = call double @cos(double noundef %201) #4
  %209 = call double @atan2(double noundef %207, double noundef %208) #4
  %210 = fmul double 2.000000e+00, %209
  store double %210, ptr %24, align 8
  %211 = call double @cos(double noundef %.lcssa) #4
  %212 = call double @llvm.fmuladd.f64(double %.lcssa1, double %211, double 1.000000e+00)
  %213 = fmul double %159, %212
  store double %213, ptr %25, align 8
  %214 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %48
  %215 = load double, ptr %214, align 8
  %216 = fdiv double 1.000000e+00, %215
  %217 = fadd double 1.000000e+00, %216
  %218 = fmul double %159, %159
  %219 = fmul double %218, %159
  %220 = fdiv double %217, %219
  %221 = call double @sqrt(double noundef %220) #4
  %222 = fmul double f0x3F919D6D51A6B69A, %221
  store double %222, ptr %26, align 8
  %223 = fdiv double %95, 2.000000e+00
  %224 = call double @sin(double noundef %223) #4
  store double %224, ptr %27, align 8
  %225 = call double @cos(double noundef %106) #4
  %226 = fmul double %224, %225
  store double %226, ptr %28, align 8
  %227 = call double @sin(double noundef %106) #4
  %228 = fmul double %224, %227
  store double %228, ptr %29, align 8
  %229 = fadd double %210, %85
  store double %229, ptr %30, align 8
  %230 = call double @sin(double noundef %229) #4
  store double %230, ptr %31, align 8
  %231 = call double @cos(double noundef %229) #4
  store double %231, ptr %32, align 8
  %232 = fmul double %226, %230
  %233 = fneg double %232
  %234 = call double @llvm.fmuladd.f64(double %228, double %231, double %233)
  %235 = fmul double 2.000000e+00, %234
  store double %235, ptr %33, align 8
  %236 = call double @llvm.fmuladd.f64(double %.lcssa1, double %74, double 1.000000e+00)
  %237 = call double @sqrt(double noundef %236) #4
  %238 = fdiv double %159, %237
  store double %238, ptr %34, align 8
  %239 = call double @cos(double noundef %223) #4
  store double %239, ptr %35, align 8
  %240 = call double @sin(double noundef %85) #4
  %241 = call double @llvm.fmuladd.f64(double %74, double %240, double %230)
  %242 = fmul double %241, %238
  store double %242, ptr %36, align 8
  %243 = call double @cos(double noundef %85) #4
  %244 = call double @llvm.fmuladd.f64(double %74, double %243, double %231)
  %245 = fmul double %244, %238
  store double %245, ptr %37, align 8
  %246 = fmul double 2.000000e+00, %228
  %247 = fmul double %246, %226
  store double %247, ptr %38, align 8
  %248 = fneg double %235
  %249 = call double @llvm.fmuladd.f64(double %248, double %228, double %231)
  %250 = fmul double %213, %249
  store double %250, ptr %39, align 8
  %251 = call double @llvm.fmuladd.f64(double %235, double %226, double %230)
  %252 = fmul double %213, %251
  store double %252, ptr %40, align 8
  %253 = fmul double %248, %239
  %254 = fmul double %213, %253
  store double %254, ptr %41, align 8
  store double %250, ptr %2, align 8
  %255 = fmul double %254, f0x3FD9752E50F4B399
  %256 = fneg double %255
  %257 = call double @llvm.fmuladd.f64(double %252, double f0x3FED5C0357681EF3, double %256)
  %258 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  store double %257, ptr %258, align 8
  %259 = fmul double %254, f0x3FED5C0357681EF3
  %260 = call double @llvm.fmuladd.f64(double %252, double f0x3FD9752E50F4B399, double %259)
  %261 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  store double %260, ptr %261, align 8
  %262 = call double @llvm.fmuladd.f64(double %246, double %228, double -1.000000e+00)
  %263 = fmul double %247, %245
  %264 = call double @llvm.fmuladd.f64(double %262, double %242, double %263)
  %265 = fmul double %222, %264
  store double %265, ptr %39, align 8
  %266 = fmul double 2.000000e+00, %226
  %267 = fneg double %266
  %268 = call double @llvm.fmuladd.f64(double %267, double %226, double 1.000000e+00)
  %269 = fmul double %247, %242
  %270 = fneg double %269
  %271 = call double @llvm.fmuladd.f64(double %268, double %245, double %270)
  %272 = fmul double %222, %271
  store double %272, ptr %40, align 8
  %273 = fmul double 2.000000e+00, %239
  %274 = fmul double %226, %245
  %275 = call double @llvm.fmuladd.f64(double %228, double %242, double %274)
  %276 = fmul double %273, %275
  %277 = fmul double %222, %276
  store double %277, ptr %41, align 8
  %278 = load ptr, ptr %6, align 8
  %279 = getelementptr inbounds [3 x double], ptr %278, i64 1
  store double %265, ptr %279, align 8
  %280 = fmul double %277, f0x3FD9752E50F4B399
  %281 = fneg double %280
  %282 = call double @llvm.fmuladd.f64(double %272, double f0x3FED5C0357681EF3, double %281)
  %283 = getelementptr inbounds [3 x double], ptr %279, i64 0, i64 1
  store double %282, ptr %283, align 8
  %284 = fmul double %277, f0x3FED5C0357681EF3
  %285 = call double @llvm.fmuladd.f64(double %272, double f0x3FD9752E50F4B399, double %284)
  %286 = getelementptr inbounds [3 x double], ptr %279, i64 0, i64 2
  store double %285, ptr %286, align 8
  ret void

287:                                              ; preds = %197
  br label %185
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
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %15

15:                                               ; preds = %23, %14
  %16 = phi i32 [ %24, %23 ], [ 1, %14 ]
  %exitcond = icmp ne i32 %16, %0
  br i1 %exitcond, label %17, label %.loopexit

17:                                               ; preds = %15
  %18 = getelementptr inbounds ptr, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str) #4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i8 1, ptr %12, align 1
  br label %25

23:                                               ; preds = %17
  %24 = add nuw i32 %16, 1
  store i32 %24, ptr %6, align 4
  br label %15, !llvm.loop !10

.loopexit:                                        ; preds = %15
  br label %25

25:                                               ; preds = %.loopexit, %22
  br label %26

26:                                               ; preds = %25, %2
  store i32 0, ptr %6, align 4
  br label %27

27:                                               ; preds = %43, %26
  %28 = phi i32 [ %44, %43 ], [ 0, %26 ]
  %exitcond4 = icmp ne i32 %28, 20
  br i1 %exitcond4, label %29, label %45

29:                                               ; preds = %27
  store double f0x4142B42C80000000, ptr %9, align 16
  %30 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 1
  store double 0.000000e+00, ptr %30, align 8
  store i32 0, ptr %7, align 4
  br label %31

31:                                               ; preds = %41, %29
  %32 = phi i32 [ %42, %41 ], [ 0, %29 ]
  %exitcond3 = icmp ne i32 %32, 36525
  br i1 %exitcond3, label %33, label %43

33:                                               ; preds = %31
  %34 = load double, ptr %9, align 16
  %35 = fadd double %34, 1.000000e+00
  store double %35, ptr %9, align 16
  store i32 0, ptr %8, align 4
  br label %36

36:                                               ; preds = %37, %33
  %indvars.iv = phi i64 [ %indvars.iv.next, %37 ], [ 0, %33 ]
  %exitcond2 = icmp ne i64 %indvars.iv, 8
  br i1 %exitcond2, label %37, label %41

37:                                               ; preds = %36
  %38 = trunc nuw nsw i64 %indvars.iv to i32
  call void @planetpv(ptr noundef %9, i32 noundef %38, ptr noundef %10)
  %39 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %indvars.iv
  call void @radecdist(ptr noundef %10, ptr noundef %39)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %40 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %40, ptr %8, align 4
  br label %36, !llvm.loop !11

41:                                               ; preds = %36
  %42 = add nuw nsw i32 %32, 1
  store i32 %42, ptr %7, align 4
  br label %31, !llvm.loop !12

43:                                               ; preds = %31
  %44 = add nuw nsw i32 %28, 1
  store i32 %44, ptr %6, align 4
  br label %27, !llvm.loop !13

45:                                               ; preds = %27
  store i32 0, ptr %8, align 4
  br label %46

46:                                               ; preds = %47, %45
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %47 ], [ 0, %45 ]
  %exitcond8 = icmp ne i64 %indvars.iv5, 8
  br i1 %exitcond8, label %47, label %56

47:                                               ; preds = %46
  %48 = getelementptr inbounds [8 x [3 x double]], ptr %11, i64 0, i64 %indvars.iv5
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 1
  %51 = load double, ptr %50, align 8
  %52 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 2
  %53 = load double, ptr %52, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %49, double noundef %51, double noundef %53)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %55 = trunc nuw nsw i64 %indvars.iv.next6 to i32
  store i32 %55, ptr %8, align 4
  br label %46, !llvm.loop !14

56:                                               ; preds = %46
  %57 = call ptr @__acrt_iob_func(i32 noundef 1)
  %58 = call i32 @fflush(ptr noundef %57)
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
