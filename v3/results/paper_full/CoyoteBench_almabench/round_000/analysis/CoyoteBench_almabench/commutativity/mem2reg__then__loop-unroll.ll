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
  br label %106

106:                                              ; preds = %3
  br label %107

107:                                              ; preds = %106
  %108 = sext i32 %1 to i64
  %109 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %108
  %110 = load double, ptr %109, align 8
  %111 = fmul double %110, %105
  %112 = sext i32 %1 to i64
  %113 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = fmul double %114, %105
  %116 = sext i32 %1 to i64
  %117 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %116
  %118 = load double, ptr %117, align 8
  %119 = call double @cos(double noundef %111) #4
  %120 = sext i32 %1 to i64
  %121 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %120
  %122 = load double, ptr %121, align 8
  %123 = call double @sin(double noundef %111) #4
  %124 = fmul double %122, %123
  %125 = call double @llvm.fmuladd.f64(double %118, double %119, double %124)
  %126 = call double @llvm.fmuladd.f64(double %125, double f0x3E7AD7F29ABCAF48, double %24)
  %127 = sext i32 %1 to i64
  %128 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %127
  %129 = load double, ptr %128, align 8
  %130 = call double @cos(double noundef %115) #4
  %131 = sext i32 %1 to i64
  %132 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %131
  %133 = load double, ptr %132, align 8
  %134 = call double @sin(double noundef %115) #4
  %135 = fmul double %133, %134
  %136 = call double @llvm.fmuladd.f64(double %129, double %130, double %135)
  %137 = call double @llvm.fmuladd.f64(double %136, double f0x3E7AD7F29ABCAF48, double %40)
  br label %138

138:                                              ; preds = %107
  br label %139

139:                                              ; preds = %138
  %140 = sext i32 %1 to i64
  %141 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %140
  %142 = getelementptr inbounds [9 x double], ptr %141, i64 0, i64 1
  %143 = load double, ptr %142, align 8
  %144 = fmul double %143, %105
  %145 = sext i32 %1 to i64
  %146 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %145
  %147 = getelementptr inbounds [10 x double], ptr %146, i64 0, i64 1
  %148 = load double, ptr %147, align 8
  %149 = fmul double %148, %105
  %150 = sext i32 %1 to i64
  %151 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %150
  %152 = getelementptr inbounds [9 x double], ptr %151, i64 0, i64 1
  %153 = load double, ptr %152, align 8
  %154 = call double @cos(double noundef %144) #4
  %155 = sext i32 %1 to i64
  %156 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %155
  %157 = getelementptr inbounds [9 x double], ptr %156, i64 0, i64 1
  %158 = load double, ptr %157, align 8
  %159 = call double @sin(double noundef %144) #4
  %160 = fmul double %158, %159
  %161 = call double @llvm.fmuladd.f64(double %153, double %154, double %160)
  %162 = call double @llvm.fmuladd.f64(double %161, double f0x3E7AD7F29ABCAF48, double %126)
  %163 = sext i32 %1 to i64
  %164 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %163
  %165 = getelementptr inbounds [10 x double], ptr %164, i64 0, i64 1
  %166 = load double, ptr %165, align 8
  %167 = call double @cos(double noundef %149) #4
  %168 = sext i32 %1 to i64
  %169 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %168
  %170 = getelementptr inbounds [10 x double], ptr %169, i64 0, i64 1
  %171 = load double, ptr %170, align 8
  %172 = call double @sin(double noundef %149) #4
  %173 = fmul double %171, %172
  %174 = call double @llvm.fmuladd.f64(double %166, double %167, double %173)
  %175 = call double @llvm.fmuladd.f64(double %174, double f0x3E7AD7F29ABCAF48, double %137)
  br label %176

176:                                              ; preds = %139
  br label %177

177:                                              ; preds = %176
  %178 = sext i32 %1 to i64
  %179 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %178
  %180 = getelementptr inbounds [9 x double], ptr %179, i64 0, i64 2
  %181 = load double, ptr %180, align 8
  %182 = fmul double %181, %105
  %183 = sext i32 %1 to i64
  %184 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %183
  %185 = getelementptr inbounds [10 x double], ptr %184, i64 0, i64 2
  %186 = load double, ptr %185, align 8
  %187 = fmul double %186, %105
  %188 = sext i32 %1 to i64
  %189 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %188
  %190 = getelementptr inbounds [9 x double], ptr %189, i64 0, i64 2
  %191 = load double, ptr %190, align 8
  %192 = call double @cos(double noundef %182) #4
  %193 = sext i32 %1 to i64
  %194 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %193
  %195 = getelementptr inbounds [9 x double], ptr %194, i64 0, i64 2
  %196 = load double, ptr %195, align 8
  %197 = call double @sin(double noundef %182) #4
  %198 = fmul double %196, %197
  %199 = call double @llvm.fmuladd.f64(double %191, double %192, double %198)
  %200 = call double @llvm.fmuladd.f64(double %199, double f0x3E7AD7F29ABCAF48, double %162)
  %201 = sext i32 %1 to i64
  %202 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %201
  %203 = getelementptr inbounds [10 x double], ptr %202, i64 0, i64 2
  %204 = load double, ptr %203, align 8
  %205 = call double @cos(double noundef %187) #4
  %206 = sext i32 %1 to i64
  %207 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %206
  %208 = getelementptr inbounds [10 x double], ptr %207, i64 0, i64 2
  %209 = load double, ptr %208, align 8
  %210 = call double @sin(double noundef %187) #4
  %211 = fmul double %209, %210
  %212 = call double @llvm.fmuladd.f64(double %204, double %205, double %211)
  %213 = call double @llvm.fmuladd.f64(double %212, double f0x3E7AD7F29ABCAF48, double %175)
  br label %214

