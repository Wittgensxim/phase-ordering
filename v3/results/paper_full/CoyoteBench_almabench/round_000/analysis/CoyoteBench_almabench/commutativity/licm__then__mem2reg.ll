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
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %9 = fsub double %2, %8
  br label %10

10:                                               ; preds = %5, %1
  %.0 = phi double [ %9, %5 ], [ %2, %1 ]
  ret double %.0
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @planetpv(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds double, ptr %0, i64 0
  %5 = load double, ptr %4, align 8
  %6 = fsub double %5, f0x4142B42C80000000
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8
  %9 = fadd double %6, %8
  %10 = fdiv double %9, 3.652500e+05
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %11
  %13 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 0
  %14 = load double, ptr %13, align 8
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %15
  %17 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 1
  %18 = load double, ptr %17, align 8
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [8 x [3 x double]], ptr @a, i64 0, i64 %19
  %21 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 2
  %22 = load double, ptr %21, align 8
  %23 = call double @llvm.fmuladd.f64(double %22, double %10, double %18)
  %24 = call double @llvm.fmuladd.f64(double %23, double %10, double %14)
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %25
  %27 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 0
  %28 = load double, ptr %27, align 8
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %29
  %31 = getelementptr inbounds [3 x double], ptr %30, i64 0, i64 1
  %32 = load double, ptr %31, align 8
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds [8 x [3 x double]], ptr @dlm, i64 0, i64 %33
  %35 = getelementptr inbounds [3 x double], ptr %34, i64 0, i64 2
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fmuladd.f64(double %36, double %10, double %32)
  %38 = fmul double %37, %10
  %39 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %28, double %38)
  %40 = fmul double %39, f0x3ED455A5B2FF8F9D
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %41
  %43 = getelementptr inbounds [3 x double], ptr %42, i64 0, i64 0
  %44 = load double, ptr %43, align 8
  %45 = sext i32 %1 to i64
  %46 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %45
  %47 = getelementptr inbounds [3 x double], ptr %46, i64 0, i64 1
  %48 = load double, ptr %47, align 8
  %49 = sext i32 %1 to i64
  %50 = getelementptr inbounds [8 x [3 x double]], ptr @e, i64 0, i64 %49
  %51 = getelementptr inbounds [3 x double], ptr %50, i64 0, i64 2
  %52 = load double, ptr %51, align 8
  %53 = call double @llvm.fmuladd.f64(double %52, double %10, double %48)
  %54 = call double @llvm.fmuladd.f64(double %53, double %10, double %44)
  %55 = sext i32 %1 to i64
  %56 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %55
  %57 = getelementptr inbounds [3 x double], ptr %56, i64 0, i64 0
  %58 = load double, ptr %57, align 8
  %59 = sext i32 %1 to i64
  %60 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %59
  %61 = getelementptr inbounds [3 x double], ptr %60, i64 0, i64 1
  %62 = load double, ptr %61, align 8
  %63 = sext i32 %1 to i64
  %64 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %63
  %65 = getelementptr inbounds [3 x double], ptr %64, i64 0, i64 2
  %66 = load double, ptr %65, align 8
  %67 = call double @llvm.fmuladd.f64(double %66, double %10, double %62)
  %68 = fmul double %67, %10
  %69 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %58, double %68)
  %70 = fmul double %69, f0x3ED455A5B2FF8F9D
  %71 = call double @anpm(double noundef %70)
  %72 = sext i32 %1 to i64
  %73 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %72
  %74 = getelementptr inbounds [3 x double], ptr %73, i64 0, i64 0
  %75 = load double, ptr %74, align 8
  %76 = sext i32 %1 to i64
  %77 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %76
  %78 = getelementptr inbounds [3 x double], ptr %77, i64 0, i64 1
  %79 = load double, ptr %78, align 8
  %80 = sext i32 %1 to i64
  %81 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %80
  %82 = getelementptr inbounds [3 x double], ptr %81, i64 0, i64 2
  %83 = load double, ptr %82, align 8
  %84 = call double @llvm.fmuladd.f64(double %83, double %10, double %79)
  %85 = fmul double %84, %10
  %86 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %75, double %85)
  %87 = fmul double %86, f0x3ED455A5B2FF8F9D
  %88 = sext i32 %1 to i64
  %89 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %88
  %90 = getelementptr inbounds [3 x double], ptr %89, i64 0, i64 0
  %91 = load double, ptr %90, align 8
  %92 = sext i32 %1 to i64
  %93 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %92
  %94 = getelementptr inbounds [3 x double], ptr %93, i64 0, i64 1
  %95 = load double, ptr %94, align 8
  %96 = sext i32 %1 to i64
  %97 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %96
  %98 = getelementptr inbounds [3 x double], ptr %97, i64 0, i64 2
  %99 = load double, ptr %98, align 8
  %100 = call double @llvm.fmuladd.f64(double %99, double %10, double %95)
  %101 = fmul double %100, %10
  %102 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %91, double %101)
  %103 = fmul double %102, f0x3ED455A5B2FF8F9D
  %104 = call double @anpm(double noundef %103)
  %105 = fmul double f0x3FD702A41F2E9970, %10
  %106 = sext i32 %1 to i64
  %107 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %106
  %108 = sext i32 %1 to i64
  %109 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %108
  %110 = sext i32 %1 to i64
  %111 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %110
  %112 = sext i32 %1 to i64
  %113 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %112
  %114 = sext i32 %1 to i64
  %115 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %114
  %116 = sext i32 %1 to i64
  %117 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %116
  br label %118

