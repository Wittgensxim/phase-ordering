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
  %68 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %69 = load double, ptr %68, align 8
  %70 = fmul double %69, %66
  %71 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %72 = load double, ptr %71, align 8
  %73 = fmul double %72, %66
  %74 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %75 = load double, ptr %74, align 8
  %76 = call double @cos(double noundef %70) #4
  %77 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %78 = load double, ptr %77, align 8
  %79 = call double @sin(double noundef %70) #4
  %80 = fmul double %78, %79
  %81 = call double @llvm.fmuladd.f64(double %75, double %76, double %80)
  %82 = call double @llvm.fmuladd.f64(double %81, double f0x3E7AD7F29ABCAF48, double %19)
  %83 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %84 = load double, ptr %83, align 8
  %85 = call double @cos(double noundef %73) #4
  %86 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %87 = load double, ptr %86, align 8
  %88 = call double @sin(double noundef %73) #4
  %89 = fmul double %87, %88
  %90 = call double @llvm.fmuladd.f64(double %84, double %85, double %89)
  %91 = call double @llvm.fmuladd.f64(double %90, double f0x3E7AD7F29ABCAF48, double %29)
  %92 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %93 = getelementptr inbounds nuw [8 x i8], ptr %92, i64 1
  %94 = load double, ptr %93, align 8
  %95 = fmul double %94, %66
  %96 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %97 = getelementptr inbounds nuw [8 x i8], ptr %96, i64 1
  %98 = load double, ptr %97, align 8
  %99 = fmul double %98, %66
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
  %110 = call double @llvm.fmuladd.f64(double %109, double f0x3E7AD7F29ABCAF48, double %82)
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
  %121 = call double @llvm.fmuladd.f64(double %120, double f0x3E7AD7F29ABCAF48, double %91)
  %122 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %123 = getelementptr inbounds nuw [8 x i8], ptr %122, i64 2
  %124 = load double, ptr %123, align 8
  %125 = fmul double %124, %66
  %126 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %127 = getelementptr inbounds nuw [8 x i8], ptr %126, i64 2
  %128 = load double, ptr %127, align 8
  %129 = fmul double %128, %66
  %130 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %131 = getelementptr inbounds nuw [8 x i8], ptr %130, i64 2
  %132 = load double, ptr %131, align 8
  %133 = call double @cos(double noundef %125) #4
  %134 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %135 = getelementptr inbounds nuw [8 x i8], ptr %134, i64 2
  %136 = load double, ptr %135, align 8
  %137 = call double @sin(double noundef %125) #4
  %138 = fmul double %136, %137
  %139 = call double @llvm.fmuladd.f64(double %132, double %133, double %138)
  %140 = call double @llvm.fmuladd.f64(double %139, double f0x3E7AD7F29ABCAF48, double %110)
  %141 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %142 = getelementptr inbounds nuw [8 x i8], ptr %141, i64 2
  %143 = load double, ptr %142, align 8
  %144 = call double @cos(double noundef %129) #4
  %145 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %146 = getelementptr inbounds nuw [8 x i8], ptr %145, i64 2
  %147 = load double, ptr %146, align 8
  %148 = call double @sin(double noundef %129) #4
  %149 = fmul double %147, %148
  %150 = call double @llvm.fmuladd.f64(double %143, double %144, double %149)
  %151 = call double @llvm.fmuladd.f64(double %150, double f0x3E7AD7F29ABCAF48, double %121)
  %152 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %153 = getelementptr inbounds nuw [8 x i8], ptr %152, i64 3
  %154 = load double, ptr %153, align 8
  %155 = fmul double %154, %66
  %156 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %157 = getelementptr inbounds nuw [8 x i8], ptr %156, i64 3
  %158 = load double, ptr %157, align 8
  %159 = fmul double %158, %66
  %160 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %161 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 3
  %162 = load double, ptr %161, align 8
  %163 = call double @cos(double noundef %155) #4
  %164 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %165 = getelementptr inbounds nuw [8 x i8], ptr %164, i64 3
  %166 = load double, ptr %165, align 8
  %167 = call double @sin(double noundef %155) #4
  %168 = fmul double %166, %167
  %169 = call double @llvm.fmuladd.f64(double %162, double %163, double %168)
  %170 = call double @llvm.fmuladd.f64(double %169, double f0x3E7AD7F29ABCAF48, double %140)
  %171 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %172 = getelementptr inbounds nuw [8 x i8], ptr %171, i64 3
  %173 = load double, ptr %172, align 8
  %174 = call double @cos(double noundef %159) #4
  %175 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %176 = getelementptr inbounds nuw [8 x i8], ptr %175, i64 3
  %177 = load double, ptr %176, align 8
  %178 = call double @sin(double noundef %159) #4
  %179 = fmul double %177, %178
  %180 = call double @llvm.fmuladd.f64(double %173, double %174, double %179)
  %181 = call double @llvm.fmuladd.f64(double %180, double f0x3E7AD7F29ABCAF48, double %151)
  %182 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %183 = getelementptr inbounds nuw [8 x i8], ptr %182, i64 4
  %184 = load double, ptr %183, align 8
  %185 = fmul double %184, %66
  %186 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %187 = getelementptr inbounds nuw [8 x i8], ptr %186, i64 4
  %188 = load double, ptr %187, align 8
  %189 = fmul double %188, %66
  %190 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %191 = getelementptr inbounds nuw [8 x i8], ptr %190, i64 4
  %192 = load double, ptr %191, align 8
  %193 = call double @cos(double noundef %185) #4
  %194 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %195 = getelementptr inbounds nuw [8 x i8], ptr %194, i64 4
  %196 = load double, ptr %195, align 8
  %197 = call double @sin(double noundef %185) #4
  %198 = fmul double %196, %197
  %199 = call double @llvm.fmuladd.f64(double %192, double %193, double %198)
  %200 = call double @llvm.fmuladd.f64(double %199, double f0x3E7AD7F29ABCAF48, double %170)
  %201 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %202 = getelementptr inbounds nuw [8 x i8], ptr %201, i64 4
  %203 = load double, ptr %202, align 8
  %204 = call double @cos(double noundef %189) #4
  %205 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %206 = getelementptr inbounds nuw [8 x i8], ptr %205, i64 4
  %207 = load double, ptr %206, align 8
  %208 = call double @sin(double noundef %189) #4
  %209 = fmul double %207, %208
  %210 = call double @llvm.fmuladd.f64(double %203, double %204, double %209)
  %211 = call double @llvm.fmuladd.f64(double %210, double f0x3E7AD7F29ABCAF48, double %181)
  %212 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %213 = getelementptr inbounds nuw [8 x i8], ptr %212, i64 5
  %214 = load double, ptr %213, align 8
  %215 = fmul double %214, %66
  %216 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %217 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 5
  %218 = load double, ptr %217, align 8
  %219 = fmul double %218, %66
  %220 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %221 = getelementptr inbounds nuw [8 x i8], ptr %220, i64 5
  %222 = load double, ptr %221, align 8
  %223 = call double @cos(double noundef %215) #4
  %224 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %225 = getelementptr inbounds nuw [8 x i8], ptr %224, i64 5
  %226 = load double, ptr %225, align 8
  %227 = call double @sin(double noundef %215) #4
  %228 = fmul double %226, %227
  %229 = call double @llvm.fmuladd.f64(double %222, double %223, double %228)
  %230 = call double @llvm.fmuladd.f64(double %229, double f0x3E7AD7F29ABCAF48, double %200)
  %231 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %232 = getelementptr inbounds nuw [8 x i8], ptr %231, i64 5
  %233 = load double, ptr %232, align 8
  %234 = call double @cos(double noundef %219) #4
  %235 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %236 = getelementptr inbounds nuw [8 x i8], ptr %235, i64 5
  %237 = load double, ptr %236, align 8
  %238 = call double @sin(double noundef %219) #4
  %239 = fmul double %237, %238
  %240 = call double @llvm.fmuladd.f64(double %233, double %234, double %239)
  %241 = call double @llvm.fmuladd.f64(double %240, double f0x3E7AD7F29ABCAF48, double %211)
  %242 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %243 = getelementptr inbounds nuw [8 x i8], ptr %242, i64 6
  %244 = load double, ptr %243, align 8
  %245 = fmul double %244, %66
  %246 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %247 = getelementptr inbounds nuw [8 x i8], ptr %246, i64 6
  %248 = load double, ptr %247, align 8
  %249 = fmul double %248, %66
  %250 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %251 = getelementptr inbounds nuw [8 x i8], ptr %250, i64 6
  %252 = load double, ptr %251, align 8
  %253 = call double @cos(double noundef %245) #4
  %254 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %255 = getelementptr inbounds nuw [8 x i8], ptr %254, i64 6
  %256 = load double, ptr %255, align 8
  %257 = call double @sin(double noundef %245) #4
  %258 = fmul double %256, %257
  %259 = call double @llvm.fmuladd.f64(double %252, double %253, double %258)
  %260 = call double @llvm.fmuladd.f64(double %259, double f0x3E7AD7F29ABCAF48, double %230)
  %261 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %262 = getelementptr inbounds nuw [8 x i8], ptr %261, i64 6
  %263 = load double, ptr %262, align 8
  %264 = call double @cos(double noundef %249) #4
  %265 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %266 = getelementptr inbounds nuw [8 x i8], ptr %265, i64 6
  %267 = load double, ptr %266, align 8
  %268 = call double @sin(double noundef %249) #4
  %269 = fmul double %267, %268
  %270 = call double @llvm.fmuladd.f64(double %263, double %264, double %269)
  %271 = call double @llvm.fmuladd.f64(double %270, double f0x3E7AD7F29ABCAF48, double %241)
  %272 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %273 = getelementptr inbounds nuw [8 x i8], ptr %272, i64 7
  %274 = load double, ptr %273, align 8
  %275 = fmul double %274, %66
  %276 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %277 = getelementptr inbounds nuw [8 x i8], ptr %276, i64 7
  %278 = load double, ptr %277, align 8
  %279 = fmul double %278, %66
  %280 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %281 = getelementptr inbounds nuw [8 x i8], ptr %280, i64 7
  %282 = load double, ptr %281, align 8
  %283 = call double @cos(double noundef %275) #4
  %284 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %285 = getelementptr inbounds nuw [8 x i8], ptr %284, i64 7
  %286 = load double, ptr %285, align 8
  %287 = call double @sin(double noundef %275) #4
  %288 = fmul double %286, %287
  %289 = call double @llvm.fmuladd.f64(double %282, double %283, double %288)
  %290 = call double @llvm.fmuladd.f64(double %289, double f0x3E7AD7F29ABCAF48, double %260)
  %291 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %292 = getelementptr inbounds nuw [8 x i8], ptr %291, i64 7
  %293 = load double, ptr %292, align 8
  %294 = call double @cos(double noundef %279) #4
  %295 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %296 = getelementptr inbounds nuw [8 x i8], ptr %295, i64 7
  %297 = load double, ptr %296, align 8
  %298 = call double @sin(double noundef %279) #4
  %299 = fmul double %297, %298
  %300 = call double @llvm.fmuladd.f64(double %293, double %294, double %299)
  %301 = call double @llvm.fmuladd.f64(double %300, double f0x3E7AD7F29ABCAF48, double %271)
  %302 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 64
  %304 = load double, ptr %303, align 8
  %305 = fmul double %304, %66
  %306 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 64
  %308 = load double, ptr %307, align 8
  %309 = call double @cos(double noundef %305) #4
  %310 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 64
  %312 = load double, ptr %311, align 8
  %313 = call double @sin(double noundef %305) #4
  br label %314

