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
  %36 = getelementptr inbounds [24 x i8], ptr @pi, i64 %11
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %41 = load double, ptr %40, align 8
  %42 = call double @llvm.fmuladd.f64(double %41, double %10, double %39)
  %43 = fmul double %42, %10
  %44 = call double @llvm.fmuladd.f64(double %37, double 3.600000e+03, double %43)
  %45 = fmul double %44, f0x3ED455A5B2FF8F9D
  %46 = call double @anpm(double noundef %45)
  %47 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %11
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %50 = load double, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds [24 x i8], ptr @omega, i64 %11
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %58 = load double, ptr %57, align 8
  %59 = call double @llvm.fmuladd.f64(double %58, double %10, double %56)
  %60 = fmul double %59, %10
  %61 = call double @llvm.fmuladd.f64(double %54, double 3.600000e+03, double %60)
  %62 = fmul double %61, f0x3ED455A5B2FF8F9D
  %63 = call double @anpm(double noundef %62)
  %64 = fmul double %10, f0x3FD702A41F2E9970
  br label %65

65:                                               ; preds = %3
  br label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %68 = load double, ptr %67, align 8
  %69 = fmul double %68, %64
  %70 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %71 = load double, ptr %70, align 8
  %72 = fmul double %71, %64
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
  br label %91

91:                                               ; preds = %66
  %92 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %93 = getelementptr inbounds nuw [8 x i8], ptr %92, i64 1
  %94 = load double, ptr %93, align 8
  %95 = fmul double %94, %64
  %96 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %97 = getelementptr inbounds nuw [8 x i8], ptr %96, i64 1
  %98 = load double, ptr %97, align 8
  %99 = fmul double %98, %64
  %100 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %101 = getelementptr inbounds nuw [8 x i8], ptr %100, i64 1
  %102 = load double, ptr %101, align 8
  %103 = call double @cos(double noundef %95) #4
  %104 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %105 = getelementptr inbounds nuw [8 x i8], ptr %104, i64 1
  %106 = load double, ptr %105, align 8
  %107 = call double @sin(double noundef %95) #4
  %108 = fmul double %106, %107
  %109 = call double @llvm.fmuladd.f64(double %102, double %103, double %108)
  %110 = call double @llvm.fmuladd.f64(double %109, double f0x3E7AD7F29ABCAF48, double %81)
  %111 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %112 = getelementptr inbounds nuw [8 x i8], ptr %111, i64 1
  %113 = load double, ptr %112, align 8
  %114 = call double @cos(double noundef %99) #4
  %115 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %116 = getelementptr inbounds nuw [8 x i8], ptr %115, i64 1
  %117 = load double, ptr %116, align 8
  %118 = call double @sin(double noundef %99) #4
  %119 = fmul double %117, %118
  %120 = call double @llvm.fmuladd.f64(double %113, double %114, double %119)
  %121 = call double @llvm.fmuladd.f64(double %120, double f0x3E7AD7F29ABCAF48, double %90)
  br label %122

122:                                              ; preds = %91
  %123 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %124 = getelementptr inbounds nuw [8 x i8], ptr %123, i64 2
  %125 = load double, ptr %124, align 8
  %126 = fmul double %125, %64
  %127 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %128 = getelementptr inbounds nuw [8 x i8], ptr %127, i64 2
  %129 = load double, ptr %128, align 8
  %130 = fmul double %129, %64
  %131 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %132 = getelementptr inbounds nuw [8 x i8], ptr %131, i64 2
  %133 = load double, ptr %132, align 8
  %134 = call double @cos(double noundef %126) #4
  %135 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %136 = getelementptr inbounds nuw [8 x i8], ptr %135, i64 2
  %137 = load double, ptr %136, align 8
  %138 = call double @sin(double noundef %126) #4
  %139 = fmul double %137, %138
  %140 = call double @llvm.fmuladd.f64(double %133, double %134, double %139)
  %141 = call double @llvm.fmuladd.f64(double %140, double f0x3E7AD7F29ABCAF48, double %110)
  %142 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %143 = getelementptr inbounds nuw [8 x i8], ptr %142, i64 2
  %144 = load double, ptr %143, align 8
  %145 = call double @cos(double noundef %130) #4
  %146 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %147 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 2
  %148 = load double, ptr %147, align 8
  %149 = call double @sin(double noundef %130) #4
  %150 = fmul double %148, %149
  %151 = call double @llvm.fmuladd.f64(double %144, double %145, double %150)
  %152 = call double @llvm.fmuladd.f64(double %151, double f0x3E7AD7F29ABCAF48, double %121)
  br label %153