118:                                              ; preds = %156, %3
  %119 = phi double [ %155, %156 ], [ %40, %3 ]
  %120 = phi double [ %144, %156 ], [ %24, %3 ]
  %121 = phi double [ %133, %156 ], [ undef, %3 ]
  %122 = phi double [ %129, %156 ], [ undef, %3 ]
  %123 = phi i32 [ %157, %156 ], [ 0, %3 ]
  %124 = icmp slt i32 %123, 8
  br i1 %124, label %125, label %158

125:                                              ; preds = %118
  %126 = sext i32 %123 to i64
  %127 = getelementptr inbounds [9 x double], ptr %107, i64 0, i64 %126
  %128 = load double, ptr %127, align 8
  %129 = fmul double %128, %105
  %130 = sext i32 %123 to i64
  %131 = getelementptr inbounds [10 x double], ptr %109, i64 0, i64 %130
  %132 = load double, ptr %131, align 8
  %133 = fmul double %132, %105
  %134 = sext i32 %123 to i64
  %135 = getelementptr inbounds [9 x double], ptr %111, i64 0, i64 %134
  %136 = load double, ptr %135, align 8
  %137 = call double @cos(double noundef %129) #4
  %138 = sext i32 %123 to i64
  %139 = getelementptr inbounds [9 x double], ptr %113, i64 0, i64 %138
  %140 = load double, ptr %139, align 8
  %141 = call double @sin(double noundef %129) #4
  %142 = fmul double %140, %141
  %143 = call double @llvm.fmuladd.f64(double %136, double %137, double %142)
  %144 = call double @llvm.fmuladd.f64(double %143, double f0x3E7AD7F29ABCAF48, double %120)
  %145 = sext i32 %123 to i64
  %146 = getelementptr inbounds [10 x double], ptr %115, i64 0, i64 %145
  %147 = load double, ptr %146, align 8
  %148 = call double @cos(double noundef %133) #4
  %149 = sext i32 %123 to i64
  %150 = getelementptr inbounds [10 x double], ptr %117, i64 0, i64 %149
  %151 = load double, ptr %150, align 8
  %152 = call double @sin(double noundef %133) #4
  %153 = fmul double %151, %152
  %154 = call double @llvm.fmuladd.f64(double %147, double %148, double %153)
  %155 = call double @llvm.fmuladd.f64(double %154, double f0x3E7AD7F29ABCAF48, double %119)
  br label %156

156:                                              ; preds = %125
  %157 = add nsw i32 %123, 1
  br label %118, !llvm.loop !7