314:                                              ; preds = %67
  %315 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %316 = getelementptr inbounds nuw [8 x i8], ptr %315, i64 8
  %317 = load double, ptr %316, align 8
  %318 = fmul double %317, %66
  %319 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %320 = getelementptr inbounds nuw [8 x i8], ptr %319, i64 8
  %321 = load double, ptr %320, align 8
  %322 = call double @cos(double noundef %318) #4
  %323 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %324 = getelementptr inbounds nuw [8 x i8], ptr %323, i64 8
  %325 = load double, ptr %324, align 8
  %326 = call double @sin(double noundef %318) #4
  %327 = fmul double %325, %326
  %328 = call double @llvm.fmuladd.f64(double %321, double %322, double %327)
  %329 = fmul double %10, %328
  %330 = call double @llvm.fmuladd.f64(double %329, double f0x3E7AD7F29ABCAF48, double %301)
  %331 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %332 = getelementptr inbounds nuw [8 x i8], ptr %331, i64 9
  %333 = load double, ptr %332, align 8
  %334 = fmul double %333, %66
  %335 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %336 = getelementptr inbounds nuw [8 x i8], ptr %335, i64 9
  %337 = load double, ptr %336, align 8
  %338 = call double @cos(double noundef %334) #4
  %339 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %340 = getelementptr inbounds nuw [8 x i8], ptr %339, i64 9
  %341 = load double, ptr %340, align 8
  %342 = call double @sin(double noundef %334) #4
  %343 = fmul double %341, %342
  %344 = call double @llvm.fmuladd.f64(double %337, double %338, double %343)
  %345 = fmul double %10, %344
  %346 = call double @llvm.fmuladd.f64(double %345, double f0x3E7AD7F29ABCAF48, double %330)
  %347 = call double @fmod(double noundef %346, double noundef f0x401921FB54442D18) #4
  %348 = fsub double %347, %48
  %349 = call double @sin(double noundef %348) #4
  %350 = call double @llvm.fmuladd.f64(double %37, double %349, double %348)
  %351 = fsub double %348, %350
  %352 = call double @sin(double noundef %350) #4
  %353 = call double @llvm.fmuladd.f64(double %37, double %352, double %351)
  %354 = call double @cos(double noundef %350) #4
  %355 = fneg double %37
  %356 = call double @llvm.fmuladd.f64(double %355, double %354, double 1.000000e+00)
  %357 = fdiv double %353, %356
  %358 = fadd double %350, %357
  br label %447

