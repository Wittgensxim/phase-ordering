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
  %67 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %68 = load double, ptr %67, align 8
  %69 = fmul double %68, %66
  %70 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %71 = load double, ptr %70, align 8
  %72 = fmul double %71, %66
  %73 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %74 = load double, ptr %73, align 8
  %75 = call double @cos(double noundef %69) #4
  %76 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %77 = load double, ptr %76, align 8
  %78 = call double @sin(double noundef %69) #4
  %79 = fmul double %77, %78
  %80 = call double @llvm.fmuladd.f64(double %74, double %75, double %79)
  %81 = call double @llvm.fmuladd.f64(double %80, double f0x3E7AD7F29ABCAF48, double %19)
  %82 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %83 = load double, ptr %82, align 8
  %84 = call double @cos(double noundef %72) #4
  %85 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %86 = load double, ptr %85, align 8
  %87 = call double @sin(double noundef %72) #4
  %88 = fmul double %86, %87
  %89 = call double @llvm.fmuladd.f64(double %83, double %84, double %88)
  %90 = call double @llvm.fmuladd.f64(double %89, double f0x3E7AD7F29ABCAF48, double %29)
  %91 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %92 = getelementptr inbounds nuw [8 x i8], ptr %91, i64 1
  %93 = load double, ptr %92, align 8
  %94 = fmul double %93, %66
  %95 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %96 = getelementptr inbounds nuw [8 x i8], ptr %95, i64 1
  %97 = load double, ptr %96, align 8
  %98 = fmul double %97, %66
  %99 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %100 = getelementptr inbounds nuw [8 x i8], ptr %99, i64 1
  %101 = load double, ptr %100, align 8
  %102 = call double @cos(double noundef %94) #4
  %103 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %104 = getelementptr inbounds nuw [8 x i8], ptr %103, i64 1
  %105 = load double, ptr %104, align 8
  %106 = call double @sin(double noundef %94) #4
  %107 = fmul double %105, %106
  %108 = call double @llvm.fmuladd.f64(double %101, double %102, double %107)
  %109 = call double @llvm.fmuladd.f64(double %108, double f0x3E7AD7F29ABCAF48, double %81)
  %110 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %111 = getelementptr inbounds nuw [8 x i8], ptr %110, i64 1
  %112 = load double, ptr %111, align 8
  %113 = call double @cos(double noundef %98) #4
  %114 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %115 = getelementptr inbounds nuw [8 x i8], ptr %114, i64 1
  %116 = load double, ptr %115, align 8
  %117 = call double @sin(double noundef %98) #4
  %118 = fmul double %116, %117
  %119 = call double @llvm.fmuladd.f64(double %112, double %113, double %118)
  %120 = call double @llvm.fmuladd.f64(double %119, double f0x3E7AD7F29ABCAF48, double %90)
  %121 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %122 = getelementptr inbounds nuw [8 x i8], ptr %121, i64 2
  %123 = load double, ptr %122, align 8
  %124 = fmul double %123, %66
  %125 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %126 = getelementptr inbounds nuw [8 x i8], ptr %125, i64 2
  %127 = load double, ptr %126, align 8
  %128 = fmul double %127, %66
  %129 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %130 = getelementptr inbounds nuw [8 x i8], ptr %129, i64 2
  %131 = load double, ptr %130, align 8
  %132 = call double @cos(double noundef %124) #4
  %133 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %134 = getelementptr inbounds nuw [8 x i8], ptr %133, i64 2
  %135 = load double, ptr %134, align 8
  %136 = call double @sin(double noundef %124) #4
  %137 = fmul double %135, %136
  %138 = call double @llvm.fmuladd.f64(double %131, double %132, double %137)
  %139 = call double @llvm.fmuladd.f64(double %138, double f0x3E7AD7F29ABCAF48, double %109)
  %140 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %141 = getelementptr inbounds nuw [8 x i8], ptr %140, i64 2
  %142 = load double, ptr %141, align 8
  %143 = call double @cos(double noundef %128) #4
  %144 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %145 = getelementptr inbounds nuw [8 x i8], ptr %144, i64 2
  %146 = load double, ptr %145, align 8
  %147 = call double @sin(double noundef %128) #4
  %148 = fmul double %146, %147
  %149 = call double @llvm.fmuladd.f64(double %142, double %143, double %148)
  %150 = call double @llvm.fmuladd.f64(double %149, double f0x3E7AD7F29ABCAF48, double %120)
  %151 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %152 = getelementptr inbounds nuw [8 x i8], ptr %151, i64 3
  %153 = load double, ptr %152, align 8
  %154 = fmul double %153, %66
  %155 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %156 = getelementptr inbounds nuw [8 x i8], ptr %155, i64 3
  %157 = load double, ptr %156, align 8
  %158 = fmul double %157, %66
  %159 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %160 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 3
  %161 = load double, ptr %160, align 8
  %162 = call double @cos(double noundef %154) #4
  %163 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %164 = getelementptr inbounds nuw [8 x i8], ptr %163, i64 3
  %165 = load double, ptr %164, align 8
  %166 = call double @sin(double noundef %154) #4
  %167 = fmul double %165, %166
  %168 = call double @llvm.fmuladd.f64(double %161, double %162, double %167)
  %169 = call double @llvm.fmuladd.f64(double %168, double f0x3E7AD7F29ABCAF48, double %139)
  %170 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %171 = getelementptr inbounds nuw [8 x i8], ptr %170, i64 3
  %172 = load double, ptr %171, align 8
  %173 = call double @cos(double noundef %158) #4
  %174 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %175 = getelementptr inbounds nuw [8 x i8], ptr %174, i64 3
  %176 = load double, ptr %175, align 8
  %177 = call double @sin(double noundef %158) #4
  %178 = fmul double %176, %177
  %179 = call double @llvm.fmuladd.f64(double %172, double %173, double %178)
  %180 = call double @llvm.fmuladd.f64(double %179, double f0x3E7AD7F29ABCAF48, double %150)
  %181 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %182 = getelementptr inbounds nuw [8 x i8], ptr %181, i64 4
  %183 = load double, ptr %182, align 8
  %184 = fmul double %183, %66
  %185 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %186 = getelementptr inbounds nuw [8 x i8], ptr %185, i64 4
  %187 = load double, ptr %186, align 8
  %188 = fmul double %187, %66
  %189 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %190 = getelementptr inbounds nuw [8 x i8], ptr %189, i64 4
  %191 = load double, ptr %190, align 8
  %192 = call double @cos(double noundef %184) #4
  %193 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %194 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 4
  %195 = load double, ptr %194, align 8
  %196 = call double @sin(double noundef %184) #4
  %197 = fmul double %195, %196
  %198 = call double @llvm.fmuladd.f64(double %191, double %192, double %197)
  %199 = call double @llvm.fmuladd.f64(double %198, double f0x3E7AD7F29ABCAF48, double %169)
  %200 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %201 = getelementptr inbounds nuw [8 x i8], ptr %200, i64 4
  %202 = load double, ptr %201, align 8
  %203 = call double @cos(double noundef %188) #4
  %204 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %205 = getelementptr inbounds nuw [8 x i8], ptr %204, i64 4
  %206 = load double, ptr %205, align 8
  %207 = call double @sin(double noundef %188) #4
  %208 = fmul double %206, %207
  %209 = call double @llvm.fmuladd.f64(double %202, double %203, double %208)
  %210 = call double @llvm.fmuladd.f64(double %209, double f0x3E7AD7F29ABCAF48, double %180)
  %211 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %212 = getelementptr inbounds nuw [8 x i8], ptr %211, i64 5
  %213 = load double, ptr %212, align 8
  %214 = fmul double %213, %66
  %215 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %216 = getelementptr inbounds nuw [8 x i8], ptr %215, i64 5
  %217 = load double, ptr %216, align 8
  %218 = fmul double %217, %66
  %219 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %220 = getelementptr inbounds nuw [8 x i8], ptr %219, i64 5
  %221 = load double, ptr %220, align 8
  %222 = call double @cos(double noundef %214) #4
  %223 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %224 = getelementptr inbounds nuw [8 x i8], ptr %223, i64 5
  %225 = load double, ptr %224, align 8
  %226 = call double @sin(double noundef %214) #4
  %227 = fmul double %225, %226
  %228 = call double @llvm.fmuladd.f64(double %221, double %222, double %227)
  %229 = call double @llvm.fmuladd.f64(double %228, double f0x3E7AD7F29ABCAF48, double %199)
  %230 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %231 = getelementptr inbounds nuw [8 x i8], ptr %230, i64 5
  %232 = load double, ptr %231, align 8
  %233 = call double @cos(double noundef %218) #4
  %234 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %235 = getelementptr inbounds nuw [8 x i8], ptr %234, i64 5
  %236 = load double, ptr %235, align 8
  %237 = call double @sin(double noundef %218) #4
  %238 = fmul double %236, %237
  %239 = call double @llvm.fmuladd.f64(double %232, double %233, double %238)
  %240 = call double @llvm.fmuladd.f64(double %239, double f0x3E7AD7F29ABCAF48, double %210)
  %241 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %242 = getelementptr inbounds nuw [8 x i8], ptr %241, i64 6
  %243 = load double, ptr %242, align 8
  %244 = fmul double %243, %66
  %245 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %246 = getelementptr inbounds nuw [8 x i8], ptr %245, i64 6
  %247 = load double, ptr %246, align 8
  %248 = fmul double %247, %66
  %249 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %250 = getelementptr inbounds nuw [8 x i8], ptr %249, i64 6
  %251 = load double, ptr %250, align 8
  %252 = call double @cos(double noundef %244) #4
  %253 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %254 = getelementptr inbounds nuw [8 x i8], ptr %253, i64 6
  %255 = load double, ptr %254, align 8
  %256 = call double @sin(double noundef %244) #4
  %257 = fmul double %255, %256
  %258 = call double @llvm.fmuladd.f64(double %251, double %252, double %257)
  %259 = call double @llvm.fmuladd.f64(double %258, double f0x3E7AD7F29ABCAF48, double %229)
  %260 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %261 = getelementptr inbounds nuw [8 x i8], ptr %260, i64 6
  %262 = load double, ptr %261, align 8
  %263 = call double @cos(double noundef %248) #4
  %264 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %265 = getelementptr inbounds nuw [8 x i8], ptr %264, i64 6
  %266 = load double, ptr %265, align 8
  %267 = call double @sin(double noundef %248) #4
  %268 = fmul double %266, %267
  %269 = call double @llvm.fmuladd.f64(double %262, double %263, double %268)
  %270 = call double @llvm.fmuladd.f64(double %269, double f0x3E7AD7F29ABCAF48, double %240)
  %271 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %272 = getelementptr inbounds nuw [8 x i8], ptr %271, i64 7
  %273 = load double, ptr %272, align 8
  %274 = fmul double %273, %66
  %275 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %276 = getelementptr inbounds nuw [8 x i8], ptr %275, i64 7
  %277 = load double, ptr %276, align 8
  %278 = fmul double %277, %66
  %279 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %280 = getelementptr inbounds nuw [8 x i8], ptr %279, i64 7
  %281 = load double, ptr %280, align 8
  %282 = call double @cos(double noundef %274) #4
  %283 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %284 = getelementptr inbounds nuw [8 x i8], ptr %283, i64 7
  %285 = load double, ptr %284, align 8
  %286 = call double @sin(double noundef %274) #4
  %287 = fmul double %285, %286
  %288 = call double @llvm.fmuladd.f64(double %281, double %282, double %287)
  %289 = call double @llvm.fmuladd.f64(double %288, double f0x3E7AD7F29ABCAF48, double %259)
  %290 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %291 = getelementptr inbounds nuw [8 x i8], ptr %290, i64 7
  %292 = load double, ptr %291, align 8
  %293 = call double @cos(double noundef %278) #4
  %294 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %295 = getelementptr inbounds nuw [8 x i8], ptr %294, i64 7
  %296 = load double, ptr %295, align 8
  %297 = call double @sin(double noundef %278) #4
  %298 = fmul double %296, %297
  %299 = call double @llvm.fmuladd.f64(double %292, double %293, double %298)
  %300 = call double @llvm.fmuladd.f64(double %299, double f0x3E7AD7F29ABCAF48, double %270)
  %301 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 64
  %303 = load double, ptr %302, align 8
  %304 = fmul double %303, %66
  %305 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 64
  %307 = load double, ptr %306, align 8
  %308 = call double @cos(double noundef %304) #4
  %309 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 64
  %311 = load double, ptr %310, align 8
  %312 = call double @sin(double noundef %304) #4
  %313 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %314 = getelementptr inbounds nuw [8 x i8], ptr %313, i64 8
  %315 = load double, ptr %314, align 8
  %316 = fmul double %315, %66
  %317 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %318 = getelementptr inbounds nuw [8 x i8], ptr %317, i64 8
  %319 = load double, ptr %318, align 8
  %320 = call double @cos(double noundef %316) #4
  %321 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %322 = getelementptr inbounds nuw [8 x i8], ptr %321, i64 8
  %323 = load double, ptr %322, align 8
  %324 = call double @sin(double noundef %316) #4
  %325 = fmul double %323, %324
  %326 = call double @llvm.fmuladd.f64(double %319, double %320, double %325)
  %327 = fmul double %10, %326
  %328 = call double @llvm.fmuladd.f64(double %327, double f0x3E7AD7F29ABCAF48, double %300)
  %329 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %330 = getelementptr inbounds nuw [8 x i8], ptr %329, i64 9
  %331 = load double, ptr %330, align 8
  %332 = fmul double %331, %66
  %333 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %334 = getelementptr inbounds nuw [8 x i8], ptr %333, i64 9
  %335 = load double, ptr %334, align 8
  %336 = call double @cos(double noundef %332) #4
  %337 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %338 = getelementptr inbounds nuw [8 x i8], ptr %337, i64 9
  %339 = load double, ptr %338, align 8
  %340 = call double @sin(double noundef %332) #4
  %341 = fmul double %339, %340
  %342 = call double @llvm.fmuladd.f64(double %335, double %336, double %341)
  %343 = fmul double %10, %342
  %344 = call double @llvm.fmuladd.f64(double %343, double f0x3E7AD7F29ABCAF48, double %328)
  %345 = call double @fmod(double noundef %344, double noundef f0x401921FB54442D18) #4
  %346 = fsub double %345, %48
  %347 = call double @sin(double noundef %346) #4
  %348 = call double @llvm.fmuladd.f64(double %37, double %347, double %346)
  %349 = fsub double %346, %348
  %350 = call double @sin(double noundef %348) #4
  %351 = call double @llvm.fmuladd.f64(double %37, double %350, double %349)
  %352 = call double @cos(double noundef %348) #4
  %353 = fneg double %37
  %354 = call double @llvm.fmuladd.f64(double %353, double %352, double 1.000000e+00)
  %355 = fdiv double %351, %354
  %356 = fadd double %348, %355
  %357 = call double @llvm.fabs.f64(double %355)
  %358 = fcmp olt double %357, f0x3D719799812DEA11
  br i1 %358, label %359, label %451