158:                                              ; preds = %118
  %.lcssa8 = phi double [ %119, %118 ]
  %.lcssa6 = phi double [ %120, %118 ]
  %.lcssa4 = phi double [ %121, %118 ]
  %.lcssa2 = phi double [ %122, %118 ]
  %.lcssa = phi i32 [ %123, %118 ]
  %159 = sext i32 %1 to i64
  %160 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %159
  %161 = getelementptr inbounds [9 x double], ptr %160, i64 0, i64 8
  %162 = load double, ptr %161, align 8
  %163 = fmul double %162, %105
  %164 = sext i32 %1 to i64
  %165 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %164
  %166 = getelementptr inbounds [9 x double], ptr %165, i64 0, i64 8
  %167 = load double, ptr %166, align 8
  %168 = call double @cos(double noundef %163) #4
  %169 = sext i32 %1 to i64
  %170 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %169
  %171 = getelementptr inbounds [9 x double], ptr %170, i64 0, i64 8
  %172 = load double, ptr %171, align 8
  %173 = call double @sin(double noundef %163) #4
  %174 = fmul double %172, %173
  %175 = call double @llvm.fmuladd.f64(double %167, double %168, double %174)
  %176 = fmul double %10, %175
  %177 = call double @llvm.fmuladd.f64(double %176, double f0x3E7AD7F29ABCAF48, double %.lcssa6)
  %178 = sext i32 %1 to i64
  %179 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %178
  %180 = sext i32 %1 to i64
  %181 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %180
  %182 = sext i32 %1 to i64
  %183 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %182
  br label %184

184:                                              ; preds = %206, %158
  %185 = phi double [ %205, %206 ], [ %.lcssa8, %158 ]
  %186 = phi double [ %193, %206 ], [ %.lcssa4, %158 ]
  %187 = phi i32 [ %207, %206 ], [ 8, %158 ]
  %188 = icmp sle i32 %187, 9
  br i1 %188, label %189, label %208

189:                                              ; preds = %184
  %190 = sext i32 %187 to i64
  %191 = getelementptr inbounds [10 x double], ptr %179, i64 0, i64 %190
  %192 = load double, ptr %191, align 8
  %193 = fmul double %192, %105
  %194 = sext i32 %187 to i64
  %195 = getelementptr inbounds [10 x double], ptr %181, i64 0, i64 %194
  %196 = load double, ptr %195, align 8
  %197 = call double @cos(double noundef %193) #4
  %198 = sext i32 %187 to i64
  %199 = getelementptr inbounds [10 x double], ptr %183, i64 0, i64 %198
  %200 = load double, ptr %199, align 8
  %201 = call double @sin(double noundef %193) #4
  %202 = fmul double %200, %201
  %203 = call double @llvm.fmuladd.f64(double %196, double %197, double %202)
  %204 = fmul double %10, %203
  %205 = call double @llvm.fmuladd.f64(double %204, double f0x3E7AD7F29ABCAF48, double %185)
  br label %206

206:                                              ; preds = %189
  %207 = add nsw i32 %187, 1
  br label %184, !llvm.loop !9

208:                                              ; preds = %184
  %.lcssa14 = phi double [ %185, %184 ]
  %.lcssa12 = phi double [ %186, %184 ]
  %.lcssa10 = phi i32 [ %187, %184 ]
  %209 = call double @fmod(double noundef %.lcssa14, double noundef f0x401921FB54442D18) #4
  %210 = fsub double %209, %71
  %211 = call double @sin(double noundef %210) #4
  %212 = call double @llvm.fmuladd.f64(double %54, double %211, double %210)
  %213 = fneg double %54
  br label %214

214:                                              ; preds = %230, %208
  %215 = phi i32 [ %224, %230 ], [ 0, %208 ]
  %216 = phi double [ %223, %230 ], [ %212, %208 ]
  %217 = fsub double %210, %216
  %218 = call double @sin(double noundef %216) #4
  %219 = call double @llvm.fmuladd.f64(double %54, double %218, double %217)
  %220 = call double @cos(double noundef %216) #4
  %221 = call double @llvm.fmuladd.f64(double %213, double %220, double 1.000000e+00)
  %222 = fdiv double %219, %221
  %223 = fadd double %216, %222
  %224 = add nsw i32 %215, 1
  %225 = icmp sge i32 %224, 10
  br i1 %225, label %229, label %226