359:                                              ; preds = %447
  %360 = fsub double %348, %358
  %361 = call double @sin(double noundef %358) #4
  %362 = call double @llvm.fmuladd.f64(double %37, double %361, double %360)
  %363 = call double @cos(double noundef %358) #4
  %364 = call double @llvm.fmuladd.f64(double %355, double %363, double 1.000000e+00)
  %365 = fdiv double %362, %364
  %366 = fadd double %358, %365
  %367 = call double @llvm.fabs.f64(double %365)
  %368 = fcmp olt double %367, f0x3D719799812DEA11
  br i1 %368, label %450, label %369

369:                                              ; preds = %359
  %370 = fsub double %348, %366
  %371 = call double @sin(double noundef %366) #4
  %372 = call double @llvm.fmuladd.f64(double %37, double %371, double %370)
  %373 = call double @cos(double noundef %366) #4
  %374 = call double @llvm.fmuladd.f64(double %355, double %373, double 1.000000e+00)
  %375 = fdiv double %372, %374
  %376 = fadd double %366, %375
  %377 = call double @llvm.fabs.f64(double %375)
  %378 = fcmp olt double %377, f0x3D719799812DEA11
  br i1 %378, label %450, label %379

379:                                              ; preds = %369
  %380 = fsub double %348, %376
  %381 = call double @sin(double noundef %376) #4
  %382 = call double @llvm.fmuladd.f64(double %37, double %381, double %380)
  %383 = call double @cos(double noundef %376) #4
  %384 = call double @llvm.fmuladd.f64(double %355, double %383, double 1.000000e+00)
  %385 = fdiv double %382, %384
  %386 = fadd double %376, %385
  %387 = call double @llvm.fabs.f64(double %385)
  %388 = fcmp olt double %387, f0x3D719799812DEA11
  br i1 %388, label %450, label %389

