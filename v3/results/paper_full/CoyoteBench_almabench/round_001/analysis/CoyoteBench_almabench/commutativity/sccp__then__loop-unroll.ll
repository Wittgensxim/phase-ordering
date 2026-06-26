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
  %94 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %95 = getelementptr inbounds nuw [8 x i8], ptr %94, i64 1
  %96 = load double, ptr %95, align 8
  %97 = fmul double %96, %66
  %98 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %99 = getelementptr inbounds nuw [8 x i8], ptr %98, i64 1
  %100 = load double, ptr %99, align 8
  %101 = fmul double %100, %66
  %102 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %103 = getelementptr inbounds nuw [8 x i8], ptr %102, i64 1
  %104 = load double, ptr %103, align 8
  %105 = call double @cos(double noundef %97) #4
  %106 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %107 = getelementptr inbounds nuw [8 x i8], ptr %106, i64 1
  %108 = load double, ptr %107, align 8
  %109 = call double @sin(double noundef %97) #4
  %110 = fmul double %108, %109
  %111 = call double @llvm.fmuladd.f64(double %104, double %105, double %110)
  %112 = call double @llvm.fmuladd.f64(double %111, double f0x3E7AD7F29ABCAF48, double %83)
  %113 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %114 = getelementptr inbounds nuw [8 x i8], ptr %113, i64 1
  %115 = load double, ptr %114, align 8
  %116 = call double @cos(double noundef %101) #4
  %117 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %118 = getelementptr inbounds nuw [8 x i8], ptr %117, i64 1
  %119 = load double, ptr %118, align 8
  %120 = call double @sin(double noundef %101) #4
  %121 = fmul double %119, %120
  %122 = call double @llvm.fmuladd.f64(double %115, double %116, double %121)
  %123 = call double @llvm.fmuladd.f64(double %122, double f0x3E7AD7F29ABCAF48, double %92)
  br label %124

124:                                              ; preds = %93
  %125 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %126 = getelementptr inbounds nuw [8 x i8], ptr %125, i64 2
  %127 = load double, ptr %126, align 8
  %128 = fmul double %127, %66
  %129 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %130 = getelementptr inbounds nuw [8 x i8], ptr %129, i64 2
  %131 = load double, ptr %130, align 8
  %132 = fmul double %131, %66
  %133 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %134 = getelementptr inbounds nuw [8 x i8], ptr %133, i64 2
  %135 = load double, ptr %134, align 8
  %136 = call double @cos(double noundef %128) #4
  %137 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %138 = getelementptr inbounds nuw [8 x i8], ptr %137, i64 2
  %139 = load double, ptr %138, align 8
  %140 = call double @sin(double noundef %128) #4
  %141 = fmul double %139, %140
  %142 = call double @llvm.fmuladd.f64(double %135, double %136, double %141)
  %143 = call double @llvm.fmuladd.f64(double %142, double f0x3E7AD7F29ABCAF48, double %112)
  %144 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %145 = getelementptr inbounds nuw [8 x i8], ptr %144, i64 2
  %146 = load double, ptr %145, align 8
  %147 = call double @cos(double noundef %132) #4
  %148 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %149 = getelementptr inbounds nuw [8 x i8], ptr %148, i64 2
  %150 = load double, ptr %149, align 8
  %151 = call double @sin(double noundef %132) #4
  %152 = fmul double %150, %151
  %153 = call double @llvm.fmuladd.f64(double %146, double %147, double %152)
  %154 = call double @llvm.fmuladd.f64(double %153, double f0x3E7AD7F29ABCAF48, double %123)
  br label %155