214:                                              ; preds = %177
  br label %215

215:                                              ; preds = %214
  %216 = sext i32 %1 to i64
  %217 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %216
  %218 = getelementptr inbounds [9 x double], ptr %217, i64 0, i64 3
  %219 = load double, ptr %218, align 8
  %220 = fmul double %219, %105
  %221 = sext i32 %1 to i64
  %222 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %221
  %223 = getelementptr inbounds [10 x double], ptr %222, i64 0, i64 3
  %224 = load double, ptr %223, align 8
  %225 = fmul double %224, %105
  %226 = sext i32 %1 to i64
  %227 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %226
  %228 = getelementptr inbounds [9 x double], ptr %227, i64 0, i64 3
  %229 = load double, ptr %228, align 8
  %230 = call double @cos(double noundef %220) #4
  %231 = sext i32 %1 to i64
  %232 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %231
  %233 = getelementptr inbounds [9 x double], ptr %232, i64 0, i64 3
  %234 = load double, ptr %233, align 8
  %235 = call double @sin(double noundef %220) #4
  %236 = fmul double %234, %235
  %237 = call double @llvm.fmuladd.f64(double %229, double %230, double %236)
  %238 = call double @llvm.fmuladd.f64(double %237, double f0x3E7AD7F29ABCAF48, double %200)
  %239 = sext i32 %1 to i64
  %240 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %239
  %241 = getelementptr inbounds [10 x double], ptr %240, i64 0, i64 3
  %242 = load double, ptr %241, align 8
  %243 = call double @cos(double noundef %225) #4
  %244 = sext i32 %1 to i64
  %245 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %244
  %246 = getelementptr inbounds [10 x double], ptr %245, i64 0, i64 3
  %247 = load double, ptr %246, align 8
  %248 = call double @sin(double noundef %225) #4
  %249 = fmul double %247, %248
  %250 = call double @llvm.fmuladd.f64(double %242, double %243, double %249)
  %251 = call double @llvm.fmuladd.f64(double %250, double f0x3E7AD7F29ABCAF48, double %213)
  br label %252

252:                                              ; preds = %215
  br label %253

253:                                              ; preds = %252
  %254 = sext i32 %1 to i64
  %255 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %254
  %256 = getelementptr inbounds [9 x double], ptr %255, i64 0, i64 4
  %257 = load double, ptr %256, align 8
  %258 = fmul double %257, %105
  %259 = sext i32 %1 to i64
  %260 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %259
  %261 = getelementptr inbounds [10 x double], ptr %260, i64 0, i64 4
  %262 = load double, ptr %261, align 8
  %263 = fmul double %262, %105
  %264 = sext i32 %1 to i64
  %265 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %264
  %266 = getelementptr inbounds [9 x double], ptr %265, i64 0, i64 4
  %267 = load double, ptr %266, align 8
  %268 = call double @cos(double noundef %258) #4
  %269 = sext i32 %1 to i64
  %270 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %269
  %271 = getelementptr inbounds [9 x double], ptr %270, i64 0, i64 4
  %272 = load double, ptr %271, align 8
  %273 = call double @sin(double noundef %258) #4
  %274 = fmul double %272, %273
  %275 = call double @llvm.fmuladd.f64(double %267, double %268, double %274)
  %276 = call double @llvm.fmuladd.f64(double %275, double f0x3E7AD7F29ABCAF48, double %238)
  %277 = sext i32 %1 to i64
  %278 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %277
  %279 = getelementptr inbounds [10 x double], ptr %278, i64 0, i64 4
  %280 = load double, ptr %279, align 8
  %281 = call double @cos(double noundef %263) #4
  %282 = sext i32 %1 to i64
  %283 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %282
  %284 = getelementptr inbounds [10 x double], ptr %283, i64 0, i64 4
  %285 = load double, ptr %284, align 8
  %286 = call double @sin(double noundef %263) #4
  %287 = fmul double %285, %286
  %288 = call double @llvm.fmuladd.f64(double %280, double %281, double %287)
  %289 = call double @llvm.fmuladd.f64(double %288, double f0x3E7AD7F29ABCAF48, double %251)
  br label %290

290:                                              ; preds = %253
  br label %291