226:                                              ; preds = %214
  %227 = call double @llvm.fabs.f64(double %222)
  %228 = fcmp olt double %227, f0x3D719799812DEA11
  br i1 %228, label %229, label %230

229:                                              ; preds = %226, %214
  %.lcssa20 = phi i32 [ %224, %226 ], [ %224, %214 ]
  %.lcssa18 = phi double [ %222, %226 ], [ %222, %214 ]
  %.lcssa16 = phi double [ %223, %226 ], [ %223, %214 ]
  br label %231

230:                                              ; preds = %226
  br label %214

231:                                              ; preds = %229
  %232 = fdiv double %.lcssa16, 2.000000e+00
  %233 = fadd double 1.000000e+00, %54
  %234 = fsub double 1.000000e+00, %54
  %235 = fdiv double %233, %234
  %236 = call double @sqrt(double noundef %235) #4
  %237 = call double @sin(double noundef %232) #4
  %238 = fmul double %236, %237
  %239 = call double @cos(double noundef %232) #4
  %240 = call double @atan2(double noundef %238, double noundef %239) #4
  %241 = fmul double 2.000000e+00, %240
  %242 = call double @cos(double noundef %.lcssa16) #4
  %243 = fneg double %54
  %244 = call double @llvm.fmuladd.f64(double %243, double %242, double 1.000000e+00)
  %245 = fmul double %177, %244
  %246 = sext i32 %1 to i64
  %247 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %246
  %248 = load double, ptr %247, align 8
  %249 = fdiv double 1.000000e+00, %248
  %250 = fadd double 1.000000e+00, %249
  %251 = fmul double %177, %177
  %252 = fmul double %251, %177
  %253 = fdiv double %250, %252
  %254 = call double @sqrt(double noundef %253) #4
  %255 = fmul double f0x3F919D6D51A6B69A, %254
  %256 = fdiv double %87, 2.000000e+00
  %257 = call double @sin(double noundef %256) #4
  %258 = call double @cos(double noundef %104) #4
  %259 = fmul double %257, %258
  %260 = call double @sin(double noundef %104) #4
  %261 = fmul double %257, %260
  %262 = fadd double %241, %71
  %263 = call double @sin(double noundef %262) #4
  %264 = call double @cos(double noundef %262) #4
  %265 = fmul double %259, %263
  %266 = fneg double %265
  %267 = call double @llvm.fmuladd.f64(double %261, double %264, double %266)
  %268 = fmul double 2.000000e+00, %267
  %269 = fneg double %54
  %270 = call double @llvm.fmuladd.f64(double %269, double %54, double 1.000000e+00)
  %271 = call double @sqrt(double noundef %270) #4
  %272 = fdiv double %177, %271
  %273 = fdiv double %87, 2.000000e+00
  %274 = call double @cos(double noundef %273) #4
  %275 = call double @sin(double noundef %71) #4
  %276 = call double @llvm.fmuladd.f64(double %54, double %275, double %263)
  %277 = fmul double %276, %272
  %278 = call double @cos(double noundef %71) #4
  %279 = call double @llvm.fmuladd.f64(double %54, double %278, double %264)
  %280 = fmul double %279, %272
  %281 = fmul double 2.000000e+00, %261
  %282 = fmul double %281, %259
  %283 = fneg double %268
  %284 = call double @llvm.fmuladd.f64(double %283, double %261, double %264)
  %285 = fmul double %245, %284
  %286 = call double @llvm.fmuladd.f64(double %268, double %259, double %263)
  %287 = fmul double %245, %286
  %288 = fneg double %268
  %289 = fmul double %288, %274
  %290 = fmul double %245, %289
  %291 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %292 = getelementptr inbounds [3 x double], ptr %291, i64 0, i64 0
  store double %285, ptr %292, align 8
  %293 = fmul double %290, f0x3FD9752E50F4B399
  %294 = fneg double %293
  %295 = call double @llvm.fmuladd.f64(double %287, double f0x3FED5C0357681EF3, double %294)
  %296 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %297 = getelementptr inbounds [3 x double], ptr %296, i64 0, i64 1
  store double %295, ptr %297, align 8
  %298 = fmul double %290, f0x3FED5C0357681EF3
  %299 = call double @llvm.fmuladd.f64(double %287, double f0x3FD9752E50F4B399, double %298)
  %300 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %301 = getelementptr inbounds [3 x double], ptr %300, i64 0, i64 2
  store double %299, ptr %301, align 8
  %302 = fmul double 2.000000e+00, %261
  %303 = call double @llvm.fmuladd.f64(double %302, double %261, double -1.000000e+00)
  %304 = fmul double %282, %280
  %305 = call double @llvm.fmuladd.f64(double %303, double %277, double %304)
  %306 = fmul double %255, %305
  %307 = fmul double 2.000000e+00, %259
  %308 = fneg double %307
  %309 = call double @llvm.fmuladd.f64(double %308, double %259, double 1.000000e+00)
  %310 = fmul double %282, %277
  %311 = fneg double %310
  %312 = call double @llvm.fmuladd.f64(double %309, double %280, double %311)
  %313 = fmul double %255, %312
  %314 = fmul double 2.000000e+00, %274
  %315 = fmul double %259, %280
  %316 = call double @llvm.fmuladd.f64(double %261, double %277, double %315)
  %317 = fmul double %314, %316
  %318 = fmul double %255, %317
  %319 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %320 = getelementptr inbounds [3 x double], ptr %319, i64 0, i64 0
  store double %306, ptr %320, align 8
  %321 = fmul double %318, f0x3FD9752E50F4B399
  %322 = fneg double %321
  %323 = call double @llvm.fmuladd.f64(double %313, double f0x3FED5C0357681EF3, double %322)
  %324 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %325 = getelementptr inbounds [3 x double], ptr %324, i64 0, i64 1
  store double %323, ptr %325, align 8
  %326 = fmul double %318, f0x3FED5C0357681EF3
  %327 = call double @llvm.fmuladd.f64(double %313, double f0x3FD9752E50F4B399, double %326)
  %328 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %329 = getelementptr inbounds [3 x double], ptr %328, i64 0, i64 2
  store double %327, ptr %329, align 8
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
  %3 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %4 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 0
  %5 = load double, ptr %4, align 8
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %7 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 0
  %8 = load double, ptr %7, align 8
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %10 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %11 = load double, ptr %10, align 8
  %12 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %13 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 1
  %14 = load double, ptr %13, align 8
  %15 = fmul double %11, %14
  %16 = call double @llvm.fmuladd.f64(double %5, double %8, double %15)
  %17 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %18 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 2
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %21 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 2
  %22 = load double, ptr %21, align 8
  %23 = call double @llvm.fmuladd.f64(double %19, double %22, double %16)
  %24 = call double @sqrt(double noundef %23) #4
  %25 = getelementptr inbounds double, ptr %1, i64 2
  store double %24, ptr %25, align 8
  %26 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %27 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 1
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %30 = getelementptr inbounds [3 x double], ptr %29, i64 0, i64 0
  %31 = load double, ptr %30, align 8
  %32 = call double @atan2(double noundef %28, double noundef %31) #4
  %33 = fmul double %32, f0x400E8EC8A4AEACC4
  %34 = getelementptr inbounds double, ptr %1, i64 0
  store double %33, ptr %34, align 8
  %35 = getelementptr inbounds double, ptr %1, i64 0
  %36 = load double, ptr %35, align 8
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = getelementptr inbounds double, ptr %1, i64 0
  %40 = load double, ptr %39, align 8
  %41 = fadd double %40, 2.400000e+01
  store double %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %38, %2
  %43 = getelementptr inbounds [3 x double], ptr %0, i64 0
  %44 = getelementptr inbounds [3 x double], ptr %43, i64 0, i64 2
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds double, ptr %1, i64 2
  %47 = load double, ptr %46, align 8
  %48 = fdiv double %45, %47
  %49 = call double @asin(double noundef %48) #4
  %50 = fmul double %49, f0x404CA5DC1A63C1F8
  %51 = getelementptr inbounds double, ptr %1, i64 1
  store double %50, ptr %51, align 8
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
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %9