389:                                              ; preds = %379
  %390 = fsub double %348, %386
  %391 = call double @sin(double noundef %386) #4
  %392 = call double @llvm.fmuladd.f64(double %37, double %391, double %390)
  %393 = call double @cos(double noundef %386) #4
  %394 = call double @llvm.fmuladd.f64(double %355, double %393, double 1.000000e+00)
  %395 = fdiv double %392, %394
  %396 = fadd double %386, %395
  %397 = call double @llvm.fabs.f64(double %395)
  %398 = fcmp olt double %397, f0x3D719799812DEA11
  br i1 %398, label %450, label %399

399:                                              ; preds = %389
  %400 = fsub double %348, %396
  %401 = call double @sin(double noundef %396) #4
  %402 = call double @llvm.fmuladd.f64(double %37, double %401, double %400)
  %403 = call double @cos(double noundef %396) #4
  %404 = call double @llvm.fmuladd.f64(double %355, double %403, double 1.000000e+00)
  %405 = fdiv double %402, %404
  %406 = fadd double %396, %405
  %407 = call double @llvm.fabs.f64(double %405)
  %408 = fcmp olt double %407, f0x3D719799812DEA11
  br i1 %408, label %450, label %409

409:                                              ; preds = %399
  %410 = fsub double %348, %406
  %411 = call double @sin(double noundef %406) #4
  %412 = call double @llvm.fmuladd.f64(double %37, double %411, double %410)
  %413 = call double @cos(double noundef %406) #4
  %414 = call double @llvm.fmuladd.f64(double %355, double %413, double 1.000000e+00)
  %415 = fdiv double %412, %414
  %416 = fadd double %406, %415
  %417 = call double @llvm.fabs.f64(double %415)
  %418 = fcmp olt double %417, f0x3D719799812DEA11
  br i1 %418, label %450, label %419