153:                                              ; preds = %122
  %154 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %155 = getelementptr inbounds nuw [8 x i8], ptr %154, i64 3
  %156 = load double, ptr %155, align 8
  %157 = fmul double %156, %64
  %158 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %159 = getelementptr inbounds nuw [8 x i8], ptr %158, i64 3
  %160 = load double, ptr %159, align 8
  %161 = fmul double %160, %64
  %162 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %163 = getelementptr inbounds nuw [8 x i8], ptr %162, i64 3
  %164 = load double, ptr %163, align 8
  %165 = call double @cos(double noundef %157) #4
  %166 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %167 = getelementptr inbounds nuw [8 x i8], ptr %166, i64 3
  %168 = load double, ptr %167, align 8
  %169 = call double @sin(double noundef %157) #4
  %170 = fmul double %168, %169
  %171 = call double @llvm.fmuladd.f64(double %164, double %165, double %170)
  %172 = call double @llvm.fmuladd.f64(double %171, double f0x3E7AD7F29ABCAF48, double %141)
  %173 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %174 = getelementptr inbounds nuw [8 x i8], ptr %173, i64 3
  %175 = load double, ptr %174, align 8
  %176 = call double @cos(double noundef %161) #4
  %177 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %178 = getelementptr inbounds nuw [8 x i8], ptr %177, i64 3
  %179 = load double, ptr %178, align 8
  %180 = call double @sin(double noundef %161) #4
  %181 = fmul double %179, %180
  %182 = call double @llvm.fmuladd.f64(double %175, double %176, double %181)
  %183 = call double @llvm.fmuladd.f64(double %182, double f0x3E7AD7F29ABCAF48, double %152)
  br label %184

184:                                              ; preds = %153
  %185 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %186 = getelementptr inbounds nuw [8 x i8], ptr %185, i64 4
  %187 = load double, ptr %186, align 8
  %188 = fmul double %187, %64
  %189 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %190 = getelementptr inbounds nuw [8 x i8], ptr %189, i64 4
  %191 = load double, ptr %190, align 8
  %192 = fmul double %191, %64
  %193 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %194 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 4
  %195 = load double, ptr %194, align 8
  %196 = call double @cos(double noundef %188) #4
  %197 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %198 = getelementptr inbounds nuw [8 x i8], ptr %197, i64 4
  %199 = load double, ptr %198, align 8
  %200 = call double @sin(double noundef %188) #4
  %201 = fmul double %199, %200
  %202 = call double @llvm.fmuladd.f64(double %195, double %196, double %201)
  %203 = call double @llvm.fmuladd.f64(double %202, double f0x3E7AD7F29ABCAF48, double %172)
  %204 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %205 = getelementptr inbounds nuw [8 x i8], ptr %204, i64 4
  %206 = load double, ptr %205, align 8
  %207 = call double @cos(double noundef %192) #4
  %208 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %209 = getelementptr inbounds nuw [8 x i8], ptr %208, i64 4
  %210 = load double, ptr %209, align 8
  %211 = call double @sin(double noundef %192) #4
  %212 = fmul double %210, %211
  %213 = call double @llvm.fmuladd.f64(double %206, double %207, double %212)
  %214 = call double @llvm.fmuladd.f64(double %213, double f0x3E7AD7F29ABCAF48, double %183)
  br label %215

215:                                              ; preds = %184
  %216 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %217 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 5
  %218 = load double, ptr %217, align 8
  %219 = fmul double %218, %64
  %220 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %221 = getelementptr inbounds nuw [8 x i8], ptr %220, i64 5
  %222 = load double, ptr %221, align 8
  %223 = fmul double %222, %64
  %224 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %225 = getelementptr inbounds nuw [8 x i8], ptr %224, i64 5
  %226 = load double, ptr %225, align 8
  %227 = call double @cos(double noundef %219) #4
  %228 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %229 = getelementptr inbounds nuw [8 x i8], ptr %228, i64 5
  %230 = load double, ptr %229, align 8
  %231 = call double @sin(double noundef %219) #4
  %232 = fmul double %230, %231
  %233 = call double @llvm.fmuladd.f64(double %226, double %227, double %232)
  %234 = call double @llvm.fmuladd.f64(double %233, double f0x3E7AD7F29ABCAF48, double %203)
  %235 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %236 = getelementptr inbounds nuw [8 x i8], ptr %235, i64 5
  %237 = load double, ptr %236, align 8
  %238 = call double @cos(double noundef %223) #4
  %239 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %240 = getelementptr inbounds nuw [8 x i8], ptr %239, i64 5
  %241 = load double, ptr %240, align 8
  %242 = call double @sin(double noundef %223) #4
  %243 = fmul double %241, %242
  %244 = call double @llvm.fmuladd.f64(double %237, double %238, double %243)
  %245 = call double @llvm.fmuladd.f64(double %244, double f0x3E7AD7F29ABCAF48, double %214)
  br label %246