9:                                                ; preds = %18, %7
  %10 = phi i32 [ %19, %18 ], [ 1, %7 ]
  %11 = icmp slt i32 %10, %0
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8
  %14 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str) #4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %10, %12 ]
  br label %20

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %10, 1
  br label %9, !llvm.loop !10

.loopexit:                                        ; preds = %9
  %.lcssa = phi i32 [ %10, %9 ]
  br label %20

20:                                               ; preds = %.loopexit, %16
  br label %21

21:                                               ; preds = %20, %2
  %22 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  %23 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 1
  %24 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  %25 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  %26 = getelementptr inbounds [2 x [3 x double]], ptr %4, i64 0, i64 0
  %27 = getelementptr inbounds [2 x [3 x double]], ptr %4, i64 0, i64 0
  br label %28

28:                                               ; preds = %51, %21
  %.lcssa37.lcssa13 = phi i32 [ %.lcssa37.lcssa, %51 ], [ undef, %21 ]
  %.lcssa511 = phi i32 [ %.lcssa5, %51 ], [ undef, %21 ]
  %29 = phi i32 [ %52, %51 ], [ 0, %21 ]
  %30 = icmp slt i32 %29, 20
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  store double f0x4142B42C80000000, ptr %22, align 16
  store double 0.000000e+00, ptr %23, align 8
  br label %32