419:                                              ; preds = %409
  %420 = fsub double %348, %416
  %421 = call double @sin(double noundef %416) #4
  %422 = call double @llvm.fmuladd.f64(double %37, double %421, double %420)
  %423 = call double @cos(double noundef %416) #4
  %424 = call double @llvm.fmuladd.f64(double %355, double %423, double 1.000000e+00)
  %425 = fdiv double %422, %424
  %426 = fadd double %416, %425
  %427 = call double @llvm.fabs.f64(double %425)
  %428 = fcmp olt double %427, f0x3D719799812DEA11
  br i1 %428, label %450, label %429

429:                                              ; preds = %419
  %430 = fsub double %348, %426
  %431 = call double @sin(double noundef %426) #4
  %432 = call double @llvm.fmuladd.f64(double %37, double %431, double %430)
  %433 = call double @cos(double noundef %426) #4
  %434 = call double @llvm.fmuladd.f64(double %355, double %433, double 1.000000e+00)
  %435 = fdiv double %432, %434
  %436 = fadd double %426, %435
  %437 = call double @llvm.fabs.f64(double %435)
  %438 = fcmp olt double %437, f0x3D719799812DEA11
  br i1 %438, label %450, label %439

439:                                              ; preds = %429
  %440 = fsub double %348, %436
  %441 = call double @sin(double noundef %436) #4
  %442 = call double @llvm.fmuladd.f64(double %37, double %441, double %440)
  %443 = call double @cos(double noundef %436) #4
  %444 = call double @llvm.fmuladd.f64(double %355, double %443, double 1.000000e+00)
  %445 = fdiv double %442, %444
  %446 = fadd double %436, %445
  br label %450

447:                                              ; preds = %314
  %448 = call double @llvm.fabs.f64(double %357)
  %449 = fcmp olt double %448, f0x3D719799812DEA11
  br i1 %449, label %450, label %359

