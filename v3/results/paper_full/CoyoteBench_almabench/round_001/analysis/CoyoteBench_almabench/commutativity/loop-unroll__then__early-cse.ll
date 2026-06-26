; ModuleID = 'results\paper_full\CoyoteBench_almabench\round_000\output.ll'
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
  %4 = fcmp ult double %3, f0x400921FB54442D18
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = select i1 %6, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %8 = fsub double %2, %7
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi double [ %8, %5 ], [ %2, %1 ]
  ret double %10
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @planetpv(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  %5 = load double, ptr %0, align 8
  %6 = fadd double %5, f0xC142B42C80000000
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load double, ptr %7, align 8
  %9 = fadd double %6, %8
  %10 = fdiv double %9, 3.652500e+05
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [24 x i8], ptr @a, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = load double, ptr %16, align 8
  %18 = call double @llvm.fmuladd.f64(double %17, double %10, double %15)
  %19 = call double @llvm.fmuladd.f64(double %18, double %10, double %13)
  %20 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %11
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %25 = load double, ptr %24, align 8
  %26 = call double @llvm.fmuladd.f64(double %25, double %10, double %23)
  %27 = fmul double %26, %10
  %28 = call double @llvm.fmuladd.f64(double %21, double 3.600000e+03, double %27)
  %29 = fmul double %28, f0x3ED455A5B2FF8F9D
  %30 = getelementptr inbounds [24 x i8], ptr @e, i64 %11
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %35, double %10, double %33)
  %37 = call double @llvm.fmuladd.f64(double %36, double %10, double %31)
  %38 = getelementptr inbounds [24 x i8], ptr @pi, i64 %11
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fmuladd.f64(double %43, double %10, double %41)
  %45 = fmul double %44, %10
  %46 = call double @llvm.fmuladd.f64(double %39, double 3.600000e+03, double %45)
  %47 = fmul double %46, f0x3ED455A5B2FF8F9D
  %48 = call double @anpm(double noundef %47)
  %49 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %11
  %50 = load double, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds [24 x i8], ptr @omega, i64 %11
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %58 = load double, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %60 = load double, ptr %59, align 8
  %61 = call double @llvm.fmuladd.f64(double %60, double %10, double %58)
  %62 = fmul double %61, %10
  %63 = call double @llvm.fmuladd.f64(double %56, double 3.600000e+03, double %62)
  %64 = fmul double %63, f0x3ED455A5B2FF8F9D
  %65 = call double @anpm(double noundef %64)
  %66 = fmul double %10, f0x3FD702A41F2E9970
  br label %67

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %70 = load double, ptr %69, align 8
  %71 = fmul double %70, %66
  %72 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %73 = load double, ptr %72, align 8
  %74 = fmul double %73, %66
  %75 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %76 = load double, ptr %75, align 8
  %77 = call double @cos(double noundef %71) #4
  %78 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %79 = load double, ptr %78, align 8
  %80 = call double @sin(double noundef %71) #4
  %81 = fmul double %79, %80
  %82 = call double @llvm.fmuladd.f64(double %76, double %77, double %81)
  %83 = call double @llvm.fmuladd.f64(double %82, double f0x3E7AD7F29ABCAF48, double %19)
  %84 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %85 = load double, ptr %84, align 8
  %86 = call double @cos(double noundef %74) #4
  %87 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %88 = load double, ptr %87, align 8
  %89 = call double @sin(double noundef %74) #4
  %90 = fmul double %88, %89
  %91 = call double @llvm.fmuladd.f64(double %85, double %86, double %90)
  %92 = call double @llvm.fmuladd.f64(double %91, double f0x3E7AD7F29ABCAF48, double %29)
  br label %93