155:                                              ; preds = %124
  %156 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %157 = getelementptr inbounds nuw [8 x i8], ptr %156, i64 3
  %158 = load double, ptr %157, align 8
  %159 = fmul double %158, %66
  %160 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %161 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 3
  %162 = load double, ptr %161, align 8
  %163 = fmul double %162, %66
  %164 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %165 = getelementptr inbounds nuw [8 x i8], ptr %164, i64 3
  %166 = load double, ptr %165, align 8
  %167 = call double @cos(double noundef %159) #4
  %168 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %169 = getelementptr inbounds nuw [8 x i8], ptr %168, i64 3
  %170 = load double, ptr %169, align 8
  %171 = call double @sin(double noundef %159) #4
  %172 = fmul double %170, %171
  %173 = call double @llvm.fmuladd.f64(double %166, double %167, double %172)
  %174 = call double @llvm.fmuladd.f64(double %173, double f0x3E7AD7F29ABCAF48, double %143)
  %175 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %176 = getelementptr inbounds nuw [8 x i8], ptr %175, i64 3
  %177 = load double, ptr %176, align 8
  %178 = call double @cos(double noundef %163) #4
  %179 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %180 = getelementptr inbounds nuw [8 x i8], ptr %179, i64 3
  %181 = load double, ptr %180, align 8
  %182 = call double @sin(double noundef %163) #4
  %183 = fmul double %181, %182
  %184 = call double @llvm.fmuladd.f64(double %177, double %178, double %183)
  %185 = call double @llvm.fmuladd.f64(double %184, double f0x3E7AD7F29ABCAF48, double %154)
  br label %186

186:                                              ; preds = %155
  %187 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %188 = getelementptr inbounds nuw [8 x i8], ptr %187, i64 4
  %189 = load double, ptr %188, align 8
  %190 = fmul double %189, %66
  %191 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %192 = getelementptr inbounds nuw [8 x i8], ptr %191, i64 4
  %193 = load double, ptr %192, align 8
  %194 = fmul double %193, %66
  %195 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %196 = getelementptr inbounds nuw [8 x i8], ptr %195, i64 4
  %197 = load double, ptr %196, align 8
  %198 = call double @cos(double noundef %190) #4
  %199 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %200 = getelementptr inbounds nuw [8 x i8], ptr %199, i64 4
  %201 = load double, ptr %200, align 8
  %202 = call double @sin(double noundef %190) #4
  %203 = fmul double %201, %202
  %204 = call double @llvm.fmuladd.f64(double %197, double %198, double %203)
  %205 = call double @llvm.fmuladd.f64(double %204, double f0x3E7AD7F29ABCAF48, double %174)
  %206 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %207 = getelementptr inbounds nuw [8 x i8], ptr %206, i64 4
  %208 = load double, ptr %207, align 8
  %209 = call double @cos(double noundef %194) #4
  %210 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %211 = getelementptr inbounds nuw [8 x i8], ptr %210, i64 4
  %212 = load double, ptr %211, align 8
  %213 = call double @sin(double noundef %194) #4
  %214 = fmul double %212, %213
  %215 = call double @llvm.fmuladd.f64(double %208, double %209, double %214)
  %216 = call double @llvm.fmuladd.f64(double %215, double f0x3E7AD7F29ABCAF48, double %185)
  br label %217

217:                                              ; preds = %186
  %218 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %219 = getelementptr inbounds nuw [8 x i8], ptr %218, i64 5
  %220 = load double, ptr %219, align 8
  %221 = fmul double %220, %66
  %222 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %223 = getelementptr inbounds nuw [8 x i8], ptr %222, i64 5
  %224 = load double, ptr %223, align 8
  %225 = fmul double %224, %66
  %226 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %227 = getelementptr inbounds nuw [8 x i8], ptr %226, i64 5
  %228 = load double, ptr %227, align 8
  %229 = call double @cos(double noundef %221) #4
  %230 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %231 = getelementptr inbounds nuw [8 x i8], ptr %230, i64 5
  %232 = load double, ptr %231, align 8
  %233 = call double @sin(double noundef %221) #4
  %234 = fmul double %232, %233
  %235 = call double @llvm.fmuladd.f64(double %228, double %229, double %234)
  %236 = call double @llvm.fmuladd.f64(double %235, double f0x3E7AD7F29ABCAF48, double %205)
  %237 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %238 = getelementptr inbounds nuw [8 x i8], ptr %237, i64 5
  %239 = load double, ptr %238, align 8
  %240 = call double @cos(double noundef %225) #4
  %241 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %242 = getelementptr inbounds nuw [8 x i8], ptr %241, i64 5
  %243 = load double, ptr %242, align 8
  %244 = call double @sin(double noundef %225) #4
  %245 = fmul double %243, %244
  %246 = call double @llvm.fmuladd.f64(double %239, double %240, double %245)
  %247 = call double @llvm.fmuladd.f64(double %246, double f0x3E7AD7F29ABCAF48, double %216)
  br label %248