291:                                              ; preds = %290
  %292 = sext i32 %1 to i64
  %293 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %292
  %294 = getelementptr inbounds [9 x double], ptr %293, i64 0, i64 5
  %295 = load double, ptr %294, align 8
  %296 = fmul double %295, %105
  %297 = sext i32 %1 to i64
  %298 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %297
  %299 = getelementptr inbounds [10 x double], ptr %298, i64 0, i64 5
  %300 = load double, ptr %299, align 8
  %301 = fmul double %300, %105
  %302 = sext i32 %1 to i64
  %303 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %302
  %304 = getelementptr inbounds [9 x double], ptr %303, i64 0, i64 5
  %305 = load double, ptr %304, align 8
  %306 = call double @cos(double noundef %296) #4
  %307 = sext i32 %1 to i64
  %308 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %307
  %309 = getelementptr inbounds [9 x double], ptr %308, i64 0, i64 5
  %310 = load double, ptr %309, align 8
  %311 = call double @sin(double noundef %296) #4
  %312 = fmul double %310, %311
  %313 = call double @llvm.fmuladd.f64(double %305, double %306, double %312)
  %314 = call double @llvm.fmuladd.f64(double %313, double f0x3E7AD7F29ABCAF48, double %276)
  %315 = sext i32 %1 to i64
  %316 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %315
  %317 = getelementptr inbounds [10 x double], ptr %316, i64 0, i64 5
  %318 = load double, ptr %317, align 8
  %319 = call double @cos(double noundef %301) #4
  %320 = sext i32 %1 to i64
  %321 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %320
  %322 = getelementptr inbounds [10 x double], ptr %321, i64 0, i64 5
  %323 = load double, ptr %322, align 8
  %324 = call double @sin(double noundef %301) #4
  %325 = fmul double %323, %324
  %326 = call double @llvm.fmuladd.f64(double %318, double %319, double %325)
  %327 = call double @llvm.fmuladd.f64(double %326, double f0x3E7AD7F29ABCAF48, double %289)
  br label %328

328:                                              ; preds = %291
  br label %329

329:                                              ; preds = %328
  %330 = sext i32 %1 to i64
  %331 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %330
  %332 = getelementptr inbounds [9 x double], ptr %331, i64 0, i64 6
  %333 = load double, ptr %332, align 8
  %334 = fmul double %333, %105
  %335 = sext i32 %1 to i64
  %336 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %335
  %337 = getelementptr inbounds [10 x double], ptr %336, i64 0, i64 6
  %338 = load double, ptr %337, align 8
  %339 = fmul double %338, %105
  %340 = sext i32 %1 to i64
  %341 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %340
  %342 = getelementptr inbounds [9 x double], ptr %341, i64 0, i64 6
  %343 = load double, ptr %342, align 8
  %344 = call double @cos(double noundef %334) #4
  %345 = sext i32 %1 to i64
  %346 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %345
  %347 = getelementptr inbounds [9 x double], ptr %346, i64 0, i64 6
  %348 = load double, ptr %347, align 8
  %349 = call double @sin(double noundef %334) #4
  %350 = fmul double %348, %349
  %351 = call double @llvm.fmuladd.f64(double %343, double %344, double %350)
  %352 = call double @llvm.fmuladd.f64(double %351, double f0x3E7AD7F29ABCAF48, double %314)
  %353 = sext i32 %1 to i64
  %354 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %353
  %355 = getelementptr inbounds [10 x double], ptr %354, i64 0, i64 6
  %356 = load double, ptr %355, align 8
  %357 = call double @cos(double noundef %339) #4
  %358 = sext i32 %1 to i64
  %359 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %358
  %360 = getelementptr inbounds [10 x double], ptr %359, i64 0, i64 6
  %361 = load double, ptr %360, align 8
  %362 = call double @sin(double noundef %339) #4
  %363 = fmul double %361, %362
  %364 = call double @llvm.fmuladd.f64(double %356, double %357, double %363)
  %365 = call double @llvm.fmuladd.f64(double %364, double f0x3E7AD7F29ABCAF48, double %327)
  br label %366

366:                                              ; preds = %329
  br label %367

367:                                              ; preds = %366
  %368 = sext i32 %1 to i64
  %369 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %368
  %370 = getelementptr inbounds [9 x double], ptr %369, i64 0, i64 7
  %371 = load double, ptr %370, align 8
  %372 = fmul double %371, %105
  %373 = sext i32 %1 to i64
  %374 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %373
  %375 = getelementptr inbounds [10 x double], ptr %374, i64 0, i64 7
  %376 = load double, ptr %375, align 8
  %377 = fmul double %376, %105
  %378 = sext i32 %1 to i64
  %379 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %378
  %380 = getelementptr inbounds [9 x double], ptr %379, i64 0, i64 7
  %381 = load double, ptr %380, align 8
  %382 = call double @cos(double noundef %372) #4
  %383 = sext i32 %1 to i64
  %384 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %383
  %385 = getelementptr inbounds [9 x double], ptr %384, i64 0, i64 7
  %386 = load double, ptr %385, align 8
  %387 = call double @sin(double noundef %372) #4
  %388 = fmul double %386, %387
  %389 = call double @llvm.fmuladd.f64(double %381, double %382, double %388)
  %390 = call double @llvm.fmuladd.f64(double %389, double f0x3E7AD7F29ABCAF48, double %352)
  %391 = sext i32 %1 to i64
  %392 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %391
  %393 = getelementptr inbounds [10 x double], ptr %392, i64 0, i64 7
  %394 = load double, ptr %393, align 8
  %395 = call double @cos(double noundef %377) #4
  %396 = sext i32 %1 to i64
  %397 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %396
  %398 = getelementptr inbounds [10 x double], ptr %397, i64 0, i64 7
  %399 = load double, ptr %398, align 8
  %400 = call double @sin(double noundef %377) #4
  %401 = fmul double %399, %400
  %402 = call double @llvm.fmuladd.f64(double %394, double %395, double %401)
  %403 = call double @llvm.fmuladd.f64(double %402, double f0x3E7AD7F29ABCAF48, double %365)
  br label %404