93:                                               ; preds = %68
  %94 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 1
  %95 = load double, ptr %94, align 8
  %96 = fmul double %95, %66
  %97 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 1
  %98 = load double, ptr %97, align 8
  %99 = fmul double %98, %66
  %100 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 1
  %101 = load double, ptr %100, align 8
  %102 = call double @cos(double noundef %96) #4
  %103 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 1
  %104 = load double, ptr %103, align 8
  %105 = call double @sin(double noundef %96) #4
  %106 = fmul double %104, %105
  %107 = call double @llvm.fmuladd.f64(double %101, double %102, double %106)
  %108 = call double @llvm.fmuladd.f64(double %107, double f0x3E7AD7F29ABCAF48, double %83)
  %109 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 1
  %110 = load double, ptr %109, align 8
  %111 = call double @cos(double noundef %99) #4
  %112 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 1
  %113 = load double, ptr %112, align 8
  %114 = call double @sin(double noundef %99) #4
  %115 = fmul double %113, %114
  %116 = call double @llvm.fmuladd.f64(double %110, double %111, double %115)
  %117 = call double @llvm.fmuladd.f64(double %116, double f0x3E7AD7F29ABCAF48, double %92)
  br label %118

118:                                              ; preds = %93
  %119 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 2
  %120 = load double, ptr %119, align 8
  %121 = fmul double %120, %66
  %122 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 2
  %123 = load double, ptr %122, align 8
  %124 = fmul double %123, %66
  %125 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 2
  %126 = load double, ptr %125, align 8
  %127 = call double @cos(double noundef %121) #4
  %128 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 2
  %129 = load double, ptr %128, align 8
  %130 = call double @sin(double noundef %121) #4
  %131 = fmul double %129, %130
  %132 = call double @llvm.fmuladd.f64(double %126, double %127, double %131)
  %133 = call double @llvm.fmuladd.f64(double %132, double f0x3E7AD7F29ABCAF48, double %108)
  %134 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 2
  %135 = load double, ptr %134, align 8
  %136 = call double @cos(double noundef %124) #4
  %137 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 2
  %138 = load double, ptr %137, align 8
  %139 = call double @sin(double noundef %124) #4
  %140 = fmul double %138, %139
  %141 = call double @llvm.fmuladd.f64(double %135, double %136, double %140)
  %142 = call double @llvm.fmuladd.f64(double %141, double f0x3E7AD7F29ABCAF48, double %117)
  br label %143

143:                                              ; preds = %118
  %144 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 3
  %145 = load double, ptr %144, align 8
  %146 = fmul double %145, %66
  %147 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 3
  %148 = load double, ptr %147, align 8
  %149 = fmul double %148, %66
  %150 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 3
  %151 = load double, ptr %150, align 8
  %152 = call double @cos(double noundef %146) #4
  %153 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 3
  %154 = load double, ptr %153, align 8
  %155 = call double @sin(double noundef %146) #4
  %156 = fmul double %154, %155
  %157 = call double @llvm.fmuladd.f64(double %151, double %152, double %156)
  %158 = call double @llvm.fmuladd.f64(double %157, double f0x3E7AD7F29ABCAF48, double %133)
  %159 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 3
  %160 = load double, ptr %159, align 8
  %161 = call double @cos(double noundef %149) #4
  %162 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 3
  %163 = load double, ptr %162, align 8
  %164 = call double @sin(double noundef %149) #4
  %165 = fmul double %163, %164
  %166 = call double @llvm.fmuladd.f64(double %160, double %161, double %165)
  %167 = call double @llvm.fmuladd.f64(double %166, double f0x3E7AD7F29ABCAF48, double %142)
  br label %168

168:                                              ; preds = %143
  %169 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 4
  %170 = load double, ptr %169, align 8
  %171 = fmul double %170, %66
  %172 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 4
  %173 = load double, ptr %172, align 8
  %174 = fmul double %173, %66
  %175 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 4
  %176 = load double, ptr %175, align 8
  %177 = call double @cos(double noundef %171) #4
  %178 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 4
  %179 = load double, ptr %178, align 8
  %180 = call double @sin(double noundef %171) #4
  %181 = fmul double %179, %180
  %182 = call double @llvm.fmuladd.f64(double %176, double %177, double %181)
  %183 = call double @llvm.fmuladd.f64(double %182, double f0x3E7AD7F29ABCAF48, double %158)
  %184 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 4
  %185 = load double, ptr %184, align 8
  %186 = call double @cos(double noundef %174) #4
  %187 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 4
  %188 = load double, ptr %187, align 8
  %189 = call double @sin(double noundef %174) #4
  %190 = fmul double %188, %189
  %191 = call double @llvm.fmuladd.f64(double %185, double %186, double %190)
  %192 = call double @llvm.fmuladd.f64(double %191, double f0x3E7AD7F29ABCAF48, double %167)
  br label %193