359:                                              ; preds = %539, %528, %517, %506, %495, %484, %473, %462, %451, %3
  %.lcssa1 = phi double [ %353, %3 ], [ %511, %506 ], [ %544, %539 ], [ %456, %451 ], [ %533, %528 ], [ %467, %462 ], [ %500, %495 ], [ %478, %473 ], [ %522, %517 ], [ %489, %484 ]
  %.lcssa = phi double [ %356, %3 ], [ %514, %506 ], [ %547, %539 ], [ %459, %451 ], [ %536, %528 ], [ %470, %462 ], [ %503, %495 ], [ %481, %473 ], [ %525, %517 ], [ %492, %484 ]
  %360 = fmul double %311, %312
  %361 = call double @llvm.fmuladd.f64(double %307, double %308, double %360)
  %362 = fmul double %10, %361
  %363 = call double @llvm.fmuladd.f64(double %362, double f0x3E7AD7F29ABCAF48, double %289)
  %364 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %365 = fmul double %364, %10
  %366 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %365)
  %367 = fmul double %366, f0x3ED455A5B2FF8F9D
  %368 = fmul double %.lcssa, 5.000000e-01
  %369 = fadd double %37, 1.000000e+00
  %370 = fsub double 1.000000e+00, %37
  %371 = fdiv double %369, %370
  %372 = call double @sqrt(double noundef %371) #4
  %373 = call double @sin(double noundef %368) #4
  %374 = fmul double %372, %373
  %375 = call double @cos(double noundef %368) #4
  %376 = call double @atan2(double noundef %374, double noundef %375) #4
  %377 = fmul double %376, 2.000000e+00
  %378 = call double @cos(double noundef %.lcssa) #4
  %379 = call double @llvm.fmuladd.f64(double %.lcssa1, double %378, double 1.000000e+00)
  %380 = fmul double %363, %379
  %381 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %382 = load double, ptr %381, align 8
  %383 = fdiv double 1.000000e+00, %382
  %384 = fadd double %383, 1.000000e+00
  %385 = fmul double %363, %363
  %386 = fmul double %385, %363
  %387 = fdiv double %384, %386
  %388 = call double @sqrt(double noundef %387) #4
  %389 = fmul double %388, f0x3F919D6D51A6B69A
  %390 = fmul double %367, 5.000000e-01
  %391 = call double @sin(double noundef %390) #4
  %392 = call double @cos(double noundef %65) #4
  %393 = fmul double %391, %392
  %394 = call double @sin(double noundef %65) #4
  %395 = fmul double %391, %394
  %396 = fadd double %377, %48
  %397 = call double @sin(double noundef %396) #4
  %398 = call double @cos(double noundef %396) #4
  %399 = fneg double %397
  %400 = fmul double %393, %399
  %401 = call double @llvm.fmuladd.f64(double %395, double %398, double %400)
  %402 = fmul double %401, 2.000000e+00
  %403 = call double @llvm.fmuladd.f64(double %.lcssa1, double %37, double 1.000000e+00)
  %404 = call double @sqrt(double noundef %403) #4
  %405 = fdiv double %363, %404
  %406 = call double @cos(double noundef %390) #4
  %407 = call double @sin(double noundef %48) #4
  %408 = call double @llvm.fmuladd.f64(double %37, double %407, double %397)
  %409 = fmul double %408, %405
  %410 = call double @cos(double noundef %48) #4
  %411 = call double @llvm.fmuladd.f64(double %37, double %410, double %398)
  %412 = fmul double %411, %405
  %413 = fmul double %395, 2.000000e+00
  %414 = fmul double %413, %393
  %415 = fneg double %402
  %416 = call double @llvm.fmuladd.f64(double %415, double %395, double %398)
  %417 = fmul double %380, %416
  %418 = call double @llvm.fmuladd.f64(double %402, double %393, double %397)
  %419 = fmul double %380, %418
  %420 = fmul double %406, %415
  %421 = fmul double %380, %420
  store double %417, ptr %2, align 8
  %422 = fmul double %421, f0xBFD9752E50F4B399
  %423 = call double @llvm.fmuladd.f64(double %419, double f0x3FED5C0357681EF3, double %422)
  %424 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %423, ptr %424, align 8
  %425 = fmul double %421, f0x3FED5C0357681EF3
  %426 = call double @llvm.fmuladd.f64(double %419, double f0x3FD9752E50F4B399, double %425)
  %427 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %426, ptr %427, align 8
  %428 = call double @llvm.fmuladd.f64(double %413, double %395, double -1.000000e+00)
  %429 = fmul double %414, %412
  %430 = call double @llvm.fmuladd.f64(double %428, double %409, double %429)
  %431 = fmul double %389, %430
  %432 = fmul double %393, -2.000000e+00
  %433 = call double @llvm.fmuladd.f64(double %432, double %393, double 1.000000e+00)
  %434 = fneg double %409
  %435 = fmul double %414, %434
  %436 = call double @llvm.fmuladd.f64(double %433, double %412, double %435)
  %437 = fmul double %389, %436
  %438 = fmul double %406, 2.000000e+00
  %439 = fmul double %393, %412
  %440 = call double @llvm.fmuladd.f64(double %395, double %409, double %439)
  %441 = fmul double %438, %440
  %442 = fmul double %389, %441
  %443 = load ptr, ptr %4, align 8
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 24
  store double %431, ptr %444, align 8
  %445 = fmul double %442, f0xBFD9752E50F4B399
  %446 = call double @llvm.fmuladd.f64(double %437, double f0x3FED5C0357681EF3, double %445)
  %447 = getelementptr inbounds nuw i8, ptr %443, i64 32
  store double %446, ptr %447, align 8
  %448 = fmul double %442, f0x3FED5C0357681EF3
  %449 = call double @llvm.fmuladd.f64(double %437, double f0x3FD9752E50F4B399, double %448)
  %450 = getelementptr inbounds nuw i8, ptr %443, i64 40
  store double %449, ptr %450, align 8
  ret void

