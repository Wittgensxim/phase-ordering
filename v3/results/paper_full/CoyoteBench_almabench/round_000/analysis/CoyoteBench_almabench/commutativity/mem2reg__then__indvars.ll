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
  %53 = sext i32 %1 to i64
  %54 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %53
  %55 = getelementptr inbounds [3 x double], ptr %54, i64 0, i64 0
  %56 = load double, ptr %55, align 8
  %57 = sext i32 %1 to i64
  %58 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %57
  %59 = getelementptr inbounds [3 x double], ptr %58, i64 0, i64 1
  %60 = load double, ptr %59, align 8
  %61 = sext i32 %1 to i64
  %62 = getelementptr inbounds [8 x [3 x double]], ptr @pi, i64 0, i64 %61
  %63 = getelementptr inbounds [3 x double], ptr %62, i64 0, i64 2
  %64 = load double, ptr %63, align 8
  %65 = call double @llvm.fmuladd.f64(double %64, double %10, double %60)
  %66 = fmul double %65, %10
  %67 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %56, double %66)
  %68 = fmul double %67, f0x3ED455A5B2FF8F9D
  %69 = call double @anpm(double noundef %68)
  %70 = sext i32 %1 to i64
  %71 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %70
  %72 = getelementptr inbounds [3 x double], ptr %71, i64 0, i64 0
  %73 = load double, ptr %72, align 8
  %74 = sext i32 %1 to i64
  %75 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %74
  %76 = getelementptr inbounds [3 x double], ptr %75, i64 0, i64 1
  %77 = load double, ptr %76, align 8
  %78 = sext i32 %1 to i64
  %79 = getelementptr inbounds [8 x [3 x double]], ptr @dinc, i64 0, i64 %78
  %80 = getelementptr inbounds [3 x double], ptr %79, i64 0, i64 2
  %81 = load double, ptr %80, align 8
  %82 = sext i32 %1 to i64
  %83 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %82
  %84 = getelementptr inbounds [3 x double], ptr %83, i64 0, i64 0
  %85 = load double, ptr %84, align 8
  %86 = sext i32 %1 to i64
  %87 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %86
  %88 = getelementptr inbounds [3 x double], ptr %87, i64 0, i64 1
  %89 = load double, ptr %88, align 8
  %90 = sext i32 %1 to i64
  %91 = getelementptr inbounds [8 x [3 x double]], ptr @omega, i64 0, i64 %90
  %92 = getelementptr inbounds [3 x double], ptr %91, i64 0, i64 2
  %93 = load double, ptr %92, align 8
  %94 = call double @llvm.fmuladd.f64(double %93, double %10, double %89)
  %95 = fmul double %94, %10
  %96 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %85, double %95)
  %97 = fmul double %96, f0x3ED455A5B2FF8F9D
  %98 = call double @anpm(double noundef %97)
  %99 = fmul double f0x3FD702A41F2E9970, %10
  br label %100

100:                                              ; preds = %138, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %138 ], [ 0, %3 ]
  %.02 = phi double [ %24, %3 ], [ %124, %138 ]
  %.01 = phi double [ %40, %3 ], [ %137, %138 ]
  %exitcond = icmp ne i64 %indvars.iv, 8
  br i1 %exitcond, label %101, label %139

101:                                              ; preds = %100
  %102 = sext i32 %1 to i64
  %103 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %102
  %104 = getelementptr inbounds [9 x double], ptr %103, i64 0, i64 %indvars.iv
  %105 = load double, ptr %104, align 8
  %106 = fmul double %105, %99
  %107 = sext i32 %1 to i64
  %108 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %107
  %109 = getelementptr inbounds [10 x double], ptr %108, i64 0, i64 %indvars.iv
  %110 = load double, ptr %109, align 8
  %111 = fmul double %110, %99
  %112 = sext i32 %1 to i64
  %113 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %112
  %114 = getelementptr inbounds [9 x double], ptr %113, i64 0, i64 %indvars.iv
  %115 = load double, ptr %114, align 8
  %116 = call double @cos(double noundef %106) #4
  %117 = sext i32 %1 to i64
  %118 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %117
  %119 = getelementptr inbounds [9 x double], ptr %118, i64 0, i64 %indvars.iv
  %120 = load double, ptr %119, align 8
  %121 = call double @sin(double noundef %106) #4
  %122 = fmul double %120, %121
  %123 = call double @llvm.fmuladd.f64(double %115, double %116, double %122)
  %124 = call double @llvm.fmuladd.f64(double %123, double f0x3E7AD7F29ABCAF48, double %.02)
  %125 = sext i32 %1 to i64
  %126 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %125
  %127 = getelementptr inbounds [10 x double], ptr %126, i64 0, i64 %indvars.iv
  %128 = load double, ptr %127, align 8
  %129 = call double @cos(double noundef %111) #4
  %130 = sext i32 %1 to i64
  %131 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %130
  %132 = getelementptr inbounds [10 x double], ptr %131, i64 0, i64 %indvars.iv
  %133 = load double, ptr %132, align 8
  %134 = call double @sin(double noundef %111) #4
  %135 = fmul double %133, %134
  %136 = call double @llvm.fmuladd.f64(double %128, double %129, double %135)
  %137 = call double @llvm.fmuladd.f64(double %136, double f0x3E7AD7F29ABCAF48, double %.01)
  br label %138