193:                                              ; preds = %168
  %194 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 5
  %195 = load double, ptr %194, align 8
  %196 = fmul double %195, %66
  %197 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 5
  %198 = load double, ptr %197, align 8
  %199 = fmul double %198, %66
  %200 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 5
  %201 = load double, ptr %200, align 8
  %202 = call double @cos(double noundef %196) #4
  %203 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 5
  %204 = load double, ptr %203, align 8
  %205 = call double @sin(double noundef %196) #4
  %206 = fmul double %204, %205
  %207 = call double @llvm.fmuladd.f64(double %201, double %202, double %206)
  %208 = call double @llvm.fmuladd.f64(double %207, double f0x3E7AD7F29ABCAF48, double %183)
  %209 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 5
  %210 = load double, ptr %209, align 8
  %211 = call double @cos(double noundef %199) #4
  %212 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 5
  %213 = load double, ptr %212, align 8
  %214 = call double @sin(double noundef %199) #4
  %215 = fmul double %213, %214
  %216 = call double @llvm.fmuladd.f64(double %210, double %211, double %215)
  %217 = call double @llvm.fmuladd.f64(double %216, double f0x3E7AD7F29ABCAF48, double %192)
  br label %218

218:                                              ; preds = %193
  %219 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 6
  %220 = load double, ptr %219, align 8
  %221 = fmul double %220, %66
  %222 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 6
  %223 = load double, ptr %222, align 8
  %224 = fmul double %223, %66
  %225 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 6
  %226 = load double, ptr %225, align 8
  %227 = call double @cos(double noundef %221) #4
  %228 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 6
  %229 = load double, ptr %228, align 8
  %230 = call double @sin(double noundef %221) #4
  %231 = fmul double %229, %230
  %232 = call double @llvm.fmuladd.f64(double %226, double %227, double %231)
  %233 = call double @llvm.fmuladd.f64(double %232, double f0x3E7AD7F29ABCAF48, double %208)
  %234 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 6
  %235 = load double, ptr %234, align 8
  %236 = call double @cos(double noundef %224) #4
  %237 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 6
  %238 = load double, ptr %237, align 8
  %239 = call double @sin(double noundef %224) #4
  %240 = fmul double %238, %239
  %241 = call double @llvm.fmuladd.f64(double %235, double %236, double %240)
  %242 = call double @llvm.fmuladd.f64(double %241, double f0x3E7AD7F29ABCAF48, double %217)
  br label %243

243:                                              ; preds = %218
  %244 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 7
  %245 = load double, ptr %244, align 8
  %246 = fmul double %245, %66
  %247 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 7
  %248 = load double, ptr %247, align 8
  %249 = fmul double %248, %66
  %250 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 7
  %251 = load double, ptr %250, align 8
  %252 = call double @cos(double noundef %246) #4
  %253 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 7
  %254 = load double, ptr %253, align 8
  %255 = call double @sin(double noundef %246) #4
  %256 = fmul double %254, %255
  %257 = call double @llvm.fmuladd.f64(double %251, double %252, double %256)
  %258 = call double @llvm.fmuladd.f64(double %257, double f0x3E7AD7F29ABCAF48, double %233)
  %259 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 7
  %260 = load double, ptr %259, align 8
  %261 = call double @cos(double noundef %249) #4
  %262 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 7
  %263 = load double, ptr %262, align 8
  %264 = call double @sin(double noundef %249) #4
  %265 = fmul double %263, %264
  %266 = call double @llvm.fmuladd.f64(double %260, double %261, double %265)
  %267 = call double @llvm.fmuladd.f64(double %266, double f0x3E7AD7F29ABCAF48, double %242)
  br i1 false, label %268, label %279

