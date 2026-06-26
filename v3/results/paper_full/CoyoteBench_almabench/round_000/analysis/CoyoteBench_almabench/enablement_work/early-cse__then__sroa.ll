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
  %2 = call double @fmod(double noundef %0, double noundef f0x401921FB54442D18) #4
  %3 = call double @llvm.fabs.f64(double %2)
  %4 = fcmp oge double %3, f0x400921FB54442D18
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = select i1 %6, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %8 = fsub double %2, %7
  br label %9

9:                                                ; preds = %5, %1
  %.0 = phi double [ %8, %5 ], [ %2, %1 ]
  ret double %.0
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @planetpv(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load double, ptr %0, align 8
  %5 = fsub double %4, f0x4142B42C80000000
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8
  %8 = fadd double %5, %7
  %9 = fdiv double %8, 3.652500e+05
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %16 = load double, ptr %15, align 8
  %17 = call double @llvm.fmuladd.f64(double %16, double %9, double %14)
  %18 = call double @llvm.fmuladd.f64(double %17, double %9, double %12)
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %19
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 2
  %25 = load double, ptr %24, align 8
  %26 = call double @llvm.fmuladd.f64(double %25, double %9, double %23)
  %27 = fmul double %26, %9
  %28 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %21, double %27)
  %29 = fmul double %28, f0x3ED455A5B2FF8F9D
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = getelementptr inbounds [3 x double], ptr %31, i64 0, i64 1
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds [3 x double], ptr %31, i64 0, i64 2
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fmuladd.f64(double %36, double %9, double %34)
  %38 = call double @llvm.fmuladd.f64(double %37, double %9, double %32)
  %39 = sext i32 %1 to i64
  %40 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds [3 x double], ptr %40, i64 0, i64 1
  %43 = load double, ptr %42, align 8
  %44 = getelementptr inbounds [3 x double], ptr %40, i64 0, i64 2
  %45 = load double, ptr %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %45, double %9, double %43)
  %47 = fmul double %46, %9
  %48 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %41, double %47)
  %49 = fmul double %48, f0x3ED455A5B2FF8F9D
  %50 = call double @anpm(double noundef %49)
  %51 = sext i32 %1 to i64
  %52 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds [3 x double], ptr %52, i64 0, i64 1
  %55 = load double, ptr %54, align 8
  %56 = getelementptr inbounds [3 x double], ptr %52, i64 0, i64 2
  %57 = load double, ptr %56, align 8
  %58 = call double @llvm.fmuladd.f64(double %57, double %9, double %55)
  %59 = fmul double %58, %9
  %60 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %53, double %59)
  %61 = fmul double %60, f0x3ED455A5B2FF8F9D
  %62 = sext i32 %1 to i64
  %63 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = getelementptr inbounds [3 x double], ptr %63, i64 0, i64 1
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds [3 x double], ptr %63, i64 0, i64 2
  %68 = load double, ptr %67, align 8
  %69 = call double @llvm.fmuladd.f64(double %68, double %9, double %66)
  %70 = fmul double %69, %9
  %71 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %64, double %70)
  %72 = fmul double %71, f0x3ED455A5B2FF8F9D
  %73 = call double @anpm(double noundef %72)
  %74 = fmul double f0x3FD702A41F2E9970, %9
  br label %75

75:                                               ; preds = %120, %3
  %.0138 = phi double [ %29, %3 ], [ %119, %120 ]
  %.0137 = phi double [ %18, %3 ], [ %104, %120 ]
  %.0 = phi i32 [ 0, %3 ], [ %121, %120 ]
  %76 = icmp slt i32 %.0, 8
  br i1 %76, label %77, label %122

77:                                               ; preds = %75
  %78 = sext i32 %1 to i64
  %79 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %78
  %80 = sext i32 %.0 to i64
  %81 = getelementptr inbounds [9 x double], ptr %79, i64 0, i64 %80
  %82 = load double, ptr %81, align 8
  %83 = fmul double %82, %74
  %84 = sext i32 %1 to i64
  %85 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %84
  %86 = sext i32 %.0 to i64
  %87 = getelementptr inbounds [10 x double], ptr %85, i64 0, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = fmul double %88, %74
  %90 = sext i32 %1 to i64
  %91 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %90
  %92 = sext i32 %.0 to i64
  %93 = getelementptr inbounds [9 x double], ptr %91, i64 0, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = call double @cos(double noundef %83) #4
  %96 = sext i32 %1 to i64
  %97 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %96
  %98 = sext i32 %.0 to i64
  %99 = getelementptr inbounds [9 x double], ptr %97, i64 0, i64 %98
  %100 = load double, ptr %99, align 8
  %101 = call double @sin(double noundef %83) #4
  %102 = fmul double %100, %101
  %103 = call double @llvm.fmuladd.f64(double %94, double %95, double %102)
  %104 = call double @llvm.fmuladd.f64(double %103, double f0x3E7AD7F29ABCAF48, double %.0137)
  %105 = sext i32 %1 to i64
  %106 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %105
  %107 = sext i32 %.0 to i64
  %108 = getelementptr inbounds [10 x double], ptr %106, i64 0, i64 %107
  %109 = load double, ptr %108, align 8
  %110 = call double @cos(double noundef %89) #4
  %111 = sext i32 %1 to i64
  %112 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %111
  %113 = sext i32 %.0 to i64
  %114 = getelementptr inbounds [10 x double], ptr %112, i64 0, i64 %113
  %115 = load double, ptr %114, align 8
  %116 = call double @sin(double noundef %89) #4
  %117 = fmul double %115, %116
  %118 = call double @llvm.fmuladd.f64(double %109, double %110, double %117)
  %119 = call double @llvm.fmuladd.f64(double %118, double f0x3E7AD7F29ABCAF48, double %.0138)
  br label %120