451:                                              ; preds = %3
  %452 = fsub double %346, %356
  %453 = call double @sin(double noundef %356) #4
  %454 = call double @llvm.fmuladd.f64(double %37, double %453, double %452)
  %455 = call double @cos(double noundef %356) #4
  %456 = fneg double %37
  %457 = call double @llvm.fmuladd.f64(double %456, double %455, double 1.000000e+00)
  %458 = fdiv double %454, %457
  %459 = fadd double %356, %458
  %460 = call double @llvm.fabs.f64(double %458)
  %461 = fcmp olt double %460, f0x3D719799812DEA11
  br i1 %461, label %359, label %462

462:                                              ; preds = %451
  %463 = fsub double %346, %459
  %464 = call double @sin(double noundef %459) #4
  %465 = call double @llvm.fmuladd.f64(double %37, double %464, double %463)
  %466 = call double @cos(double noundef %459) #4
  %467 = fneg double %37
  %468 = call double @llvm.fmuladd.f64(double %467, double %466, double 1.000000e+00)
  %469 = fdiv double %465, %468
  %470 = fadd double %459, %469
  %471 = call double @llvm.fabs.f64(double %469)
  %472 = fcmp olt double %471, f0x3D719799812DEA11
  br i1 %472, label %359, label %473

473:                                              ; preds = %462
  %474 = fsub double %346, %470
  %475 = call double @sin(double noundef %470) #4
  %476 = call double @llvm.fmuladd.f64(double %37, double %475, double %474)
  %477 = call double @cos(double noundef %470) #4
  %478 = fneg double %37
  %479 = call double @llvm.fmuladd.f64(double %478, double %477, double 1.000000e+00)
  %480 = fdiv double %476, %479
  %481 = fadd double %470, %480
  %482 = call double @llvm.fabs.f64(double %480)
  %483 = fcmp olt double %482, f0x3D719799812DEA11
  br i1 %483, label %359, label %484