248:                                              ; preds = %217
  %249 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %250 = getelementptr inbounds nuw [8 x i8], ptr %249, i64 6
  %251 = load double, ptr %250, align 8
  %252 = fmul double %251, %66
  %253 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %254 = getelementptr inbounds nuw [8 x i8], ptr %253, i64 6
  %255 = load double, ptr %254, align 8
  %256 = fmul double %255, %66
  %257 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %258 = getelementptr inbounds nuw [8 x i8], ptr %257, i64 6
  %259 = load double, ptr %258, align 8
  %260 = call double @cos(double noundef %252) #4
  %261 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %262 = getelementptr inbounds nuw [8 x i8], ptr %261, i64 6
  %263 = load double, ptr %262, align 8
  %264 = call double @sin(double noundef %252) #4
  %265 = fmul double %263, %264
  %266 = call double @llvm.fmuladd.f64(double %259, double %260, double %265)
  %267 = call double @llvm.fmuladd.f64(double %266, double f0x3E7AD7F29ABCAF48, double %236)
  %268 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %269 = getelementptr inbounds nuw [8 x i8], ptr %268, i64 6
  %270 = load double, ptr %269, align 8
  %271 = call double @cos(double noundef %256) #4
  %272 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %273 = getelementptr inbounds nuw [8 x i8], ptr %272, i64 6
  %274 = load double, ptr %273, align 8
  %275 = call double @sin(double noundef %256) #4
  %276 = fmul double %274, %275
  %277 = call double @llvm.fmuladd.f64(double %270, double %271, double %276)
  %278 = call double @llvm.fmuladd.f64(double %277, double f0x3E7AD7F29ABCAF48, double %247)
  br label %279

279:                                              ; preds = %248
  %280 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %281 = getelementptr inbounds nuw [8 x i8], ptr %280, i64 7
  %282 = load double, ptr %281, align 8
  %283 = fmul double %282, %66
  %284 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %285 = getelementptr inbounds nuw [8 x i8], ptr %284, i64 7
  %286 = load double, ptr %285, align 8
  %287 = fmul double %286, %66
  %288 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %289 = getelementptr inbounds nuw [8 x i8], ptr %288, i64 7
  %290 = load double, ptr %289, align 8
  %291 = call double @cos(double noundef %283) #4
  %292 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %293 = getelementptr inbounds nuw [8 x i8], ptr %292, i64 7
  %294 = load double, ptr %293, align 8
  %295 = call double @sin(double noundef %283) #4
  %296 = fmul double %294, %295
  %297 = call double @llvm.fmuladd.f64(double %290, double %291, double %296)
  %298 = call double @llvm.fmuladd.f64(double %297, double f0x3E7AD7F29ABCAF48, double %267)
  %299 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %300 = getelementptr inbounds nuw [8 x i8], ptr %299, i64 7
  %301 = load double, ptr %300, align 8
  %302 = call double @cos(double noundef %287) #4
  %303 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %304 = getelementptr inbounds nuw [8 x i8], ptr %303, i64 7
  %305 = load double, ptr %304, align 8
  %306 = call double @sin(double noundef %287) #4
  %307 = fmul double %305, %306
  %308 = call double @llvm.fmuladd.f64(double %301, double %302, double %307)
  %309 = call double @llvm.fmuladd.f64(double %308, double f0x3E7AD7F29ABCAF48, double %278)
  br i1 false, label %310, label %323

310:                                              ; preds = %279
  %311 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %312 = getelementptr inbounds nuw [8 x i8], ptr %311, i64 8
  %313 = load double, ptr %312, align 8
  %314 = fmul double %313, %66
  %315 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %316 = getelementptr inbounds nuw [8 x i8], ptr %315, i64 8
  %317 = load double, ptr %316, align 8
  %318 = fmul double %317, %66
  %319 = call double @cos(double noundef %314) #4
  %320 = call double @sin(double noundef %314) #4
  %321 = call double @cos(double noundef %318) #4
  %322 = call double @sin(double noundef %318) #4
  unreachable