268:                                              ; preds = %243
  %269 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 8
  %270 = load double, ptr %269, align 8
  %271 = fmul double %270, %66
  %272 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 8
  %273 = load double, ptr %272, align 8
  %274 = fmul double %273, %66
  %275 = call double @cos(double noundef %271) #4
  %276 = call double @sin(double noundef %271) #4
  %277 = call double @cos(double noundef %274) #4
  %278 = call double @sin(double noundef %274) #4
  unreachable

279:                                              ; preds = %243
  %280 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %281 = load double, ptr %280, align 8
  %282 = fmul double %281, %66
  %283 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %284 = load double, ptr %283, align 8
  %285 = call double @cos(double noundef %282) #4
  %286 = getelementptr inbounds nuw i8, ptr %78, i64 64
  %287 = load double, ptr %286, align 8
  %288 = call double @sin(double noundef %282) #4
  br label %289

289:                                              ; preds = %279
  br label %290

290:                                              ; preds = %289
  %291 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 8
  %292 = load double, ptr %291, align 8
  %293 = fmul double %292, %66
  %294 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 8
  %295 = load double, ptr %294, align 8
  %296 = call double @cos(double noundef %293) #4
  %297 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 8
  %298 = load double, ptr %297, align 8
  %299 = call double @sin(double noundef %293) #4
  %300 = fmul double %298, %299
  %301 = call double @llvm.fmuladd.f64(double %295, double %296, double %300)
  %302 = fmul double %10, %301
  %303 = call double @llvm.fmuladd.f64(double %302, double f0x3E7AD7F29ABCAF48, double %267)
  br label %304

304:                                              ; preds = %290
  %305 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 9
  %306 = load double, ptr %305, align 8
  %307 = fmul double %306, %66
  %308 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 9
  %309 = load double, ptr %308, align 8
  %310 = call double @cos(double noundef %307) #4
  %311 = getelementptr inbounds nuw [8 x i8], ptr %87, i64 9
  %312 = load double, ptr %311, align 8
  %313 = call double @sin(double noundef %307) #4
  %314 = fmul double %312, %313
  %315 = call double @llvm.fmuladd.f64(double %309, double %310, double %314)
  %316 = fmul double %10, %315
  %317 = call double @llvm.fmuladd.f64(double %316, double f0x3E7AD7F29ABCAF48, double %303)
  br i1 false, label %318, label %324

318:                                              ; preds = %304
  %319 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 10
  %320 = load double, ptr %319, align 8
  %321 = fmul double %320, %66
  %322 = call double @cos(double noundef %321) #4
  %323 = call double @sin(double noundef %321) #4
  unreachable

324:                                              ; preds = %304
  %325 = call double @fmod(double noundef %317, double noundef f0x401921FB54442D18) #4
  %326 = fsub double %325, %48
  %327 = call double @sin(double noundef %326) #4
  %328 = call double @llvm.fmuladd.f64(double %37, double %327, double %326)
  br label %329

329:                                              ; preds = %324
  %330 = fsub double %326, %328
  %331 = call double @sin(double noundef %328) #4
  %332 = call double @llvm.fmuladd.f64(double %37, double %331, double %330)
  %333 = call double @cos(double noundef %328) #4
  %334 = fneg double %37
  %335 = call double @llvm.fmuladd.f64(double %334, double %333, double 1.000000e+00)
  %336 = fdiv double %332, %335
  %337 = fadd double %328, %336
  br label %338

338:                                              ; preds = %329
  %339 = call double @llvm.fabs.f64(double %336)
  %340 = fcmp olt double %339, f0x3D719799812DEA11
  br i1 %340, label %341, label %433