484:                                              ; preds = %473
  %485 = fsub double %346, %481
  %486 = call double @sin(double noundef %481) #4
  %487 = call double @llvm.fmuladd.f64(double %37, double %486, double %485)
  %488 = call double @cos(double noundef %481) #4
  %489 = fneg double %37
  %490 = call double @llvm.fmuladd.f64(double %489, double %488, double 1.000000e+00)
  %491 = fdiv double %487, %490
  %492 = fadd double %481, %491
  %493 = call double @llvm.fabs.f64(double %491)
  %494 = fcmp olt double %493, f0x3D719799812DEA11
  br i1 %494, label %359, label %495

495:                                              ; preds = %484
  %496 = fsub double %346, %492
  %497 = call double @sin(double noundef %492) #4
  %498 = call double @llvm.fmuladd.f64(double %37, double %497, double %496)
  %499 = call double @cos(double noundef %492) #4
  %500 = fneg double %37
  %501 = call double @llvm.fmuladd.f64(double %500, double %499, double 1.000000e+00)
  %502 = fdiv double %498, %501
  %503 = fadd double %492, %502
  %504 = call double @llvm.fabs.f64(double %502)
  %505 = fcmp olt double %504, f0x3D719799812DEA11
  br i1 %505, label %359, label %506

506:                                              ; preds = %495
  %507 = fsub double %346, %503
  %508 = call double @sin(double noundef %503) #4
  %509 = call double @llvm.fmuladd.f64(double %37, double %508, double %507)
  %510 = call double @cos(double noundef %503) #4
  %511 = fneg double %37
  %512 = call double @llvm.fmuladd.f64(double %511, double %510, double 1.000000e+00)
  %513 = fdiv double %509, %512
  %514 = fadd double %503, %513
  %515 = call double @llvm.fabs.f64(double %513)
  %516 = fcmp olt double %515, f0x3D719799812DEA11
  br i1 %516, label %359, label %517