323:                                              ; preds = %279
  %.lcssa5 = phi double [ %309, %279 ]
  %.lcssa4 = phi double [ %298, %279 ]
  %324 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 64
  %326 = load double, ptr %325, align 8
  %327 = fmul double %326, %66
  %328 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 64
  %330 = load double, ptr %329, align 8
  %331 = call double @cos(double noundef %327) #4
  %332 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 64
  %334 = load double, ptr %333, align 8
  %335 = call double @sin(double noundef %327) #4
  br label %336

336:                                              ; preds = %323
  br label %337

337:                                              ; preds = %336
  %338 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %339 = getelementptr inbounds nuw [8 x i8], ptr %338, i64 8
  %340 = load double, ptr %339, align 8
  %341 = fmul double %340, %66
  %342 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %343 = getelementptr inbounds nuw [8 x i8], ptr %342, i64 8
  %344 = load double, ptr %343, align 8
  %345 = call double @cos(double noundef %341) #4
  %346 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %347 = getelementptr inbounds nuw [8 x i8], ptr %346, i64 8
  %348 = load double, ptr %347, align 8
  %349 = call double @sin(double noundef %341) #4
  %350 = fmul double %348, %349
  %351 = call double @llvm.fmuladd.f64(double %344, double %345, double %350)
  %352 = fmul double %10, %351
  %353 = call double @llvm.fmuladd.f64(double %352, double f0x3E7AD7F29ABCAF48, double %.lcssa5)
  br label %354

354:                                              ; preds = %337
  %355 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %356 = getelementptr inbounds nuw [8 x i8], ptr %355, i64 9
  %357 = load double, ptr %356, align 8
  %358 = fmul double %357, %66
  %359 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %360 = getelementptr inbounds nuw [8 x i8], ptr %359, i64 9
  %361 = load double, ptr %360, align 8
  %362 = call double @cos(double noundef %358) #4
  %363 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %364 = getelementptr inbounds nuw [8 x i8], ptr %363, i64 9
  %365 = load double, ptr %364, align 8
  %366 = call double @sin(double noundef %358) #4
  %367 = fmul double %365, %366
  %368 = call double @llvm.fmuladd.f64(double %361, double %362, double %367)
  %369 = fmul double %10, %368
  %370 = call double @llvm.fmuladd.f64(double %369, double f0x3E7AD7F29ABCAF48, double %353)
  br i1 false, label %371, label %378

371:                                              ; preds = %354
  %372 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %373 = getelementptr inbounds nuw [8 x i8], ptr %372, i64 10
  %374 = load double, ptr %373, align 8
  %375 = fmul double %374, %66
  %376 = call double @cos(double noundef %375) #4
  %377 = call double @sin(double noundef %375) #4
  unreachable

378:                                              ; preds = %354
  %.lcssa3 = phi double [ %370, %354 ]
  %379 = call double @fmod(double noundef %.lcssa3, double noundef f0x401921FB54442D18) #4
  %380 = fsub double %379, %48
  %381 = call double @sin(double noundef %380) #4
  %382 = call double @llvm.fmuladd.f64(double %37, double %381, double %380)
  br label %383

383:                                              ; preds = %378
  %384 = fsub double %380, %382
  %385 = call double @sin(double noundef %382) #4
  %386 = call double @llvm.fmuladd.f64(double %37, double %385, double %384)
  %387 = call double @cos(double noundef %382) #4
  %388 = fneg double %37
  %389 = call double @llvm.fmuladd.f64(double %388, double %387, double 1.000000e+00)
  %390 = fdiv double %386, %389
  %391 = fadd double %382, %390
  br label %392

392:                                              ; preds = %383
  %393 = call double @llvm.fabs.f64(double %390)
  %394 = fcmp olt double %393, f0x3D719799812DEA11
  br i1 %394, label %395, label %487