246:                                              ; preds = %215
  %247 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %248 = getelementptr inbounds nuw [8 x i8], ptr %247, i64 6
  %249 = load double, ptr %248, align 8
  %250 = fmul double %249, %64
  %251 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %252 = getelementptr inbounds nuw [8 x i8], ptr %251, i64 6
  %253 = load double, ptr %252, align 8
  %254 = fmul double %253, %64
  %255 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %256 = getelementptr inbounds nuw [8 x i8], ptr %255, i64 6
  %257 = load double, ptr %256, align 8
  %258 = call double @cos(double noundef %250) #4
  %259 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %260 = getelementptr inbounds nuw [8 x i8], ptr %259, i64 6
  %261 = load double, ptr %260, align 8
  %262 = call double @sin(double noundef %250) #4
  %263 = fmul double %261, %262
  %264 = call double @llvm.fmuladd.f64(double %257, double %258, double %263)
  %265 = call double @llvm.fmuladd.f64(double %264, double f0x3E7AD7F29ABCAF48, double %234)
  %266 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %267 = getelementptr inbounds nuw [8 x i8], ptr %266, i64 6
  %268 = load double, ptr %267, align 8
  %269 = call double @cos(double noundef %254) #4
  %270 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %271 = getelementptr inbounds nuw [8 x i8], ptr %270, i64 6
  %272 = load double, ptr %271, align 8
  %273 = call double @sin(double noundef %254) #4
  %274 = fmul double %272, %273
  %275 = call double @llvm.fmuladd.f64(double %268, double %269, double %274)
  %276 = call double @llvm.fmuladd.f64(double %275, double f0x3E7AD7F29ABCAF48, double %245)
  br label %277

277:                                              ; preds = %246
  %278 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %279 = getelementptr inbounds nuw [8 x i8], ptr %278, i64 7
  %280 = load double, ptr %279, align 8
  %281 = fmul double %280, %64
  %282 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %283 = getelementptr inbounds nuw [8 x i8], ptr %282, i64 7
  %284 = load double, ptr %283, align 8
  %285 = fmul double %284, %64
  %286 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %287 = getelementptr inbounds nuw [8 x i8], ptr %286, i64 7
  %288 = load double, ptr %287, align 8
  %289 = call double @cos(double noundef %281) #4
  %290 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %291 = getelementptr inbounds nuw [8 x i8], ptr %290, i64 7
  %292 = load double, ptr %291, align 8
  %293 = call double @sin(double noundef %281) #4
  %294 = fmul double %292, %293
  %295 = call double @llvm.fmuladd.f64(double %288, double %289, double %294)
  %296 = call double @llvm.fmuladd.f64(double %295, double f0x3E7AD7F29ABCAF48, double %265)
  %297 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %298 = getelementptr inbounds nuw [8 x i8], ptr %297, i64 7
  %299 = load double, ptr %298, align 8
  %300 = call double @cos(double noundef %285) #4
  %301 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %302 = getelementptr inbounds nuw [8 x i8], ptr %301, i64 7
  %303 = load double, ptr %302, align 8
  %304 = call double @sin(double noundef %285) #4
  %305 = fmul double %303, %304
  %306 = call double @llvm.fmuladd.f64(double %299, double %300, double %305)
  %307 = call double @llvm.fmuladd.f64(double %306, double f0x3E7AD7F29ABCAF48, double %276)
  br i1 false, label %308, label %321

308:                                              ; preds = %277
  %309 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %310 = getelementptr inbounds nuw [8 x i8], ptr %309, i64 8
  %311 = load double, ptr %310, align 8
  %312 = fmul double %311, %64
  %313 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %314 = getelementptr inbounds nuw [8 x i8], ptr %313, i64 8
  %315 = load double, ptr %314, align 8
  %316 = fmul double %315, %64
  %317 = call double @cos(double noundef %312) #4
  %318 = call double @sin(double noundef %312) #4
  %319 = call double @cos(double noundef %316) #4
  %320 = call double @sin(double noundef %316) #4
  unreachable