517:                                              ; preds = %506
  %518 = fsub double %346, %514
  %519 = call double @sin(double noundef %514) #4
  %520 = call double @llvm.fmuladd.f64(double %37, double %519, double %518)
  %521 = call double @cos(double noundef %514) #4
  %522 = fneg double %37
  %523 = call double @llvm.fmuladd.f64(double %522, double %521, double 1.000000e+00)
  %524 = fdiv double %520, %523
  %525 = fadd double %514, %524
  %526 = call double @llvm.fabs.f64(double %524)
  %527 = fcmp olt double %526, f0x3D719799812DEA11
  br i1 %527, label %359, label %528

528:                                              ; preds = %517
  %529 = fsub double %346, %525
  %530 = call double @sin(double noundef %525) #4
  %531 = call double @llvm.fmuladd.f64(double %37, double %530, double %529)
  %532 = call double @cos(double noundef %525) #4
  %533 = fneg double %37
  %534 = call double @llvm.fmuladd.f64(double %533, double %532, double 1.000000e+00)
  %535 = fdiv double %531, %534
  %536 = fadd double %525, %535
  %537 = call double @llvm.fabs.f64(double %535)
  %538 = fcmp olt double %537, f0x3D719799812DEA11
  br i1 %538, label %359, label %539

539:                                              ; preds = %528
  %540 = fsub double %346, %536
  %541 = call double @sin(double noundef %536) #4
  %542 = call double @llvm.fmuladd.f64(double %37, double %541, double %540)
  %543 = call double @cos(double noundef %536) #4
  %544 = fneg double %37
  %545 = call double @llvm.fmuladd.f64(double %544, double %543, double 1.000000e+00)
  %546 = fdiv double %542, %545
  %547 = fadd double %536, %546
  br label %359
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
  %18 = fadd double %16, 2.400000e+01
  %storemerge = select i1 %17, double %18, double %16
  store double %storemerge, ptr %1, align 8
  %19 = load double, ptr %8, align 8
  %20 = load double, ptr %12, align 8
  %21 = fdiv double %19, %20
  %22 = call double @asin(double noundef %21) #4
  %23 = fmul double %22, f0x404CA5DC1A63C1F8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %23, ptr %24, align 8
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
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %2, %14
  %8 = phi i32 [ %15, %14 ], [ 1, %2 ]
  %9 = icmp slt i32 %8, %0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %.loopexit, label %14