395:                                              ; preds = %592, %583, %580, %568, %556, %544, %532, %520, %508, %496, %392
  %.lcssa2 = phi double [ %388, %392 ], [ %588, %592 ], [ %588, %583 ], [ %492, %496 ], [ %576, %580 ], [ %504, %508 ], [ %540, %544 ], [ %516, %520 ], [ %564, %568 ], [ %528, %532 ], [ %552, %556 ]
  %.lcssa = phi double [ %391, %392 ], [ %591, %592 ], [ %591, %583 ], [ %495, %496 ], [ %579, %580 ], [ %507, %508 ], [ %543, %544 ], [ %519, %520 ], [ %567, %568 ], [ %531, %532 ], [ %555, %556 ]
  %396 = fmul double %334, %335
  %397 = call double @llvm.fmuladd.f64(double %330, double %331, double %396)
  %398 = fmul double %10, %397
  %399 = call double @llvm.fmuladd.f64(double %398, double f0x3E7AD7F29ABCAF48, double %.lcssa4)
  %400 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %401 = fmul double %400, %10
  %402 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %401)
  %403 = fmul double %402, f0x3ED455A5B2FF8F9D
  %404 = fmul double %.lcssa, 5.000000e-01
  %405 = fadd double %37, 1.000000e+00
  %406 = fsub double 1.000000e+00, %37
  %407 = fdiv double %405, %406
  %408 = call double @sqrt(double noundef %407) #4
  %409 = call double @sin(double noundef %404) #4
  %410 = fmul double %408, %409
  %411 = call double @cos(double noundef %404) #4
  %412 = call double @atan2(double noundef %410, double noundef %411) #4
  %413 = fmul double %412, 2.000000e+00
  %414 = call double @cos(double noundef %.lcssa) #4
  %415 = call double @llvm.fmuladd.f64(double %.lcssa2, double %414, double 1.000000e+00)
  %416 = fmul double %399, %415
  %417 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %418 = load double, ptr %417, align 8
  %419 = fdiv double 1.000000e+00, %418
  %420 = fadd double %419, 1.000000e+00
  %421 = fmul double %399, %399
  %422 = fmul double %421, %399
  %423 = fdiv double %420, %422
  %424 = call double @sqrt(double noundef %423) #4
  %425 = fmul double %424, f0x3F919D6D51A6B69A
  %426 = fmul double %403, 5.000000e-01
  %427 = call double @sin(double noundef %426) #4
  %428 = call double @cos(double noundef %65) #4
  %429 = fmul double %427, %428
  %430 = call double @sin(double noundef %65) #4
  %431 = fmul double %427, %430
  %432 = fadd double %413, %48
  %433 = call double @sin(double noundef %432) #4
  %434 = call double @cos(double noundef %432) #4
  %435 = fneg double %433
  %436 = fmul double %429, %435
  %437 = call double @llvm.fmuladd.f64(double %431, double %434, double %436)
  %438 = fmul double %437, 2.000000e+00
  %439 = call double @llvm.fmuladd.f64(double %.lcssa2, double %37, double 1.000000e+00)
  %440 = call double @sqrt(double noundef %439) #4
  %441 = fdiv double %399, %440
  %442 = call double @cos(double noundef %426) #4
  %443 = call double @sin(double noundef %48) #4
  %444 = call double @llvm.fmuladd.f64(double %37, double %443, double %433)
  %445 = fmul double %444, %441
  %446 = call double @cos(double noundef %48) #4
  %447 = call double @llvm.fmuladd.f64(double %37, double %446, double %434)
  %448 = fmul double %447, %441
  %449 = fmul double %431, 2.000000e+00
  %450 = fmul double %449, %429
  %451 = fneg double %438
  %452 = call double @llvm.fmuladd.f64(double %451, double %431, double %434)
  %453 = fmul double %416, %452
  %454 = call double @llvm.fmuladd.f64(double %438, double %429, double %433)
  %455 = fmul double %416, %454
  %456 = fmul double %442, %451
  %457 = fmul double %416, %456
  store double %453, ptr %2, align 8
  %458 = fmul double %457, f0xBFD9752E50F4B399
  %459 = call double @llvm.fmuladd.f64(double %455, double f0x3FED5C0357681EF3, double %458)
  %460 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %459, ptr %460, align 8
  %461 = fmul double %457, f0x3FED5C0357681EF3
  %462 = call double @llvm.fmuladd.f64(double %455, double f0x3FD9752E50F4B399, double %461)
  %463 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %462, ptr %463, align 8
  %464 = call double @llvm.fmuladd.f64(double %449, double %431, double -1.000000e+00)
  %465 = fmul double %450, %448
  %466 = call double @llvm.fmuladd.f64(double %464, double %445, double %465)
  %467 = fmul double %425, %466
  %468 = fmul double %429, -2.000000e+00
  %469 = call double @llvm.fmuladd.f64(double %468, double %429, double 1.000000e+00)
  %470 = fneg double %445
  %471 = fmul double %450, %470
  %472 = call double @llvm.fmuladd.f64(double %469, double %448, double %471)
  %473 = fmul double %425, %472
  %474 = fmul double %442, 2.000000e+00
  %475 = fmul double %429, %448
  %476 = call double @llvm.fmuladd.f64(double %431, double %445, double %475)
  %477 = fmul double %474, %476
  %478 = fmul double %425, %477
  %479 = load ptr, ptr %4, align 8
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 24
  store double %467, ptr %480, align 8
  %481 = fmul double %478, f0xBFD9752E50F4B399
  %482 = call double @llvm.fmuladd.f64(double %473, double f0x3FED5C0357681EF3, double %481)
  %483 = getelementptr inbounds nuw i8, ptr %479, i64 32
  store double %482, ptr %483, align 8
  %484 = fmul double %478, f0x3FED5C0357681EF3
  %485 = call double @llvm.fmuladd.f64(double %473, double f0x3FD9752E50F4B399, double %484)
  %486 = getelementptr inbounds nuw i8, ptr %479, i64 40
  store double %485, ptr %486, align 8
  ret void