120:                                              ; preds = %77
  %121 = add nsw i32 %.0, 1
  br label %75, !llvm.loop !7

122:                                              ; preds = %75
  %123 = sext i32 %1 to i64
  %124 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %123
  %125 = getelementptr inbounds [9 x double], ptr %124, i64 0, i64 8
  %126 = load double, ptr %125, align 8
  %127 = fmul double %126, %74
  %128 = sext i32 %1 to i64
  %129 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %128
  %130 = getelementptr inbounds [9 x double], ptr %129, i64 0, i64 8
  %131 = load double, ptr %130, align 8
  %132 = call double @cos(double noundef %127) #4
  %133 = sext i32 %1 to i64
  %134 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %133
  %135 = getelementptr inbounds [9 x double], ptr %134, i64 0, i64 8
  %136 = load double, ptr %135, align 8
  %137 = call double @sin(double noundef %127) #4
  %138 = fmul double %136, %137
  %139 = call double @llvm.fmuladd.f64(double %131, double %132, double %138)
  %140 = fmul double %9, %139
  %141 = call double @llvm.fmuladd.f64(double %140, double f0x3E7AD7F29ABCAF48, double %.0137)
  br label %142

142:                                              ; preds = %167, %122
  %.1139 = phi double [ %.0138, %122 ], [ %166, %167 ]
  %.1 = phi i32 [ 8, %122 ], [ %168, %167 ]
  %143 = icmp sle i32 %.1, 9
  br i1 %143, label %144, label %169

144:                                              ; preds = %142
  %145 = sext i32 %1 to i64
  %146 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %145
  %147 = sext i32 %.1 to i64
  %148 = getelementptr inbounds [10 x double], ptr %146, i64 0, i64 %147
  %149 = load double, ptr %148, align 8
  %150 = fmul double %149, %74
  %151 = sext i32 %1 to i64
  %152 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %151
  %153 = sext i32 %.1 to i64
  %154 = getelementptr inbounds [10 x double], ptr %152, i64 0, i64 %153
  %155 = load double, ptr %154, align 8
  %156 = call double @cos(double noundef %150) #4
  %157 = sext i32 %1 to i64
  %158 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %157
  %159 = sext i32 %.1 to i64
  %160 = getelementptr inbounds [10 x double], ptr %158, i64 0, i64 %159
  %161 = load double, ptr %160, align 8
  %162 = call double @sin(double noundef %150) #4
  %163 = fmul double %161, %162
  %164 = call double @llvm.fmuladd.f64(double %155, double %156, double %163)
  %165 = fmul double %9, %164
  %166 = call double @llvm.fmuladd.f64(double %165, double f0x3E7AD7F29ABCAF48, double %.1139)
  br label %167

167:                                              ; preds = %144
  %168 = add nsw i32 %.1, 1
  br label %142, !llvm.loop !9

169:                                              ; preds = %142
  %170 = call double @fmod(double noundef %.1139, double noundef f0x401921FB54442D18) #4
  %171 = fsub double %170, %50
  %172 = call double @sin(double noundef %171) #4
  %173 = call double @llvm.fmuladd.f64(double %38, double %172, double %171)
  br label %174

174:                                              ; preds = %189, %169
  %.0140 = phi double [ %173, %169 ], [ %182, %189 ]
  %.2 = phi i32 [ 0, %169 ], [ %183, %189 ]
  %175 = fsub double %171, %.0140
  %176 = call double @sin(double noundef %.0140) #4
  %177 = call double @llvm.fmuladd.f64(double %38, double %176, double %175)
  %178 = call double @cos(double noundef %.0140) #4
  %179 = fneg double %38
  %180 = call double @llvm.fmuladd.f64(double %179, double %178, double 1.000000e+00)
  %181 = fdiv double %177, %180
  %182 = fadd double %.0140, %181
  %183 = add nsw i32 %.2, 1
  %184 = icmp sge i32 %183, 10
  br i1 %184, label %188, label %185