404:                                              ; preds = %367
  br i1 false, label %405, label %421

405:                                              ; preds = %404
  %406 = sext i32 %1 to i64
  %407 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %406
  %408 = getelementptr inbounds [9 x double], ptr %407, i64 0, i64 8
  %409 = load double, ptr %408, align 8
  %410 = fmul double %409, %105
  %411 = sext i32 %1 to i64
  %412 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %411
  %413 = getelementptr inbounds [10 x double], ptr %412, i64 0, i64 8
  %414 = load double, ptr %413, align 8
  %415 = fmul double %414, %105
  %416 = call double @cos(double noundef %410) #4
  %417 = call double @sin(double noundef %410) #4
  %418 = call double @cos(double noundef %415) #4
  %419 = call double @sin(double noundef %415) #4
  br label %420

420:                                              ; preds = %405
  unreachable

421:                                              ; preds = %404
  %.02.lcssa = phi double [ %390, %404 ]
  %.01.lcssa = phi double [ %403, %404 ]
  %422 = sext i32 %1 to i64
  %423 = getelementptr inbounds [8 x [9 x double]], ptr @kp, i64 0, i64 %422
  %424 = getelementptr inbounds [9 x double], ptr %423, i64 0, i64 8
  %425 = load double, ptr %424, align 8
  %426 = fmul double %425, %105
  %427 = sext i32 %1 to i64
  %428 = getelementptr inbounds [8 x [9 x double]], ptr @ca, i64 0, i64 %427
  %429 = getelementptr inbounds [9 x double], ptr %428, i64 0, i64 8
  %430 = load double, ptr %429, align 8
  %431 = call double @cos(double noundef %426) #4
  %432 = sext i32 %1 to i64
  %433 = getelementptr inbounds [8 x [9 x double]], ptr @sa, i64 0, i64 %432
  %434 = getelementptr inbounds [9 x double], ptr %433, i64 0, i64 8
  %435 = load double, ptr %434, align 8
  %436 = call double @sin(double noundef %426) #4
  %437 = fmul double %435, %436
  %438 = call double @llvm.fmuladd.f64(double %430, double %431, double %437)
  %439 = fmul double %10, %438
  %440 = call double @llvm.fmuladd.f64(double %439, double f0x3E7AD7F29ABCAF48, double %.02.lcssa)
  br label %441

441:                                              ; preds = %421
  br label %442

442:                                              ; preds = %441
  %443 = sext i32 %1 to i64
  %444 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %443
  %445 = getelementptr inbounds [10 x double], ptr %444, i64 0, i64 8
  %446 = load double, ptr %445, align 8
  %447 = fmul double %446, %105
  %448 = sext i32 %1 to i64
  %449 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %448
  %450 = getelementptr inbounds [10 x double], ptr %449, i64 0, i64 8
  %451 = load double, ptr %450, align 8
  %452 = call double @cos(double noundef %447) #4
  %453 = sext i32 %1 to i64
  %454 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %453
  %455 = getelementptr inbounds [10 x double], ptr %454, i64 0, i64 8
  %456 = load double, ptr %455, align 8
  %457 = call double @sin(double noundef %447) #4
  %458 = fmul double %456, %457
  %459 = call double @llvm.fmuladd.f64(double %451, double %452, double %458)
  %460 = fmul double %10, %459
  %461 = call double @llvm.fmuladd.f64(double %460, double f0x3E7AD7F29ABCAF48, double %.01.lcssa)
  br label %462

462:                                              ; preds = %442
  br label %463

463:                                              ; preds = %462
  %464 = sext i32 %1 to i64
  %465 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %464
  %466 = getelementptr inbounds [10 x double], ptr %465, i64 0, i64 9
  %467 = load double, ptr %466, align 8
  %468 = fmul double %467, %105
  %469 = sext i32 %1 to i64
  %470 = getelementptr inbounds [8 x [10 x double]], ptr @cl, i64 0, i64 %469
  %471 = getelementptr inbounds [10 x double], ptr %470, i64 0, i64 9
  %472 = load double, ptr %471, align 8
  %473 = call double @cos(double noundef %468) #4
  %474 = sext i32 %1 to i64
  %475 = getelementptr inbounds [8 x [10 x double]], ptr @sl, i64 0, i64 %474
  %476 = getelementptr inbounds [10 x double], ptr %475, i64 0, i64 9
  %477 = load double, ptr %476, align 8
  %478 = call double @sin(double noundef %468) #4
  %479 = fmul double %477, %478
  %480 = call double @llvm.fmuladd.f64(double %472, double %473, double %479)
  %481 = fmul double %10, %480
  %482 = call double @llvm.fmuladd.f64(double %481, double f0x3E7AD7F29ABCAF48, double %461)
  br label %483

483:                                              ; preds = %463
  br i1 false, label %484, label %493

484:                                              ; preds = %483
  %485 = sext i32 %1 to i64
  %486 = getelementptr inbounds [8 x [10 x double]], ptr @kq, i64 0, i64 %485
  %487 = getelementptr inbounds [10 x double], ptr %486, i64 0, i64 10
  %488 = load double, ptr %487, align 8
  %489 = fmul double %488, %105
  %490 = call double @cos(double noundef %489) #4
  %491 = call double @sin(double noundef %489) #4
  br label %492