138:                                              ; preds = %101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %100, !llvm.loop !7

139:                                              ; preds = %100
  %.02.lcssa = phi double [ %.02, %100 ]
  %.01.lcssa = phi double [ %.01, %100 ]
  %140 = sext i32 %1 to i64
  %141 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %140
  %142 = getelementptr inbounds [9 x double], ptr %141, i64 0, i64 8
  %143 = load double, ptr %142, align 8
  %144 = fmul double %143, %99
  %145 = sext i32 %1 to i64
  %146 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %145
  %147 = getelementptr inbounds [9 x double], ptr %146, i64 0, i64 8
  %148 = load double, ptr %147, align 8
  %149 = call double @cos(double noundef %144) #4
  %150 = sext i32 %1 to i64
  %151 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %150
  %152 = getelementptr inbounds [9 x double], ptr %151, i64 0, i64 8
  %153 = load double, ptr %152, align 8
  %154 = call double @sin(double noundef %144) #4
  br label %155

155:                                              ; preds = %176, %139
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %176 ], [ 8, %139 ]
  %.1 = phi double [ %.01.lcssa, %139 ], [ %175, %176 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 10
  br i1 %exitcond9, label %156, label %177

156:                                              ; preds = %155
  %157 = sext i32 %1 to i64
  %158 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %157
  %159 = getelementptr inbounds [10 x double], ptr %158, i64 0, i64 %indvars.iv6
  %160 = load double, ptr %159, align 8
  %161 = fmul double %160, %99
  %162 = sext i32 %1 to i64
  %163 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %162
  %164 = getelementptr inbounds [10 x double], ptr %163, i64 0, i64 %indvars.iv6
  %165 = load double, ptr %164, align 8
  %166 = call double @cos(double noundef %161) #4
  %167 = sext i32 %1 to i64
  %168 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %167
  %169 = getelementptr inbounds [10 x double], ptr %168, i64 0, i64 %indvars.iv6
  %170 = load double, ptr %169, align 8
  %171 = call double @sin(double noundef %161) #4
  %172 = fmul double %170, %171
  %173 = call double @llvm.fmuladd.f64(double %165, double %166, double %172)
  %174 = fmul double %10, %173
  %175 = call double @llvm.fmuladd.f64(double %174, double f0x3E7AD7F29ABCAF48, double %.1)
  br label %176

176:                                              ; preds = %156
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %155, !llvm.loop !9

177:                                              ; preds = %155
  %.1.lcssa = phi double [ %.1, %155 ]
  %178 = call double @llvm.fmuladd.f64(double %52, double %10, double %48)
  %179 = call double @llvm.fmuladd.f64(double %178, double %10, double %44)
  %180 = call double @llvm.fmuladd.f64(double %81, double %10, double %77)
  %181 = fmul double %180, %10
  %182 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %73, double %181)
  %183 = fmul double %182, f0x3ED455A5B2FF8F9D
  %184 = fmul double %153, %154
  %185 = call double @llvm.fmuladd.f64(double %148, double %149, double %184)
  %186 = fmul double %10, %185
  %187 = call double @llvm.fmuladd.f64(double %186, double f0x3E7AD7F29ABCAF48, double %.02.lcssa)
  %188 = call double @fmod(double noundef %.1.lcssa, double noundef f0x401921FB54442D18) #4
  %189 = fsub double %188, %69
  %190 = call double @sin(double noundef %189) #4
  %191 = call double @llvm.fmuladd.f64(double %179, double %190, double %189)
  br label %192

192:                                              ; preds = %206, %177
  %.2 = phi i32 [ 0, %177 ], [ %201, %206 ]
  %.0 = phi double [ %191, %177 ], [ %200, %206 ]
  %193 = fsub double %189, %.0
  %194 = call double @sin(double noundef %.0) #4
  %195 = call double @llvm.fmuladd.f64(double %179, double %194, double %193)
  %196 = call double @cos(double noundef %.0) #4
  %197 = fneg double %179
  %198 = call double @llvm.fmuladd.f64(double %197, double %196, double 1.000000e+00)
  %199 = fdiv double %195, %198
  %200 = fadd double %.0, %199
  %201 = add nuw nsw i32 %.2, 1
  %exitcond10 = icmp eq i32 %.2, 9
  br i1 %exitcond10, label %205, label %202