487:                                              ; preds = %392
  %488 = fsub double %380, %391
  %489 = call double @sin(double noundef %391) #4
  %490 = call double @llvm.fmuladd.f64(double %37, double %489, double %488)
  %491 = call double @cos(double noundef %391) #4
  %492 = fneg double %37
  %493 = call double @llvm.fmuladd.f64(double %492, double %491, double 1.000000e+00)
  %494 = fdiv double %490, %493
  %495 = fadd double %391, %494
  br label %496

496:                                              ; preds = %487
  %497 = call double @llvm.fabs.f64(double %494)
  %498 = fcmp olt double %497, f0x3D719799812DEA11
  br i1 %498, label %395, label %499

499:                                              ; preds = %496
  %500 = fsub double %380, %495
  %501 = call double @sin(double noundef %495) #4
  %502 = call double @llvm.fmuladd.f64(double %37, double %501, double %500)
  %503 = call double @cos(double noundef %495) #4
  %504 = fneg double %37
  %505 = call double @llvm.fmuladd.f64(double %504, double %503, double 1.000000e+00)
  %506 = fdiv double %502, %505
  %507 = fadd double %495, %506
  br label %508

508:                                              ; preds = %499
  %509 = call double @llvm.fabs.f64(double %506)
  %510 = fcmp olt double %509, f0x3D719799812DEA11
  br i1 %510, label %395, label %511

511:                                              ; preds = %508
  %512 = fsub double %380, %507
  %513 = call double @sin(double noundef %507) #4
  %514 = call double @llvm.fmuladd.f64(double %37, double %513, double %512)
  %515 = call double @cos(double noundef %507) #4
  %516 = fneg double %37
  %517 = call double @llvm.fmuladd.f64(double %516, double %515, double 1.000000e+00)
  %518 = fdiv double %514, %517
  %519 = fadd double %507, %518
  br label %520

520:                                              ; preds = %511
  %521 = call double @llvm.fabs.f64(double %518)
  %522 = fcmp olt double %521, f0x3D719799812DEA11
  br i1 %522, label %395, label %523