450:                                              ; preds = %439, %429, %419, %409, %399, %389, %379, %369, %359, %447
  %.lcssa1 = phi double [ %355, %447 ], [ %355, %439 ], [ %355, %359 ], [ %355, %429 ], [ %355, %369 ], [ %355, %399 ], [ %355, %379 ], [ %355, %419 ], [ %355, %389 ], [ %355, %409 ]
  %.lcssa = phi double [ %358, %447 ], [ %446, %439 ], [ %366, %359 ], [ %436, %429 ], [ %376, %369 ], [ %406, %399 ], [ %386, %379 ], [ %426, %419 ], [ %396, %389 ], [ %416, %409 ]
  %451 = fmul double %312, %313
  %452 = call double @llvm.fmuladd.f64(double %308, double %309, double %451)
  %453 = fmul double %10, %452
  %454 = call double @llvm.fmuladd.f64(double %453, double f0x3E7AD7F29ABCAF48, double %290)
  %455 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %456 = fmul double %455, %10
  %457 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %456)
  %458 = fmul double %457, f0x3ED455A5B2FF8F9D
  %459 = fmul double %.lcssa, 5.000000e-01
  %460 = fadd double %37, 1.000000e+00
  %461 = fsub double 1.000000e+00, %37
  %462 = fdiv double %460, %461
  %463 = call double @sqrt(double noundef %462) #4
  %464 = call double @sin(double noundef %459) #4
  %465 = fmul double %463, %464
  %466 = call double @cos(double noundef %459) #4
  %467 = call double @atan2(double noundef %465, double noundef %466) #4
  %468 = fmul double %467, 2.000000e+00
  %469 = call double @cos(double noundef %.lcssa) #4
  %470 = call double @llvm.fmuladd.f64(double %.lcssa1, double %469, double 1.000000e+00)
  %471 = fmul double %454, %470
  %472 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %473 = load double, ptr %472, align 8
  %474 = fdiv double 1.000000e+00, %473
  %475 = fadd double %474, 1.000000e+00
  %476 = fmul double %454, %454
  %477 = fmul double %476, %454
  %478 = fdiv double %475, %477
  %479 = call double @sqrt(double noundef %478) #4
  %480 = fmul double %479, f0x3F919D6D51A6B69A
  %481 = fmul double %458, 5.000000e-01
  %482 = call double @sin(double noundef %481) #4
  %483 = call double @cos(double noundef %65) #4
  %484 = fmul double %482, %483
  %485 = call double @sin(double noundef %65) #4
  %486 = fmul double %482, %485
  %487 = fadd double %468, %48
  %488 = call double @sin(double noundef %487) #4
  %489 = call double @cos(double noundef %487) #4
  %490 = fneg double %488
  %491 = fmul double %484, %490
  %492 = call double @llvm.fmuladd.f64(double %486, double %489, double %491)
  %493 = fmul double %492, 2.000000e+00
  %494 = call double @llvm.fmuladd.f64(double %.lcssa1, double %37, double 1.000000e+00)
  %495 = call double @sqrt(double noundef %494) #4
  %496 = fdiv double %454, %495
  %497 = call double @cos(double noundef %481) #4
  %498 = call double @sin(double noundef %48) #4
  %499 = call double @llvm.fmuladd.f64(double %37, double %498, double %488)
  %500 = fmul double %499, %496
  %501 = call double @cos(double noundef %48) #4
  %502 = call double @llvm.fmuladd.f64(double %37, double %501, double %489)
  %503 = fmul double %502, %496
  %504 = fmul double %486, 2.000000e+00
  %505 = fmul double %504, %484
  %506 = fneg double %493
  %507 = call double @llvm.fmuladd.f64(double %506, double %486, double %489)
  %508 = fmul double %471, %507
  %509 = call double @llvm.fmuladd.f64(double %493, double %484, double %488)
  %510 = fmul double %471, %509
  %511 = fmul double %497, %506
  %512 = fmul double %471, %511
  store double %508, ptr %2, align 8
  %513 = fmul double %512, f0xBFD9752E50F4B399
  %514 = call double @llvm.fmuladd.f64(double %510, double f0x3FED5C0357681EF3, double %513)
  %515 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %514, ptr %515, align 8
  %516 = fmul double %512, f0x3FED5C0357681EF3
  %517 = call double @llvm.fmuladd.f64(double %510, double f0x3FD9752E50F4B399, double %516)
  %518 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %517, ptr %518, align 8
  %519 = call double @llvm.fmuladd.f64(double %504, double %486, double -1.000000e+00)
  %520 = fmul double %505, %503
  %521 = call double @llvm.fmuladd.f64(double %519, double %500, double %520)
  %522 = fmul double %480, %521
  %523 = fmul double %484, -2.000000e+00
  %524 = call double @llvm.fmuladd.f64(double %523, double %484, double 1.000000e+00)
  %525 = fneg double %500
  %526 = fmul double %505, %525
  %527 = call double @llvm.fmuladd.f64(double %524, double %503, double %526)
  %528 = fmul double %480, %527
  %529 = fmul double %497, 2.000000e+00
  %530 = fmul double %484, %503
  %531 = call double @llvm.fmuladd.f64(double %486, double %500, double %530)
  %532 = fmul double %529, %531
  %533 = fmul double %480, %532
  %534 = load ptr, ptr %4, align 8
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 24
  store double %522, ptr %535, align 8
  %536 = fmul double %533, f0xBFD9752E50F4B399
  %537 = call double @llvm.fmuladd.f64(double %528, double f0x3FED5C0357681EF3, double %536)
  %538 = getelementptr inbounds nuw i8, ptr %534, i64 32
  store double %537, ptr %538, align 8
  %539 = fmul double %533, f0x3FED5C0357681EF3
  %540 = call double @llvm.fmuladd.f64(double %528, double f0x3FD9752E50F4B399, double %539)
  %541 = getelementptr inbounds nuw i8, ptr %534, i64 40
  store double %540, ptr %541, align 8
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
  br label %11