321:                                              ; preds = %277
  %.lcssa4 = phi double [ %307, %277 ]
  %.lcssa3 = phi double [ %296, %277 ]
  %322 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 64
  %324 = load double, ptr %323, align 8
  %325 = fmul double %324, %64
  %326 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 64
  %328 = load double, ptr %327, align 8
  %329 = call double @cos(double noundef %325) #4
  %330 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 64
  %332 = load double, ptr %331, align 8
  %333 = call double @sin(double noundef %325) #4
  br label %334

334:                                              ; preds = %321
  br label %335

335:                                              ; preds = %334
  %336 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %337 = getelementptr inbounds nuw [8 x i8], ptr %336, i64 8
  %338 = load double, ptr %337, align 8
  %339 = fmul double %338, %64
  %340 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %341 = getelementptr inbounds nuw [8 x i8], ptr %340, i64 8
  %342 = load double, ptr %341, align 8
  %343 = call double @cos(double noundef %339) #4
  %344 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %345 = getelementptr inbounds nuw [8 x i8], ptr %344, i64 8
  %346 = load double, ptr %345, align 8
  %347 = call double @sin(double noundef %339) #4
  %348 = fmul double %346, %347
  %349 = call double @llvm.fmuladd.f64(double %342, double %343, double %348)
  %350 = fmul double %10, %349
  %351 = call double @llvm.fmuladd.f64(double %350, double f0x3E7AD7F29ABCAF48, double %.lcssa4)
  br label %352

352:                                              ; preds = %335
  %353 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %354 = getelementptr inbounds nuw [8 x i8], ptr %353, i64 9
  %355 = load double, ptr %354, align 8
  %356 = fmul double %355, %64
  %357 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %358 = getelementptr inbounds nuw [8 x i8], ptr %357, i64 9
  %359 = load double, ptr %358, align 8
  %360 = call double @cos(double noundef %356) #4
  %361 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %362 = getelementptr inbounds nuw [8 x i8], ptr %361, i64 9
  %363 = load double, ptr %362, align 8
  %364 = call double @sin(double noundef %356) #4
  %365 = fmul double %363, %364
  %366 = call double @llvm.fmuladd.f64(double %359, double %360, double %365)
  %367 = fmul double %10, %366
  %368 = call double @llvm.fmuladd.f64(double %367, double f0x3E7AD7F29ABCAF48, double %351)
  br i1 false, label %369, label %376

369:                                              ; preds = %352
  %370 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %371 = getelementptr inbounds nuw [8 x i8], ptr %370, i64 10
  %372 = load double, ptr %371, align 8
  %373 = fmul double %372, %64
  %374 = call double @cos(double noundef %373) #4
  %375 = call double @sin(double noundef %373) #4
  unreachable

376:                                              ; preds = %352
  %.lcssa2 = phi double [ %368, %352 ]
  %377 = call double @llvm.fmuladd.f64(double %35, double %10, double %33)
  %378 = call double @llvm.fmuladd.f64(double %377, double %10, double %31)
  %379 = call double @fmod(double noundef %.lcssa2, double noundef f0x401921FB54442D18) #4
  %380 = fsub double %379, %46
  %381 = call double @sin(double noundef %380) #4
  %382 = call double @llvm.fmuladd.f64(double %378, double %381, double %380)
  br label %383

383:                                              ; preds = %376
  %384 = fsub double %380, %382
  %385 = call double @sin(double noundef %382) #4
  %386 = call double @llvm.fmuladd.f64(double %378, double %385, double %384)
  %387 = call double @cos(double noundef %382) #4
  %388 = fneg double %378
  %389 = call double @llvm.fmuladd.f64(double %388, double %387, double 1.000000e+00)
  %390 = fdiv double %386, %389
  %391 = fadd double %382, %390
  br label %392

392:                                              ; preds = %383
  %393 = call double @llvm.fabs.f64(double %390)
  %394 = fcmp olt double %393, f0x3D719799812DEA11
  br i1 %394, label %395, label %487