523:                                              ; preds = %520
  %524 = fsub double %380, %519
  %525 = call double @sin(double noundef %519) #4
  %526 = call double @llvm.fmuladd.f64(double %37, double %525, double %524)
  %527 = call double @cos(double noundef %519) #4
  %528 = fneg double %37
  %529 = call double @llvm.fmuladd.f64(double %528, double %527, double 1.000000e+00)
  %530 = fdiv double %526, %529
  %531 = fadd double %519, %530
  br label %532

532:                                              ; preds = %523
  %533 = call double @llvm.fabs.f64(double %530)
  %534 = fcmp olt double %533, f0x3D719799812DEA11
  br i1 %534, label %395, label %535

535:                                              ; preds = %532
  %536 = fsub double %380, %531
  %537 = call double @sin(double noundef %531) #4
  %538 = call double @llvm.fmuladd.f64(double %37, double %537, double %536)
  %539 = call double @cos(double noundef %531) #4
  %540 = fneg double %37
  %541 = call double @llvm.fmuladd.f64(double %540, double %539, double 1.000000e+00)
  %542 = fdiv double %538, %541
  %543 = fadd double %531, %542
  br label %544

544:                                              ; preds = %535
  %545 = call double @llvm.fabs.f64(double %542)
  %546 = fcmp olt double %545, f0x3D719799812DEA11
  br i1 %546, label %395, label %547

547:                                              ; preds = %544
  %548 = fsub double %380, %543
  %549 = call double @sin(double noundef %543) #4
  %550 = call double @llvm.fmuladd.f64(double %37, double %549, double %548)
  %551 = call double @cos(double noundef %543) #4
  %552 = fneg double %37
  %553 = call double @llvm.fmuladd.f64(double %552, double %551, double 1.000000e+00)
  %554 = fdiv double %550, %553
  %555 = fadd double %543, %554
  br label %556

556:                                              ; preds = %547
  %557 = call double @llvm.fabs.f64(double %554)
  %558 = fcmp olt double %557, f0x3D719799812DEA11
  br i1 %558, label %395, label %559

559:                                              ; preds = %556
  %560 = fsub double %380, %555
  %561 = call double @sin(double noundef %555) #4
  %562 = call double @llvm.fmuladd.f64(double %37, double %561, double %560)
  %563 = call double @cos(double noundef %555) #4
  %564 = fneg double %37
  %565 = call double @llvm.fmuladd.f64(double %564, double %563, double 1.000000e+00)
  %566 = fdiv double %562, %565
  %567 = fadd double %555, %566
  br label %568

568:                                              ; preds = %559
  %569 = call double @llvm.fabs.f64(double %566)
  %570 = fcmp olt double %569, f0x3D719799812DEA11
  br i1 %570, label %395, label %571

571:                                              ; preds = %568
  %572 = fsub double %380, %567
  %573 = call double @sin(double noundef %567) #4
  %574 = call double @llvm.fmuladd.f64(double %37, double %573, double %572)
  %575 = call double @cos(double noundef %567) #4
  %576 = fneg double %37
  %577 = call double @llvm.fmuladd.f64(double %576, double %575, double 1.000000e+00)
  %578 = fdiv double %574, %577
  %579 = fadd double %567, %578
  br label %580

580:                                              ; preds = %571
  %581 = call double @llvm.fabs.f64(double %578)
  %582 = fcmp olt double %581, f0x3D719799812DEA11
  br i1 %582, label %395, label %583

583:                                              ; preds = %580
  %584 = fsub double %380, %579
  %585 = call double @sin(double noundef %579) #4
  %586 = call double @llvm.fmuladd.f64(double %37, double %585, double %584)
  %587 = call double @cos(double noundef %579) #4
  %588 = fneg double %37
  %589 = call double @llvm.fmuladd.f64(double %588, double %587, double 1.000000e+00)
  %590 = fdiv double %586, %589
  %591 = fadd double %579, %590
  br i1 true, label %395, label %592

592:                                              ; preds = %583
  %593 = call double @llvm.fabs.f64(double %590)
  %594 = fcmp olt double %593, f0x3D719799812DEA11
  br i1 %594, label %395, label %595

595:                                              ; preds = %592
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