341:                                              ; preds = %529, %521, %518, %507, %496, %485, %474, %463, %452, %441, %338
  %.lcssa = phi double [ %337, %338 ], [ %528, %529 ], [ %528, %521 ], [ %440, %441 ], [ %517, %518 ], [ %451, %452 ], [ %484, %485 ], [ %462, %463 ], [ %506, %507 ], [ %473, %474 ], [ %495, %496 ]
  %342 = fmul double %287, %288
  %343 = call double @llvm.fmuladd.f64(double %284, double %285, double %342)
  %344 = fmul double %10, %343
  %345 = call double @llvm.fmuladd.f64(double %344, double f0x3E7AD7F29ABCAF48, double %258)
  %346 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %347 = fmul double %346, %10
  %348 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %347)
  %349 = fmul double %348, f0x3ED455A5B2FF8F9D
  %350 = fmul double %.lcssa, 5.000000e-01
  %351 = fadd double %37, 1.000000e+00
  %352 = fsub double 1.000000e+00, %37
  %353 = fdiv double %351, %352
  %354 = call double @sqrt(double noundef %353) #4
  %355 = call double @sin(double noundef %350) #4
  %356 = fmul double %354, %355
  %357 = call double @cos(double noundef %350) #4
  %358 = call double @atan2(double noundef %356, double noundef %357) #4
  %359 = fmul double %358, 2.000000e+00
  %360 = call double @cos(double noundef %.lcssa) #4
  %361 = call double @llvm.fmuladd.f64(double %334, double %360, double 1.000000e+00)
  %362 = fmul double %345, %361
  %363 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %364 = load double, ptr %363, align 8
  %365 = fdiv double 1.000000e+00, %364
  %366 = fadd double %365, 1.000000e+00
  %367 = fmul double %345, %345
  %368 = fmul double %367, %345
  %369 = fdiv double %366, %368
  %370 = call double @sqrt(double noundef %369) #4
  %371 = fmul double %370, f0x3F919D6D51A6B69A
  %372 = fmul double %349, 5.000000e-01
  %373 = call double @sin(double noundef %372) #4
  %374 = call double @cos(double noundef %65) #4
  %375 = fmul double %373, %374
  %376 = call double @sin(double noundef %65) #4
  %377 = fmul double %373, %376
  %378 = fadd double %359, %48
  %379 = call double @sin(double noundef %378) #4
  %380 = call double @cos(double noundef %378) #4
  %381 = fneg double %379
  %382 = fmul double %375, %381
  %383 = call double @llvm.fmuladd.f64(double %377, double %380, double %382)
  %384 = fmul double %383, 2.000000e+00
  %385 = call double @llvm.fmuladd.f64(double %334, double %37, double 1.000000e+00)
  %386 = call double @sqrt(double noundef %385) #4
  %387 = fdiv double %345, %386
  %388 = call double @cos(double noundef %372) #4
  %389 = call double @sin(double noundef %48) #4
  %390 = call double @llvm.fmuladd.f64(double %37, double %389, double %379)
  %391 = fmul double %390, %387
  %392 = call double @cos(double noundef %48) #4
  %393 = call double @llvm.fmuladd.f64(double %37, double %392, double %380)
  %394 = fmul double %393, %387
  %395 = fmul double %377, 2.000000e+00
  %396 = fmul double %395, %375
  %397 = fneg double %384
  %398 = call double @llvm.fmuladd.f64(double %397, double %377, double %380)
  %399 = fmul double %362, %398
  %400 = call double @llvm.fmuladd.f64(double %384, double %375, double %379)
  %401 = fmul double %362, %400
  %402 = fmul double %388, %397
  %403 = fmul double %362, %402
  store double %399, ptr %2, align 8
  %404 = fmul double %403, f0xBFD9752E50F4B399
  %405 = call double @llvm.fmuladd.f64(double %401, double f0x3FED5C0357681EF3, double %404)
  %406 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %405, ptr %406, align 8
  %407 = fmul double %403, f0x3FED5C0357681EF3
  %408 = call double @llvm.fmuladd.f64(double %401, double f0x3FD9752E50F4B399, double %407)
  %409 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %408, ptr %409, align 8
  %410 = call double @llvm.fmuladd.f64(double %395, double %377, double -1.000000e+00)
  %411 = fmul double %396, %394
  %412 = call double @llvm.fmuladd.f64(double %410, double %391, double %411)
  %413 = fmul double %371, %412
  %414 = fmul double %375, -2.000000e+00
  %415 = call double @llvm.fmuladd.f64(double %414, double %375, double 1.000000e+00)
  %416 = fneg double %391
  %417 = fmul double %396, %416
  %418 = call double @llvm.fmuladd.f64(double %415, double %394, double %417)
  %419 = fmul double %371, %418
  %420 = fmul double %388, 2.000000e+00
  %421 = fmul double %375, %394
  %422 = call double @llvm.fmuladd.f64(double %377, double %391, double %421)
  %423 = fmul double %420, %422
  %424 = fmul double %371, %423
  %425 = load ptr, ptr %4, align 8
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 24
  store double %413, ptr %426, align 8
  %427 = fmul double %424, f0xBFD9752E50F4B399
  %428 = call double @llvm.fmuladd.f64(double %419, double f0x3FED5C0357681EF3, double %427)
  %429 = getelementptr inbounds nuw i8, ptr %425, i64 32
  store double %428, ptr %429, align 8
  %430 = fmul double %424, f0x3FED5C0357681EF3
  %431 = call double @llvm.fmuladd.f64(double %419, double f0x3FD9752E50F4B399, double %430)
  %432 = getelementptr inbounds nuw i8, ptr %425, i64 40
  store double %431, ptr %432, align 8
  ret void