492:                                              ; preds = %484
  unreachable

493:                                              ; preds = %483
  %.1.lcssa = phi double [ %482, %483 ]
  %494 = call double @fmod(double noundef %.1.lcssa, double noundef f0x401921FB54442D18) #4
  %495 = fsub double %494, %71
  %496 = call double @sin(double noundef %495) #4
  %497 = call double @llvm.fmuladd.f64(double %54, double %496, double %495)
  br label %498

498:                                              ; preds = %493
  %499 = fsub double %495, %497
  %500 = call double @sin(double noundef %497) #4
  %501 = call double @llvm.fmuladd.f64(double %54, double %500, double %499)
  %502 = call double @cos(double noundef %497) #4
  %503 = fneg double %54
  %504 = call double @llvm.fmuladd.f64(double %503, double %502, double 1.000000e+00)
  %505 = fdiv double %501, %504
  %506 = fadd double %497, %505
  br label %507

507:                                              ; preds = %498
  %508 = call double @llvm.fabs.f64(double %505)
  %509 = fcmp olt double %508, f0x3D719799812DEA11
  br i1 %509, label %510, label %511

510:                                              ; preds = %616, %607, %604, %592, %580, %568, %556, %544, %532, %520, %507
  %.lcssa = phi double [ %506, %507 ], [ %615, %616 ], [ %615, %607 ], [ %519, %520 ], [ %603, %604 ], [ %531, %532 ], [ %567, %568 ], [ %543, %544 ], [ %591, %592 ], [ %555, %556 ], [ %579, %580 ]
  br label %620

511:                                              ; preds = %507
  %512 = fsub double %495, %506
  %513 = call double @sin(double noundef %506) #4
  %514 = call double @llvm.fmuladd.f64(double %54, double %513, double %512)
  %515 = call double @cos(double noundef %506) #4
  %516 = fneg double %54
  %517 = call double @llvm.fmuladd.f64(double %516, double %515, double 1.000000e+00)
  %518 = fdiv double %514, %517
  %519 = fadd double %506, %518
  br label %520

520:                                              ; preds = %511
  %521 = call double @llvm.fabs.f64(double %518)
  %522 = fcmp olt double %521, f0x3D719799812DEA11
  br i1 %522, label %510, label %523

523:                                              ; preds = %520
  %524 = fsub double %495, %519
  %525 = call double @sin(double noundef %519) #4
  %526 = call double @llvm.fmuladd.f64(double %54, double %525, double %524)
  %527 = call double @cos(double noundef %519) #4
  %528 = fneg double %54
  %529 = call double @llvm.fmuladd.f64(double %528, double %527, double 1.000000e+00)
  %530 = fdiv double %526, %529
  %531 = fadd double %519, %530
  br label %532

532:                                              ; preds = %523
  %533 = call double @llvm.fabs.f64(double %530)
  %534 = fcmp olt double %533, f0x3D719799812DEA11
  br i1 %534, label %510, label %535

535:                                              ; preds = %532
  %536 = fsub double %495, %531
  %537 = call double @sin(double noundef %531) #4
  %538 = call double @llvm.fmuladd.f64(double %54, double %537, double %536)
  %539 = call double @cos(double noundef %531) #4
  %540 = fneg double %54
  %541 = call double @llvm.fmuladd.f64(double %540, double %539, double 1.000000e+00)
  %542 = fdiv double %538, %541
  %543 = fadd double %531, %542
  br label %544

544:                                              ; preds = %535
  %545 = call double @llvm.fabs.f64(double %542)
  %546 = fcmp olt double %545, f0x3D719799812DEA11
  br i1 %546, label %510, label %547

547:                                              ; preds = %544
  %548 = fsub double %495, %543
  %549 = call double @sin(double noundef %543) #4
  %550 = call double @llvm.fmuladd.f64(double %54, double %549, double %548)
  %551 = call double @cos(double noundef %543) #4
  %552 = fneg double %54
  %553 = call double @llvm.fmuladd.f64(double %552, double %551, double 1.000000e+00)
  %554 = fdiv double %550, %553
  %555 = fadd double %543, %554
  br label %556

556:                                              ; preds = %547
  %557 = call double @llvm.fabs.f64(double %554)
  %558 = fcmp olt double %557, f0x3D719799812DEA11
  br i1 %558, label %510, label %559

559:                                              ; preds = %556
  %560 = fsub double %495, %555
  %561 = call double @sin(double noundef %555) #4
  %562 = call double @llvm.fmuladd.f64(double %54, double %561, double %560)
  %563 = call double @cos(double noundef %555) #4
  %564 = fneg double %54
  %565 = call double @llvm.fmuladd.f64(double %564, double %563, double 1.000000e+00)
  %566 = fdiv double %562, %565
  %567 = fadd double %555, %566
  br label %568

568:                                              ; preds = %559
  %569 = call double @llvm.fabs.f64(double %566)
  %570 = fcmp olt double %569, f0x3D719799812DEA11
  br i1 %570, label %510, label %571