8:                                                ; preds = %11
  %9 = phi i32 [ %16, %11 ]
  %10 = icmp slt i32 %9, %0
  br i1 %10, label %11, label %.loopexit, !llvm.loop !7

11:                                               ; preds = %7, %8
  %12 = phi i32 [ 1, %7 ], [ %9, %8 ]
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %15, 0
  %16 = add nuw nsw i32 %12, 1
  br i1 %.not, label %17, label %8

17:                                               ; preds = %11
  br label %18

.loopexit:                                        ; preds = %8
  br label %18

18:                                               ; preds = %.loopexit, %17
  br label %19

19:                                               ; preds = %18, %2
  br label %20

20:                                               ; preds = %19, %37
  %21 = phi i32 [ 0, %19 ], [ %38, %37 ]
  store double f0x4142B42C80000000, ptr %3, align 16
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %22, align 8
  br label %23

23:                                               ; preds = %20, %27
  %24 = phi i32 [ 0, %20 ], [ %35, %27 ]
  %25 = load double, ptr %3, align 16
  %26 = fadd double %25, 1.000000e+00
  store double %26, ptr %3, align 16
  br label %27

27:                                               ; preds = %23
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %4)
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4)
  %28 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %28)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %4)
  %29 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %29)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull %4)
  %30 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %30)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4)
  %31 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %31)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %4)
  %32 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %32)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull %4)
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %33)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4)
  %34 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %34)
  %35 = add nuw nsw i32 %24, 1
  %36 = icmp samesign ult i32 %35, 36525
  br i1 %36, label %23, label %37, !llvm.loop !9

37:                                               ; preds = %27
  %38 = add nuw nsw i32 %21, 1
  %39 = icmp samesign ult i32 %38, 20
  br i1 %39, label %20, label %40, !llvm.loop !10

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  %42 = load double, ptr %5, align 8
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %46 = load double, ptr %45, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %42, double noundef %44, double noundef %46) #4
  %48 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %51 = load double, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %53 = load double, ptr %52, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %49, double noundef %51, double noundef %53) #4
  %55 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %58 = load double, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %60 = load double, ptr %59, align 8
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %56, double noundef %58, double noundef %60) #4
  %62 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %63 = load double, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %65 = load double, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %67 = load double, ptr %66, align 8
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %63, double noundef %65, double noundef %67) #4
  %69 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %72 = load double, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %74 = load double, ptr %73, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %70, double noundef %72, double noundef %74) #4
  %76 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %77 = load double, ptr %76, align 8
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %79 = load double, ptr %78, align 8
  %80 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %81 = load double, ptr %80, align 8
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %77, double noundef %79, double noundef %81) #4
  %83 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %84 = load double, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %86 = load double, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %88 = load double, ptr %87, align 8
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %84, double noundef %86, double noundef %88) #4
  %90 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %91 = load double, ptr %90, align 8
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %93 = load double, ptr %92, align 8
  %94 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %95 = load double, ptr %94, align 8
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %91, double noundef %93, double noundef %95) #4
  %97 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %98 = call i32 @fflush(ptr noundef %97) #4
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