395:                                              ; preds = %592, %583, %580, %568, %556, %544, %532, %520, %508, %496, %392
  %.lcssa1 = phi double [ %388, %392 ], [ %588, %592 ], [ %588, %583 ], [ %492, %496 ], [ %576, %580 ], [ %504, %508 ], [ %540, %544 ], [ %516, %520 ], [ %564, %568 ], [ %528, %532 ], [ %552, %556 ]
  %.lcssa = phi double [ %391, %392 ], [ %591, %592 ], [ %591, %583 ], [ %495, %496 ], [ %579, %580 ], [ %507, %508 ], [ %543, %544 ], [ %519, %520 ], [ %567, %568 ], [ %531, %532 ], [ %555, %556 ]
  %396 = fmul double %332, %333
  %397 = call double @llvm.fmuladd.f64(double %328, double %329, double %396)
  %398 = fmul double %10, %397
  %399 = call double @llvm.fmuladd.f64(double %398, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  %400 = call double @llvm.fmuladd.f64(double %52, double %10, double %50)
  %401 = fmul double %400, %10
  %402 = call double @llvm.fmuladd.f64(double %48, double 3.600000e+03, double %401)
  %403 = fmul double %402, f0x3ED455A5B2FF8F9D
  %404 = fmul double %.lcssa, 5.000000e-01
  %405 = fadd double %378, 1.000000e+00
  %406 = fsub double 1.000000e+00, %378
  %407 = fdiv double %405, %406
  %408 = call double @sqrt(double noundef %407) #4
  %409 = call double @sin(double noundef %404) #4
  %410 = fmul double %408, %409
  %411 = call double @cos(double noundef %404) #4
  %412 = call double @atan2(double noundef %410, double noundef %411) #4
  %413 = fmul double %412, 2.000000e+00
  %414 = call double @cos(double noundef %.lcssa) #4
  %415 = call double @llvm.fmuladd.f64(double %.lcssa1, double %414, double 1.000000e+00)
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
  %428 = call double @cos(double noundef %63) #4
  %429 = fmul double %427, %428
  %430 = call double @sin(double noundef %63) #4
  %431 = fmul double %427, %430
  %432 = fadd double %413, %46
  %433 = call double @sin(double noundef %432) #4
  %434 = call double @cos(double noundef %432) #4
  %435 = fneg double %433
  %436 = fmul double %429, %435
  %437 = call double @llvm.fmuladd.f64(double %431, double %434, double %436)
  %438 = fmul double %437, 2.000000e+00
  %439 = call double @llvm.fmuladd.f64(double %.lcssa1, double %378, double 1.000000e+00)
  %440 = call double @sqrt(double noundef %439) #4
  %441 = fdiv double %399, %440
  %442 = call double @cos(double noundef %426) #4
  %443 = call double @sin(double noundef %46) #4
  %444 = call double @llvm.fmuladd.f64(double %378, double %443, double %433)
  %445 = fmul double %444, %441
  %446 = call double @cos(double noundef %46) #4
  %447 = call double @llvm.fmuladd.f64(double %378, double %446, double %434)
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
  %490 = call double @llvm.fmuladd.f64(double %378, double %489, double %488)
  %491 = call double @cos(double noundef %391) #4
  %492 = fneg double %378
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
  %502 = call double @llvm.fmuladd.f64(double %378, double %501, double %500)
  %503 = call double @cos(double noundef %495) #4
  %504 = fneg double %378
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
  %514 = call double @llvm.fmuladd.f64(double %378, double %513, double %512)
  %515 = call double @cos(double noundef %507) #4
  %516 = fneg double %378
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
  %526 = call double @llvm.fmuladd.f64(double %378, double %525, double %524)
  %527 = call double @cos(double noundef %519) #4
  %528 = fneg double %378
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
  %538 = call double @llvm.fmuladd.f64(double %378, double %537, double %536)
  %539 = call double @cos(double noundef %531) #4
  %540 = fneg double %378
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
  %550 = call double @llvm.fmuladd.f64(double %378, double %549, double %548)
  %551 = call double @cos(double noundef %543) #4
  %552 = fneg double %378
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
  %562 = call double @llvm.fmuladd.f64(double %378, double %561, double %560)
  %563 = call double @cos(double noundef %555) #4
  %564 = fneg double %378
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
  %574 = call double @llvm.fmuladd.f64(double %378, double %573, double %572)
  %575 = call double @cos(double noundef %567) #4
  %576 = fneg double %378
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
  %586 = call double @llvm.fmuladd.f64(double %378, double %585, double %584)
  %587 = call double @cos(double noundef %579) #4
  %588 = fneg double %378
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
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %15, %7
  %9 = phi i32 [ %16, %15 ], [ 1, %7 ]
  %exitcond = icmp ne i32 %9, %0
  br i1 %exitcond, label %10, label %.loopexit

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %14, label %15

14:                                               ; preds = %10
  br label %17

15:                                               ; preds = %10
  %16 = add nuw i32 %9, 1
  br label %8, !llvm.loop !7

.loopexit:                                        ; preds = %8
  br label %17

17:                                               ; preds = %.loopexit, %14
  br label %18

18:                                               ; preds = %17, %2
  br label %19

19:                                               ; preds = %48, %18
  %20 = phi i32 [ %49, %48 ], [ 0, %18 ]
  %exitcond4 = icmp ne i32 %20, 20
  br i1 %exitcond4, label %21, label %50

21:                                               ; preds = %19
  store double f0x4142B42C80000000, ptr %3, align 16
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %22, align 8
  br label %23

23:                                               ; preds = %46, %21
  %24 = phi i32 [ %47, %46 ], [ 0, %21 ]
  %exitcond3 = icmp ne i32 %24, 36525
  br i1 %exitcond3, label %25, label %48

25:                                               ; preds = %23
  %26 = load double, ptr %3, align 16
  %27 = fadd double %26, 1.000000e+00
  store double %27, ptr %3, align 16
  br label %28

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %4)
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %30