433:                                              ; preds = %338
  %434 = fsub double %326, %337
  %435 = call double @sin(double noundef %337) #4
  %436 = call double @llvm.fmuladd.f64(double %37, double %435, double %434)
  %437 = call double @cos(double noundef %337) #4
  %438 = call double @llvm.fmuladd.f64(double %334, double %437, double 1.000000e+00)
  %439 = fdiv double %436, %438
  %440 = fadd double %337, %439
  br label %441

441:                                              ; preds = %433
  %442 = call double @llvm.fabs.f64(double %439)
  %443 = fcmp olt double %442, f0x3D719799812DEA11
  br i1 %443, label %341, label %444

444:                                              ; preds = %441
  %445 = fsub double %326, %440
  %446 = call double @sin(double noundef %440) #4
  %447 = call double @llvm.fmuladd.f64(double %37, double %446, double %445)
  %448 = call double @cos(double noundef %440) #4
  %449 = call double @llvm.fmuladd.f64(double %334, double %448, double 1.000000e+00)
  %450 = fdiv double %447, %449
  %451 = fadd double %440, %450
  br label %452

452:                                              ; preds = %444
  %453 = call double @llvm.fabs.f64(double %450)
  %454 = fcmp olt double %453, f0x3D719799812DEA11
  br i1 %454, label %341, label %455

455:                                              ; preds = %452
  %456 = fsub double %326, %451
  %457 = call double @sin(double noundef %451) #4
  %458 = call double @llvm.fmuladd.f64(double %37, double %457, double %456)
  %459 = call double @cos(double noundef %451) #4
  %460 = call double @llvm.fmuladd.f64(double %334, double %459, double 1.000000e+00)
  %461 = fdiv double %458, %460
  %462 = fadd double %451, %461
  br label %463

463:                                              ; preds = %455
  %464 = call double @llvm.fabs.f64(double %461)
  %465 = fcmp olt double %464, f0x3D719799812DEA11
  br i1 %465, label %341, label %466

466:                                              ; preds = %463
  %467 = fsub double %326, %462
  %468 = call double @sin(double noundef %462) #4
  %469 = call double @llvm.fmuladd.f64(double %37, double %468, double %467)
  %470 = call double @cos(double noundef %462) #4
  %471 = call double @llvm.fmuladd.f64(double %334, double %470, double 1.000000e+00)
  %472 = fdiv double %469, %471
  %473 = fadd double %462, %472
  br label %474

474:                                              ; preds = %466
  %475 = call double @llvm.fabs.f64(double %472)
  %476 = fcmp olt double %475, f0x3D719799812DEA11
  br i1 %476, label %341, label %477