32:                                               ; preds = %48, %31
  %.lcssa37 = phi i32 [ %.lcssa3, %48 ], [ %.lcssa37.lcssa13, %31 ]
  %33 = phi i32 [ %49, %48 ], [ 0, %31 ]
  %34 = icmp slt i32 %33, 36525
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load double, ptr %24, align 16
  %37 = fadd double %36, 1.000000e+00
  store double %37, ptr %24, align 16
  br label %38

38:                                               ; preds = %45, %35
  %39 = phi i32 [ %46, %45 ], [ 0, %35 ]
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  call void @planetpv(ptr noundef %25, i32 noundef %39, ptr noundef %26)
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %42
  %44 = getelementptr inbounds [3 x double], ptr %43, i64 0, i64 0
  call void @radecdist(ptr noundef %27, ptr noundef %44)
  br label %45

45:                                               ; preds = %41
  %46 = add nsw i32 %39, 1
  br label %38, !llvm.loop !11

47:                                               ; preds = %38
  %.lcssa3 = phi i32 [ %39, %38 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %33, 1
  br label %32, !llvm.loop !12

50:                                               ; preds = %32
  %.lcssa37.lcssa = phi i32 [ %.lcssa37, %32 ]
  %.lcssa5 = phi i32 [ %33, %32 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %29, 1
  br label %28, !llvm.loop !13

53:                                               ; preds = %28
  %.lcssa37.lcssa13.lcssa = phi i32 [ %.lcssa37.lcssa13, %28 ]
  %.lcssa511.lcssa = phi i32 [ %.lcssa511, %28 ]
  %.lcssa9 = phi i32 [ %29, %28 ]
  br label %54

54:                                               ; preds = %71, %53
  %55 = phi i32 [ %72, %71 ], [ 0, %53 ]
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %58
  %60 = getelementptr inbounds [3 x double], ptr %59, i64 0, i64 0
  %61 = load double, ptr %60, align 8
  %62 = sext i32 %55 to i64
  %63 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %62
  %64 = getelementptr inbounds [3 x double], ptr %63, i64 0, i64 1
  %65 = load double, ptr %64, align 8
  %66 = sext i32 %55 to i64
  %67 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %66
  %68 = getelementptr inbounds [3 x double], ptr %67, i64 0, i64 2
  %69 = load double, ptr %68, align 8
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %61, double noundef %65, double noundef %69)
  br label %71

71:                                               ; preds = %57
  %72 = add nsw i32 %55, 1
  br label %54, !llvm.loop !14

73:                                               ; preds = %54
  %.lcssa15 = phi i32 [ %55, %54 ]
  %74 = call ptr @__acrt_iob_func(i32 noundef 1)
  %75 = call i32 @fflush(ptr noundef %74)
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