202:                                              ; preds = %192
  %203 = call double @llvm.fabs.f64(double %199)
  %204 = fcmp olt double %203, f0x3D719799812DEA11
  br i1 %204, label %205, label %206

205:                                              ; preds = %202, %192
  %.lcssa = phi double [ %200, %202 ], [ %200, %192 ]
  br label %207

206:                                              ; preds = %202
  br label %192

207:                                              ; preds = %205
  %208 = fdiv double %.lcssa, 2.000000e+00
  %209 = fadd double 1.000000e+00, %179
  %210 = fsub double 1.000000e+00, %179
  %211 = fdiv double %209, %210
  %212 = call double @sqrt(double noundef %211) #4
  %213 = call double @sin(double noundef %208) #4
  %214 = fmul double %212, %213
  %215 = call double @cos(double noundef %208) #4
  %216 = call double @atan2(double noundef %214, double noundef %215) #4
  %217 = fmul double 2.000000e+00, %216
  %218 = call double @cos(double noundef %.lcssa) #4
  %219 = fneg double %179
  %220 = call double @llvm.fmuladd.f64(double %219, double %218, double 1.000000e+00)
  %221 = fmul double %187, %220
  %222 = sext i32 %1 to i64
  %223 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %222
  %224 = load double, ptr %223, align 8
  %225 = fdiv double 1.000000e+00, %224
  %226 = fadd double 1.000000e+00, %225
  %227 = fmul double %187, %187
  %228 = fmul double %227, %187
  %229 = fdiv double %226, %228
  %230 = call double @sqrt(double noundef %229) #4
  %231 = fmul double f0x3F919D6D51A6B69A, %230
  %232 = fdiv double %183, 2.000000e+00
  %233 = call double @sin(double noundef %232) #4
  %234 = call double @cos(double noundef %98) #4
  %235 = fmul double %233, %234
  %236 = call double @sin(double noundef %98) #4
  %237 = fmul double %233, %236
  %238 = fadd double %217, %69
  %239 = call double @sin(double noundef %238) #4
  %240 = call double @cos(double noundef %238) #4
  %241 = fmul double %235, %239
  %242 = fneg double %241
  %243 = call double @llvm.fmuladd.f64(double %237, double %240, double %242)
  %244 = fmul double 2.000000e+00, %243
  %245 = fneg double %179
  %246 = call double @llvm.fmuladd.f64(double %245, double %179, double 1.000000e+00)
  %247 = call double @sqrt(double noundef %246) #4
  %248 = fdiv double %187, %247
  %249 = fdiv double %183, 2.000000e+00
  %250 = call double @cos(double noundef %249) #4
  %251 = call double @sin(double noundef %69) #4
  %252 = call double @llvm.fmuladd.f64(double %179, double %251, double %239)
  %253 = fmul double %252, %248
  %254 = call double @cos(double noundef %69) #4
  %255 = call double @llvm.fmuladd.f64(double %179, double %254, double %240)
  %256 = fmul double %255, %248
  %257 = fmul double 2.000000e+00, %237
  %258 = fmul double %257, %235
  %259 = fneg double %244
  %260 = call double @llvm.fmuladd.f64(double %259, double %237, double %240)
  %261 = fmul double %221, %260
  %262 = call double @llvm.fmuladd.f64(double %244, double %235, double %239)
  %263 = fmul double %221, %262
  %264 = fneg double %244
  %265 = fmul double %264, %250
  %266 = fmul double %221, %265
  %267 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %268 = getelementptr inbounds [3 x double], ptr %267, i64 0, i64 0
  store double %261, ptr %268, align 8
  %269 = fmul double %266, f0x3FD9752E50F4B399
  %270 = fneg double %269
  %271 = call double @llvm.fmuladd.f64(double %263, double f0x3FED5C0357681EF3, double %270)
  %272 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %273 = getelementptr inbounds [3 x double], ptr %272, i64 0, i64 1
  store double %271, ptr %273, align 8
  %274 = fmul double %266, f0x3FED5C0357681EF3
  %275 = call double @llvm.fmuladd.f64(double %263, double f0x3FD9752E50F4B399, double %274)
  %276 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %277 = getelementptr inbounds [3 x double], ptr %276, i64 0, i64 2
  store double %275, ptr %277, align 8
  %278 = fmul double 2.000000e+00, %237
  %279 = call double @llvm.fmuladd.f64(double %278, double %237, double -1.000000e+00)
  %280 = fmul double %258, %256
  %281 = call double @llvm.fmuladd.f64(double %279, double %253, double %280)
  %282 = fmul double %231, %281
  %283 = fmul double 2.000000e+00, %235
  %284 = fneg double %283
  %285 = call double @llvm.fmuladd.f64(double %284, double %235, double 1.000000e+00)
  %286 = fmul double %258, %253
  %287 = fneg double %286
  %288 = call double @llvm.fmuladd.f64(double %285, double %256, double %287)
  %289 = fmul double %231, %288
  %290 = fmul double 2.000000e+00, %250
  %291 = fmul double %235, %256
  %292 = call double @llvm.fmuladd.f64(double %237, double %253, double %291)
  %293 = fmul double %290, %292
  %294 = fmul double %231, %293
  %295 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %296 = getelementptr inbounds [3 x double], ptr %295, i64 0, i64 0
  store double %282, ptr %296, align 8
  %297 = fmul double %294, f0x3FD9752E50F4B399
  %298 = fneg double %297
  %299 = call double @llvm.fmuladd.f64(double %289, double f0x3FED5C0357681EF3, double %298)
  %300 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %301 = getelementptr inbounds [3 x double], ptr %300, i64 0, i64 1
  store double %299, ptr %301, align 8
  %302 = fmul double %294, f0x3FED5C0357681EF3
  %303 = call double @llvm.fmuladd.f64(double %289, double f0x3FD9752E50F4B399, double %302)
  %304 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %305 = getelementptr inbounds [3 x double], ptr %304, i64 0, i64 2
  store double %303, ptr %305, align 8
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
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %16, %7
  %.02 = phi i32 [ 1, %7 ], [ %17, %16 ]
  %exitcond = icmp ne i32 %.02, %0
  br i1 %exitcond, label %9, label %.loopexit