477:                                              ; preds = %474
  %478 = fsub double %326, %473
  %479 = call double @sin(double noundef %473) #4
  %480 = call double @llvm.fmuladd.f64(double %37, double %479, double %478)
  %481 = call double @cos(double noundef %473) #4
  %482 = call double @llvm.fmuladd.f64(double %334, double %481, double 1.000000e+00)
  %483 = fdiv double %480, %482
  %484 = fadd double %473, %483
  br label %485

485:                                              ; preds = %477
  %486 = call double @llvm.fabs.f64(double %483)
  %487 = fcmp olt double %486, f0x3D719799812DEA11
  br i1 %487, label %341, label %488

488:                                              ; preds = %485
  %489 = fsub double %326, %484
  %490 = call double @sin(double noundef %484) #4
  %491 = call double @llvm.fmuladd.f64(double %37, double %490, double %489)
  %492 = call double @cos(double noundef %484) #4
  %493 = call double @llvm.fmuladd.f64(double %334, double %492, double 1.000000e+00)
  %494 = fdiv double %491, %493
  %495 = fadd double %484, %494
  br label %496

496:                                              ; preds = %488
  %497 = call double @llvm.fabs.f64(double %494)
  %498 = fcmp olt double %497, f0x3D719799812DEA11
  br i1 %498, label %341, label %499

499:                                              ; preds = %496
  %500 = fsub double %326, %495
  %501 = call double @sin(double noundef %495) #4
  %502 = call double @llvm.fmuladd.f64(double %37, double %501, double %500)
  %503 = call double @cos(double noundef %495) #4
  %504 = call double @llvm.fmuladd.f64(double %334, double %503, double 1.000000e+00)
  %505 = fdiv double %502, %504
  %506 = fadd double %495, %505
  br label %507

507:                                              ; preds = %499
  %508 = call double @llvm.fabs.f64(double %505)
  %509 = fcmp olt double %508, f0x3D719799812DEA11
  br i1 %509, label %341, label %510

510:                                              ; preds = %507
  %511 = fsub double %326, %506
  %512 = call double @sin(double noundef %506) #4
  %513 = call double @llvm.fmuladd.f64(double %37, double %512, double %511)
  %514 = call double @cos(double noundef %506) #4
  %515 = call double @llvm.fmuladd.f64(double %334, double %514, double 1.000000e+00)
  %516 = fdiv double %513, %515
  %517 = fadd double %506, %516
  br label %518

518:                                              ; preds = %510
  %519 = call double @llvm.fabs.f64(double %516)
  %520 = fcmp olt double %519, f0x3D719799812DEA11
  br i1 %520, label %341, label %521

521:                                              ; preds = %518
  %522 = fsub double %326, %517
  %523 = call double @sin(double noundef %517) #4
  %524 = call double @llvm.fmuladd.f64(double %37, double %523, double %522)
  %525 = call double @cos(double noundef %517) #4
  %526 = call double @llvm.fmuladd.f64(double %334, double %525, double 1.000000e+00)
  %527 = fdiv double %524, %526
  %528 = fadd double %517, %527
  br i1 true, label %341, label %529

529:                                              ; preds = %521
  %530 = call double @llvm.fabs.f64(double %527)
  %531 = fcmp olt double %530, f0x3D719799812DEA11
  br i1 %531, label %341, label %532

532:                                              ; preds = %529
  unreachable
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
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load double, ptr %4, align 8
  %6 = fmul double %5, %5
  %7 = call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load double, ptr %8, align 8
  %10 = call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = call double @sqrt(double noundef %10) #4
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %11, ptr %12, align 8
  %13 = load double, ptr %4, align 8
  %14 = load double, ptr %0, align 8
  %15 = call double @atan2(double noundef %13, double noundef %14) #4
  %16 = fmul double %15, f0x400E8EC8A4AEACC4
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = fadd double %16, 2.400000e+01
  br label %20

20:                                               ; preds = %18, %2
  %storemerge = phi double [ %19, %18 ], [ %16, %2 ]
  store double %storemerge, ptr %1, align 8
  %21 = load double, ptr %8, align 8
  %22 = load double, ptr %12, align 8
  %23 = fdiv double %21, %22
  %24 = call double @asin(double noundef %23) #4
  %25 = fmul double %24, f0x404CA5DC1A63C1F8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %25, ptr %26, align 8
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
  %9 = phi i32 [ %17, %16 ], [ 1, %7 ]
  %10 = icmp slt i32 %9, %0
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %15, label %16