14:                                               ; preds = %10
  %15 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !7

.loopexit:                                        ; preds = %10, %7, %2
  br label %16

16:                                               ; preds = %35, %.loopexit
  %17 = phi i32 [ %36, %35 ], [ 0, %.loopexit ]
  %18 = icmp samesign ult i32 %17, 20
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  store double f0x4142B42C80000000, ptr %3, align 16
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %20, align 8
  br label %21

21:                                               ; preds = %24, %19
  %22 = phi i32 [ %34, %24 ], [ 0, %19 ]
  %23 = icmp samesign ult i32 %22, 36525
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load double, ptr %3, align 16
  %26 = fadd double %25, 1.000000e+00
  store double %26, ptr %3, align 16
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %4)
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4)
  %27 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %27)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %4)
  %28 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %28)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull %4)
  %29 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %29)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4)
  %30 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %30)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %4)
  %31 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %31)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull %4)
  %32 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %32)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4)
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %33)
  %34 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !9

35:                                               ; preds = %21
  %36 = add nuw nsw i32 %17, 1
  br label %16, !llvm.loop !10

37:                                               ; preds = %16
  %38 = load double, ptr %5, align 8
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %42 = load double, ptr %41, align 8
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %38, double noundef %40, double noundef %42) #4
  %44 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %49 = load double, ptr %48, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %45, double noundef %47, double noundef %49) #4
  %51 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %56 = load double, ptr %55, align 8
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %52, double noundef %54, double noundef %56) #4
  %58 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %59 = load double, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %63 = load double, ptr %62, align 8
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %59, double noundef %61, double noundef %63) #4
  %65 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %68 = load double, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %70 = load double, ptr %69, align 8
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %66, double noundef %68, double noundef %70) #4
  %72 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %73 = load double, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 8
  %75 = load double, ptr %74, align 8
  %76 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %77 = load double, ptr %76, align 8
  %78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %73, double noundef %75, double noundef %77) #4
  %79 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %80 = load double, ptr %79, align 8
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %82 = load double, ptr %81, align 8
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %84 = load double, ptr %83, align 8
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %80, double noundef %82, double noundef %84) #4
  %86 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %87 = load double, ptr %86, align 8
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = load double, ptr %88, align 8
  %90 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %91 = load double, ptr %90, align 8
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %87, double noundef %89, double noundef %91) #4
  %93 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %94 = call i32 @fflush(ptr noundef %93) #4
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