571:                                              ; preds = %568
  %572 = fsub double %495, %567
  %573 = call double @sin(double noundef %567) #4
  %574 = call double @llvm.fmuladd.f64(double %54, double %573, double %572)
  %575 = call double @cos(double noundef %567) #4
  %576 = fneg double %54
  %577 = call double @llvm.fmuladd.f64(double %576, double %575, double 1.000000e+00)
  %578 = fdiv double %574, %577
  %579 = fadd double %567, %578
  br label %580

580:                                              ; preds = %571
  %581 = call double @llvm.fabs.f64(double %578)
  %582 = fcmp olt double %581, f0x3D719799812DEA11
  br i1 %582, label %510, label %583

583:                                              ; preds = %580
  %584 = fsub double %495, %579
  %585 = call double @sin(double noundef %579) #4
  %586 = call double @llvm.fmuladd.f64(double %54, double %585, double %584)
  %587 = call double @cos(double noundef %579) #4
  %588 = fneg double %54
  %589 = call double @llvm.fmuladd.f64(double %588, double %587, double 1.000000e+00)
  %590 = fdiv double %586, %589
  %591 = fadd double %579, %590
  br label %592

592:                                              ; preds = %583
  %593 = call double @llvm.fabs.f64(double %590)
  %594 = fcmp olt double %593, f0x3D719799812DEA11
  br i1 %594, label %510, label %595

595:                                              ; preds = %592
  %596 = fsub double %495, %591
  %597 = call double @sin(double noundef %591) #4
  %598 = call double @llvm.fmuladd.f64(double %54, double %597, double %596)
  %599 = call double @cos(double noundef %591) #4
  %600 = fneg double %54
  %601 = call double @llvm.fmuladd.f64(double %600, double %599, double 1.000000e+00)
  %602 = fdiv double %598, %601
  %603 = fadd double %591, %602
  br label %604

604:                                              ; preds = %595
  %605 = call double @llvm.fabs.f64(double %602)
  %606 = fcmp olt double %605, f0x3D719799812DEA11
  br i1 %606, label %510, label %607

607:                                              ; preds = %604
  %608 = fsub double %495, %603
  %609 = call double @sin(double noundef %603) #4
  %610 = call double @llvm.fmuladd.f64(double %54, double %609, double %608)
  %611 = call double @cos(double noundef %603) #4
  %612 = fneg double %54
  %613 = call double @llvm.fmuladd.f64(double %612, double %611, double 1.000000e+00)
  %614 = fdiv double %610, %613
  %615 = fadd double %603, %614
  br i1 true, label %510, label %616

616:                                              ; preds = %607
  %617 = call double @llvm.fabs.f64(double %614)
  %618 = fcmp olt double %617, f0x3D719799812DEA11
  br i1 %618, label %510, label %619

619:                                              ; preds = %616
  unreachable