185:                                              ; preds = %174
  %186 = call double @llvm.fabs.f64(double %181)
  %187 = fcmp olt double %186, f0x3D719799812DEA11
  br i1 %187, label %188, label %189

188:                                              ; preds = %185, %174
  br label %190

189:                                              ; preds = %185
  br label %174

190:                                              ; preds = %188
  %191 = fdiv double %182, 2.000000e+00
  %192 = fadd double 1.000000e+00, %38
  %193 = fsub double 1.000000e+00, %38
  %194 = fdiv double %192, %193
  %195 = call double @sqrt(double noundef %194) #4
  %196 = call double @sin(double noundef %191) #4
  %197 = fmul double %195, %196
  %198 = call double @cos(double noundef %191) #4
  %199 = call double @atan2(double noundef %197, double noundef %198) #4
  %200 = fmul double 2.000000e+00, %199
  %201 = call double @cos(double noundef %182) #4
  %202 = fneg double %38
  %203 = call double @llvm.fmuladd.f64(double %202, double %201, double 1.000000e+00)
  %204 = fmul double %141, %203
  %205 = sext i32 %1 to i64
  %206 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %205
  %207 = load double, ptr %206, align 8
  %208 = fdiv double 1.000000e+00, %207
  %209 = fadd double 1.000000e+00, %208
  %210 = fmul double %141, %141
  %211 = fmul double %210, %141
  %212 = fdiv double %209, %211
  %213 = call double @sqrt(double noundef %212) #4
  %214 = fmul double f0x3F919D6D51A6B69A, %213
  %215 = fdiv double %61, 2.000000e+00
  %216 = call double @sin(double noundef %215) #4
  %217 = call double @cos(double noundef %73) #4
  %218 = fmul double %216, %217
  %219 = call double @sin(double noundef %73) #4
  %220 = fmul double %216, %219
  %221 = fadd double %200, %50
  %222 = call double @sin(double noundef %221) #4
  %223 = call double @cos(double noundef %221) #4
  %224 = fmul double %218, %222
  %225 = fneg double %224
  %226 = call double @llvm.fmuladd.f64(double %220, double %223, double %225)
  %227 = fmul double 2.000000e+00, %226
  %228 = fneg double %38
  %229 = call double @llvm.fmuladd.f64(double %228, double %38, double 1.000000e+00)
  %230 = call double @sqrt(double noundef %229) #4
  %231 = fdiv double %141, %230
  %232 = fdiv double %61, 2.000000e+00
  %233 = call double @cos(double noundef %232) #4
  %234 = call double @sin(double noundef %50) #4
  %235 = call double @llvm.fmuladd.f64(double %38, double %234, double %222)
  %236 = fmul double %235, %231
  %237 = call double @cos(double noundef %50) #4
  %238 = call double @llvm.fmuladd.f64(double %38, double %237, double %223)
  %239 = fmul double %238, %231
  %240 = fmul double 2.000000e+00, %220
  %241 = fmul double %240, %218
  %242 = fneg double %227
  %243 = call double @llvm.fmuladd.f64(double %242, double %220, double %223)
  %244 = fmul double %204, %243
  %245 = call double @llvm.fmuladd.f64(double %227, double %218, double %222)
  %246 = fmul double %204, %245
  %247 = fneg double %227
  %248 = fmul double %247, %233
  %249 = fmul double %204, %248
  store double %244, ptr %2, align 8
  %250 = fmul double %249, f0x3FD9752E50F4B399
  %251 = fneg double %250
  %252 = call double @llvm.fmuladd.f64(double %246, double f0x3FED5C0357681EF3, double %251)
  %253 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  store double %252, ptr %253, align 8
  %254 = fmul double %249, f0x3FED5C0357681EF3
  %255 = call double @llvm.fmuladd.f64(double %246, double f0x3FD9752E50F4B399, double %254)
  %256 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  store double %255, ptr %256, align 8
  %257 = fmul double 2.000000e+00, %220
  %258 = call double @llvm.fmuladd.f64(double %257, double %220, double -1.000000e+00)
  %259 = fmul double %241, %239
  %260 = call double @llvm.fmuladd.f64(double %258, double %236, double %259)
  %261 = fmul double %214, %260
  %262 = fmul double 2.000000e+00, %218
  %263 = fneg double %262
  %264 = call double @llvm.fmuladd.f64(double %263, double %218, double 1.000000e+00)
  %265 = fmul double %241, %236
  %266 = fneg double %265
  %267 = call double @llvm.fmuladd.f64(double %264, double %239, double %266)
  %268 = fmul double %214, %267
  %269 = fmul double 2.000000e+00, %233
  %270 = fmul double %218, %239
  %271 = call double @llvm.fmuladd.f64(double %220, double %236, double %270)
  %272 = fmul double %269, %271
  %273 = fmul double %214, %272
  %274 = getelementptr inbounds [3 x double], ptr %2, i64 1
  store double %261, ptr %274, align 8
  %275 = fmul double %273, f0x3FD9752E50F4B399
  %276 = fneg double %275
  %277 = call double @llvm.fmuladd.f64(double %268, double f0x3FED5C0357681EF3, double %276)
  %278 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %279 = getelementptr inbounds [3 x double], ptr %278, i64 0, i64 1
  store double %277, ptr %279, align 8
  %280 = fmul double %273, f0x3FED5C0357681EF3
  %281 = call double @llvm.fmuladd.f64(double %268, double f0x3FD9752E50F4B399, double %280)
  %282 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %283 = getelementptr inbounds [3 x double], ptr %282, i64 0, i64 2
  store double %281, ptr %283, align 8
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
  %3 = load double, ptr %0, align 8
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %5 = load double, ptr %4, align 8
  %6 = fmul double %5, %5
  %7 = call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %9 = load double, ptr %8, align 8
  %10 = call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = call double @sqrt(double noundef %10) #4
  %12 = getelementptr inbounds double, ptr %1, i64 2
  store double %11, ptr %12, align 8
  %13 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %14 = load double, ptr %13, align 8
  %15 = load double, ptr %0, align 8
  %16 = call double @atan2(double noundef %14, double noundef %15) #4
  %17 = fmul double %16, f0x400E8EC8A4AEACC4
  store double %17, ptr %1, align 8
  %18 = load double, ptr %1, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = fadd double %18, 2.400000e+01
  store double %21, ptr %1, align 8
  br label %22