15:                                               ; preds = %11
  br label %18

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !7

.loopexit:                                        ; preds = %8
  br label %18

18:                                               ; preds = %.loopexit, %15
  br label %19

19:                                               ; preds = %18, %2
  br label %20

20:                                               ; preds = %51, %19
  %21 = phi i32 [ %52, %51 ], [ 0, %19 ]
  %22 = icmp samesign ult i32 %21, 20
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  store double f0x4142B42C80000000, ptr %3, align 16
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %24, align 8
  br label %25

25:                                               ; preds = %49, %23
  %26 = phi i32 [ %50, %49 ], [ 0, %23 ]
  %27 = icmp samesign ult i32 %26, 36525
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load double, ptr %3, align 16
  %30 = fadd double %29, 1.000000e+00
  store double %30, ptr %3, align 16
  br label %31

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %4)
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %33

33:                                               ; preds = %32
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4)
  %34 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %34)
  br label %35

35:                                               ; preds = %33
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %4)
  %36 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %36)
  br label %37

37:                                               ; preds = %35
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull %4)
  %38 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %38)
  br label %39

39:                                               ; preds = %37
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4)
  %40 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %40)
  br label %41

41:                                               ; preds = %39
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %4)
  %42 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %42)
  br label %43

43:                                               ; preds = %41
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull %4)
  %44 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %44)
  br label %45

45:                                               ; preds = %43
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4)
  %46 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %46)
  br i1 false, label %47, label %49

47:                                               ; preds = %45
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4)
  %48 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %48)
  unreachable

49:                                               ; preds = %45
  %50 = add nuw nsw i32 %26, 1
  br label %25, !llvm.loop !9

51:                                               ; preds = %25
  %52 = add nuw nsw i32 %21, 1
  br label %20, !llvm.loop !10

53:                                               ; preds = %20
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load double, ptr %5, align 8
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %58 = load double, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %60 = load double, ptr %59, align 8
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %56, double noundef %58, double noundef %60) #4
  br label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %64 = load double, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %68 = load double, ptr %67, align 8
  %69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %64, double noundef %66, double noundef %68) #4
  br label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %72 = load double, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %74 = load double, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %76 = load double, ptr %75, align 8
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %72, double noundef %74, double noundef %76) #4
  br label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %80 = load double, ptr %79, align 8
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %82 = load double, ptr %81, align 8
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %84 = load double, ptr %83, align 8
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %80, double noundef %82, double noundef %84) #4
  br label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %88 = load double, ptr %87, align 8
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %90 = load double, ptr %89, align 8
  %91 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %92 = load double, ptr %91, align 8
  %93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %88, double noundef %90, double noundef %92) #4
  br label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %96 = load double, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 8
  %98 = load double, ptr %97, align 8
  %99 = getelementptr inbounds nuw i8, ptr %95, i64 16
  %100 = load double, ptr %99, align 8
  %101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %96, double noundef %98, double noundef %100) #4
  br label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %104 = load double, ptr %103, align 8
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 8
  %106 = load double, ptr %105, align 8
  %107 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %108 = load double, ptr %107, align 8
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %104, double noundef %106, double noundef %108) #4
  br label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %112 = load double, ptr %111, align 8
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %114 = load double, ptr %113, align 8
  %115 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %116 = load double, ptr %115, align 8
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %112, double noundef %114, double noundef %116) #4
  br i1 false, label %118, label %126

118:                                              ; preds = %110
  %119 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  %120 = load double, ptr %119, align 8
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %122 = load double, ptr %121, align 8
  %123 = getelementptr inbounds nuw i8, ptr %119, i64 16
  %124 = load double, ptr %123, align 8
  %125 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %120, double noundef %122, double noundef %124) #4
  unreachable

126:                                              ; preds = %110
  %127 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %128 = call i32 @fflush(ptr noundef %127) #4
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