30:                                               ; preds = %29
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4)
  %31 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %31)
  br label %32

32:                                               ; preds = %30
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %4)
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %33)
  br label %34

34:                                               ; preds = %32
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull %4)
  %35 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %35)
  br label %36

36:                                               ; preds = %34
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4)
  %37 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %37)
  br label %38

38:                                               ; preds = %36
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %4)
  %39 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %39)
  br label %40

40:                                               ; preds = %38
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull %4)
  %41 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %41)
  br label %42

42:                                               ; preds = %40
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4)
  %43 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %43)
  br i1 false, label %44, label %46

44:                                               ; preds = %42
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4)
  %45 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %45)
  unreachable

46:                                               ; preds = %42
  %47 = add nuw nsw i32 %24, 1
  br label %23, !llvm.loop !9

48:                                               ; preds = %23
  %49 = add nuw nsw i32 %20, 1
  br label %19, !llvm.loop !10

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load double, ptr %5, align 8
  %54 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %55 = load double, ptr %54, align 8
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %57 = load double, ptr %56, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %53, double noundef %55, double noundef %57) #4
  br label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %63 = load double, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %65 = load double, ptr %64, align 8
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %61, double noundef %63, double noundef %65) #4
  br label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %69 = load double, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %71 = load double, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %73 = load double, ptr %72, align 8
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %69, double noundef %71, double noundef %73) #4
  br label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %77 = load double, ptr %76, align 8
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %79 = load double, ptr %78, align 8
  %80 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %81 = load double, ptr %80, align 8
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %77, double noundef %79, double noundef %81) #4
  br label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %85 = load double, ptr %84, align 8
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %87 = load double, ptr %86, align 8
  %88 = getelementptr inbounds nuw i8, ptr %84, i64 16
  %89 = load double, ptr %88, align 8
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %85, double noundef %87, double noundef %89) #4
  br label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %93 = load double, ptr %92, align 8
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 8
  %95 = load double, ptr %94, align 8
  %96 = getelementptr inbounds nuw i8, ptr %92, i64 16
  %97 = load double, ptr %96, align 8
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %93, double noundef %95, double noundef %97) #4
  br label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %101 = load double, ptr %100, align 8
  %102 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %103 = load double, ptr %102, align 8
  %104 = getelementptr inbounds nuw i8, ptr %100, i64 16
  %105 = load double, ptr %104, align 8
  %106 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %101, double noundef %103, double noundef %105) #4
  br label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %109 = load double, ptr %108, align 8
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %111 = load double, ptr %110, align 8
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 16
  %113 = load double, ptr %112, align 8
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %109, double noundef %111, double noundef %113) #4
  br i1 false, label %115, label %123

115:                                              ; preds = %107
  %116 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  %117 = load double, ptr %116, align 8
  %118 = getelementptr inbounds nuw i8, ptr %116, i64 8
  %119 = load double, ptr %118, align 8
  %120 = getelementptr inbounds nuw i8, ptr %116, i64 16
  %121 = load double, ptr %120, align 8
  %122 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %117, double noundef %119, double noundef %121) #4
  unreachable

123:                                              ; preds = %107
  %124 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %125 = call i32 @fflush(ptr noundef %124) #4
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