9:                                                ; preds = %8
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str) #4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %18

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15
  %17 = add nuw i32 %.02, 1
  br label %8, !llvm.loop !10

.loopexit:                                        ; preds = %8
  br label %18

18:                                               ; preds = %.loopexit, %14
  br label %19

19:                                               ; preds = %18, %2
  br label %20

20:                                               ; preds = %41, %19
  %.13 = phi i32 [ 0, %19 ], [ %42, %41 ]
  %exitcond7 = icmp ne i32 %.13, 20
  br i1 %exitcond7, label %21, label %43

21:                                               ; preds = %20
  %22 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  store double f0x4142B42C80000000, ptr %22, align 16
  %23 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 1
  store double 0.000000e+00, ptr %23, align 8
  br label %24

24:                                               ; preds = %38, %21
  %.01 = phi i32 [ 0, %21 ], [ %39, %38 ]
  %exitcond6 = icmp ne i32 %.01, 36525
  br i1 %exitcond6, label %25, label %40

25:                                               ; preds = %24
  %26 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  %27 = load double, ptr %26, align 16
  %28 = fadd double %27, 1.000000e+00
  store double %28, ptr %26, align 16
  br label %29

29:                                               ; preds = %36, %25
  %indvars.iv = phi i64 [ %indvars.iv.next, %36 ], [ 0, %25 ]
  %exitcond5 = icmp ne i64 %indvars.iv, 8
  br i1 %exitcond5, label %30, label %37

30:                                               ; preds = %29
  %31 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  %32 = getelementptr inbounds [2 x [3 x double]], ptr %4, i64 0, i64 0
  %33 = trunc nuw nsw i64 %indvars.iv to i32
  call void @planetpv(ptr noundef %31, i32 noundef %33, ptr noundef %32)
  %34 = getelementptr inbounds [2 x [3 x double]], ptr %4, i64 0, i64 0
  %35 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %indvars.iv
  call void @radecdist(ptr noundef %34, ptr noundef %35)
  br label %36

36:                                               ; preds = %30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %29, !llvm.loop !11

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.01, 1
  br label %24, !llvm.loop !12

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.13, 1
  br label %20, !llvm.loop !13

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %55, %43
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %55 ], [ 0, %43 ]
  %exitcond11 = icmp ne i64 %indvars.iv8, 8
  br i1 %exitcond11, label %45, label %56

45:                                               ; preds = %44
  %46 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %indvars.iv8
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %indvars.iv8
  %49 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 1
  %50 = load double, ptr %49, align 8
  %51 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 %indvars.iv8
  %52 = getelementptr inbounds [3 x double], ptr %51, i64 0, i64 2
  %53 = load double, ptr %52, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %47, double noundef %50, double noundef %53)
  br label %55

55:                                               ; preds = %45
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %44, !llvm.loop !14

56:                                               ; preds = %44
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