620:                                              ; preds = %510
  %621 = fdiv double %.lcssa, 2.000000e+00
  %622 = fadd double 1.000000e+00, %54
  %623 = fsub double 1.000000e+00, %54
  %624 = fdiv double %622, %623
  %625 = call double @sqrt(double noundef %624) #4
  %626 = call double @sin(double noundef %621) #4
  %627 = fmul double %625, %626
  %628 = call double @cos(double noundef %621) #4
  %629 = call double @atan2(double noundef %627, double noundef %628) #4
  %630 = fmul double 2.000000e+00, %629
  %631 = call double @cos(double noundef %.lcssa) #4
  %632 = fneg double %54
  %633 = call double @llvm.fmuladd.f64(double %632, double %631, double 1.000000e+00)
  %634 = fmul double %440, %633
  %635 = sext i32 %1 to i64
  %636 = getelementptr inbounds [8 x double], ptr @amas, i64 0, i64 %635
  %637 = load double, ptr %636, align 8
  %638 = fdiv double 1.000000e+00, %637
  %639 = fadd double 1.000000e+00, %638
  %640 = fmul double %440, %440
  %641 = fmul double %640, %440
  %642 = fdiv double %639, %641
  %643 = call double @sqrt(double noundef %642) #4
  %644 = fmul double f0x3F919D6D51A6B69A, %643
  %645 = fdiv double %87, 2.000000e+00
  %646 = call double @sin(double noundef %645) #4
  %647 = call double @cos(double noundef %104) #4
  %648 = fmul double %646, %647
  %649 = call double @sin(double noundef %104) #4
  %650 = fmul double %646, %649
  %651 = fadd double %630, %71
  %652 = call double @sin(double noundef %651) #4
  %653 = call double @cos(double noundef %651) #4
  %654 = fmul double %648, %652
  %655 = fneg double %654
  %656 = call double @llvm.fmuladd.f64(double %650, double %653, double %655)
  %657 = fmul double 2.000000e+00, %656
  %658 = fneg double %54
  %659 = call double @llvm.fmuladd.f64(double %658, double %54, double 1.000000e+00)
  %660 = call double @sqrt(double noundef %659) #4
  %661 = fdiv double %440, %660
  %662 = fdiv double %87, 2.000000e+00
  %663 = call double @cos(double noundef %662) #4
  %664 = call double @sin(double noundef %71) #4
  %665 = call double @llvm.fmuladd.f64(double %54, double %664, double %652)
  %666 = fmul double %665, %661
  %667 = call double @cos(double noundef %71) #4
  %668 = call double @llvm.fmuladd.f64(double %54, double %667, double %653)
  %669 = fmul double %668, %661
  %670 = fmul double 2.000000e+00, %650
  %671 = fmul double %670, %648
  %672 = fneg double %657
  %673 = call double @llvm.fmuladd.f64(double %672, double %650, double %653)
  %674 = fmul double %634, %673
  %675 = call double @llvm.fmuladd.f64(double %657, double %648, double %652)
  %676 = fmul double %634, %675
  %677 = fneg double %657
  %678 = fmul double %677, %663
  %679 = fmul double %634, %678
  %680 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %681 = getelementptr inbounds [3 x double], ptr %680, i64 0, i64 0
  store double %674, ptr %681, align 8
  %682 = fmul double %679, f0x3FD9752E50F4B399
  %683 = fneg double %682
  %684 = call double @llvm.fmuladd.f64(double %676, double f0x3FED5C0357681EF3, double %683)
  %685 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %686 = getelementptr inbounds [3 x double], ptr %685, i64 0, i64 1
  store double %684, ptr %686, align 8
  %687 = fmul double %679, f0x3FED5C0357681EF3
  %688 = call double @llvm.fmuladd.f64(double %676, double f0x3FD9752E50F4B399, double %687)
  %689 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %690 = getelementptr inbounds [3 x double], ptr %689, i64 0, i64 2
  store double %688, ptr %690, align 8
  %691 = fmul double 2.000000e+00, %650
  %692 = call double @llvm.fmuladd.f64(double %691, double %650, double -1.000000e+00)
  %693 = fmul double %671, %669
  %694 = call double @llvm.fmuladd.f64(double %692, double %666, double %693)
  %695 = fmul double %644, %694
  %696 = fmul double 2.000000e+00, %648
  %697 = fneg double %696
  %698 = call double @llvm.fmuladd.f64(double %697, double %648, double 1.000000e+00)
  %699 = fmul double %671, %666
  %700 = fneg double %699
  %701 = call double @llvm.fmuladd.f64(double %698, double %669, double %700)
  %702 = fmul double %644, %701
  %703 = fmul double 2.000000e+00, %663
  %704 = fmul double %648, %669
  %705 = call double @llvm.fmuladd.f64(double %650, double %666, double %704)
  %706 = fmul double %703, %705
  %707 = fmul double %644, %706
  %708 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %709 = getelementptr inbounds [3 x double], ptr %708, i64 0, i64 0
  store double %695, ptr %709, align 8
  %710 = fmul double %707, f0x3FD9752E50F4B399
  %711 = fneg double %710
  %712 = call double @llvm.fmuladd.f64(double %702, double f0x3FED5C0357681EF3, double %711)
  %713 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %714 = getelementptr inbounds [3 x double], ptr %713, i64 0, i64 1
  store double %712, ptr %714, align 8
  %715 = fmul double %707, f0x3FED5C0357681EF3
  %716 = call double @llvm.fmuladd.f64(double %702, double f0x3FD9752E50F4B399, double %715)
  %717 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %718 = getelementptr inbounds [3 x double], ptr %717, i64 0, i64 2
  store double %716, ptr %718, align 8
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
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %17, %7
  %.02 = phi i32 [ 1, %7 ], [ %18, %17 ]
  %9 = icmp slt i32 %.02, %0
  br i1 %9, label %10, label %.loopexit

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
  %18 = add nsw i32 %.02, 1
  br label %8, !llvm.loop !7

.loopexit:                                        ; preds = %8
  br label %19

19:                                               ; preds = %.loopexit, %15
  br label %20

20:                                               ; preds = %19, %2
  br label %21

21:                                               ; preds = %63, %20
  %.13 = phi i32 [ 0, %20 ], [ %64, %63 ]
  %22 = icmp slt i32 %.13, 20
  br i1 %22, label %23, label %65

23:                                               ; preds = %21
  %24 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  store double f0x4142B42C80000000, ptr %24, align 16
  %25 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 1
  store double 0.000000e+00, ptr %25, align 8
  br label %26

26:                                               ; preds = %60, %23
  %.01 = phi i32 [ 0, %23 ], [ %61, %60 ]
  %27 = icmp slt i32 %.01, 36525
  br i1 %27, label %28, label %62

28:                                               ; preds = %26
  %29 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 0
  %30 = load double, ptr %29, align 16
  %31 = fadd double %30, 1.000000e+00
  store double %31, ptr %29, align 16
  br label %32

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32
  call void @planetpv(ptr noundef %3, i32 noundef 0, ptr noundef %4)
  call void @radecdist(ptr noundef %4, ptr noundef %5)
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  call void @planetpv(ptr noundef %3, i32 noundef 1, ptr noundef %4)
  %36 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 1
  call void @radecdist(ptr noundef %4, ptr noundef %36)
  br label %37

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  call void @planetpv(ptr noundef %3, i32 noundef 2, ptr noundef %4)
  %39 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 2
  call void @radecdist(ptr noundef %4, ptr noundef %39)
  br label %40

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  call void @planetpv(ptr noundef %3, i32 noundef 3, ptr noundef %4)
  %42 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 3
  call void @radecdist(ptr noundef %4, ptr noundef %42)
  br label %43

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  call void @planetpv(ptr noundef %3, i32 noundef 4, ptr noundef %4)
  %45 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 4
  call void @radecdist(ptr noundef %4, ptr noundef %45)
  br label %46

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  call void @planetpv(ptr noundef %3, i32 noundef 5, ptr noundef %4)
  %48 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 5
  call void @radecdist(ptr noundef %4, ptr noundef %48)
  br label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  call void @planetpv(ptr noundef %3, i32 noundef 6, ptr noundef %4)
  %51 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 6
  call void @radecdist(ptr noundef %4, ptr noundef %51)
  br label %52

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  call void @planetpv(ptr noundef %3, i32 noundef 7, ptr noundef %4)
  %54 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 7
  call void @radecdist(ptr noundef %4, ptr noundef %54)
  br label %55