22:                                               ; preds = %20, %2
  %23 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %1, i64 2
  %26 = load double, ptr %25, align 8
  %27 = fdiv double %24, %26
  %28 = call double @asin(double noundef %27) #4
  %29 = fmul double %28, f0x404CA5DC1A63C1F8
  %30 = getelementptr inbounds double, ptr %1, i64 1
  store double %29, ptr %30, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x double], align 16
  %4 = alloca [2 x [3 x double]], align 16
  %5 = alloca [8 x [3 x double]], align 16
  %6 = icmp sgt i32 %0, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %17, %7
  %.014 = phi i32 [ 1, %7 ], [ %18, %17 ]
  %9 = icmp slt i32 %.014, %0
  br i1 %9, label %10, label %19

10:                                               ; preds = %8
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str) #4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %19

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %.014, 1
  br label %8, !llvm.loop !10

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19, %2
  br label %21

21:                                               ; preds = %41, %20
  %.115 = phi i32 [ 0, %20 ], [ %42, %41 ]
  %22 = icmp slt i32 %.115, 20
  br i1 %22, label %23, label %43

23:                                               ; preds = %21
  store double f0x4142B42C80000000, ptr %3, align 16
  %24 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 1
  store double 0.000000e+00, ptr %24, align 8
  br label %25

25:                                               ; preds = %38, %23
  %.013 = phi i32 [ 0, %23 ], [ %39, %38 ]
  %26 = icmp slt i32 %.013, 36525
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = load double, ptr %3, align 16
  %29 = fadd double %28, 1.000000e+00
  store double %29, ptr %3, align 16
  br label %30

30:                                               ; preds = %35, %27
  %.0 = phi i32 [ 0, %27 ], [ %36, %35 ]
  %31 = icmp slt i32 %.0, 8
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  call void @planetpv(ptr noundef %3, i32 noundef %.0, ptr noundef %4)
  %33 = sext i32 %.0 to i64
  %34 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %33
  call void @radecdist(ptr noundef %4, ptr noundef %34)
  br label %35

35:                                               ; preds = %32
  %36 = add nsw i32 %.0, 1
  br label %30, !llvm.loop !11

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = add nsw i32 %.013, 1
  br label %25, !llvm.loop !12

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %.115, 1
  br label %21, !llvm.loop !13

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %55, %43
  %.1 = phi i32 [ 0, %43 ], [ %56, %55 ]
  %45 = icmp slt i32 %.1, 8
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = sext i32 %.1 to i64
  %48 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 1
  %51 = load double, ptr %50, align 8
  %52 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 2
  %53 = load double, ptr %52, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %49, double noundef %51, double noundef %53)
  br label %55

55:                                               ; preds = %46
  %56 = add nsw i32 %.1, 1
  br label %44, !llvm.loop !14

57:                                               ; preds = %44
  %58 = call ptr @__acrt_iob_func(i32 noundef 1)
  %59 = call i32 @fflush(ptr noundef %58)
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