55:                                               ; preds = %53
  br i1 false, label %56, label %59

56:                                               ; preds = %55
  call void @planetpv(ptr noundef %3, i32 noundef 8, ptr noundef %4)
  %57 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 8
  call void @radecdist(ptr noundef %4, ptr noundef %57)
  br label %58

58:                                               ; preds = %56
  unreachable

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %.01, 1
  br label %26, !llvm.loop !9

62:                                               ; preds = %26
  br label %63

63:                                               ; preds = %62
  %64 = add nsw i32 %.13, 1
  br label %21, !llvm.loop !10

65:                                               ; preds = %21
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = load double, ptr %5, align 8
  %69 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %72 = load double, ptr %71, align 8
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %68, double noundef %70, double noundef %72)
  br label %74

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 1
  %77 = load double, ptr %76, align 8
  %78 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 1
  %79 = getelementptr inbounds [3 x double], ptr %78, i64 0, i64 1
  %80 = load double, ptr %79, align 8
  %81 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 1
  %82 = getelementptr inbounds [3 x double], ptr %81, i64 0, i64 2
  %83 = load double, ptr %82, align 8
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %77, double noundef %80, double noundef %83)
  br label %85

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 2
  %88 = load double, ptr %87, align 8
  %89 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 2
  %90 = getelementptr inbounds [3 x double], ptr %89, i64 0, i64 1
  %91 = load double, ptr %90, align 8
  %92 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 2
  %93 = getelementptr inbounds [3 x double], ptr %92, i64 0, i64 2
  %94 = load double, ptr %93, align 8
  %95 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %88, double noundef %91, double noundef %94)
  br label %96

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 3
  %99 = load double, ptr %98, align 8
  %100 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 3
  %101 = getelementptr inbounds [3 x double], ptr %100, i64 0, i64 1
  %102 = load double, ptr %101, align 8
  %103 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 3
  %104 = getelementptr inbounds [3 x double], ptr %103, i64 0, i64 2
  %105 = load double, ptr %104, align 8
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %99, double noundef %102, double noundef %105)
  br label %107

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 4
  %110 = load double, ptr %109, align 8
  %111 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 4
  %112 = getelementptr inbounds [3 x double], ptr %111, i64 0, i64 1
  %113 = load double, ptr %112, align 8
  %114 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 4
  %115 = getelementptr inbounds [3 x double], ptr %114, i64 0, i64 2
  %116 = load double, ptr %115, align 8
  %117 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %110, double noundef %113, double noundef %116)
  br label %118

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 5
  %121 = load double, ptr %120, align 8
  %122 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 5
  %123 = getelementptr inbounds [3 x double], ptr %122, i64 0, i64 1
  %124 = load double, ptr %123, align 8
  %125 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 5
  %126 = getelementptr inbounds [3 x double], ptr %125, i64 0, i64 2
  %127 = load double, ptr %126, align 8
  %128 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %121, double noundef %124, double noundef %127)
  br label %129

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 6
  %132 = load double, ptr %131, align 8
  %133 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 6
  %134 = getelementptr inbounds [3 x double], ptr %133, i64 0, i64 1
  %135 = load double, ptr %134, align 8
  %136 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 6
  %137 = getelementptr inbounds [3 x double], ptr %136, i64 0, i64 2
  %138 = load double, ptr %137, align 8
  %139 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %132, double noundef %135, double noundef %138)
  br label %140

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 7
  %143 = load double, ptr %142, align 8
  %144 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 7
  %145 = getelementptr inbounds [3 x double], ptr %144, i64 0, i64 1
  %146 = load double, ptr %145, align 8
  %147 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 7
  %148 = getelementptr inbounds [3 x double], ptr %147, i64 0, i64 2
  %149 = load double, ptr %148, align 8
  %150 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %143, double noundef %146, double noundef %149)
  br label %151

151:                                              ; preds = %141
  br i1 false, label %152, label %163

152:                                              ; preds = %151
  %153 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 8
  %154 = load double, ptr %153, align 8
  %155 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 8
  %156 = getelementptr inbounds [3 x double], ptr %155, i64 0, i64 1
  %157 = load double, ptr %156, align 8
  %158 = getelementptr inbounds [8 x [3 x double]], ptr %5, i64 0, i64 8
  %159 = getelementptr inbounds [3 x double], ptr %158, i64 0, i64 2
  %160 = load double, ptr %159, align 8
  %161 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %154, double noundef %157, double noundef %160)
  br label %162

162:                                              ; preds = %152
  unreachable

163:                                              ; preds = %151
  %164 = call ptr @__acrt_iob_func(i32 noundef 1)
  %165 = call i32 @fflush(ptr noundef %164)
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
