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

67:                                               ; preds = %3, %67
  %68 = phi i32 [ 0, %3 ], [ %102, %67 ]
  %69 = phi double [ %19, %3 ], [ %90, %67 ]
  %70 = phi double [ %29, %3 ], [ %101, %67 ]
  %71 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %72 = zext nneg i32 %68 to i64
  %73 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = fmul double %74, %66
  %76 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %77 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %72
  %78 = load double, ptr %77, align 8
  %79 = fmul double %78, %66
  %80 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %81 = getelementptr inbounds nuw [8 x i8], ptr %80, i64 %72
  %82 = load double, ptr %81, align 8
  %83 = call double @cos(double noundef %75) #4
  %84 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %85 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 %72
  %86 = load double, ptr %85, align 8
  %87 = call double @sin(double noundef %75) #4
  %88 = fmul double %86, %87
  %89 = call double @llvm.fmuladd.f64(double %82, double %83, double %88)
  %90 = call double @llvm.fmuladd.f64(double %89, double f0x3E7AD7F29ABCAF48, double %69)
  %91 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %92 = getelementptr inbounds nuw [8 x i8], ptr %91, i64 %72
  %93 = load double, ptr %92, align 8
  %94 = call double @cos(double noundef %79) #4
  %95 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %96 = getelementptr inbounds nuw [8 x i8], ptr %95, i64 %72
  %97 = load double, ptr %96, align 8
  %98 = call double @sin(double noundef %79) #4
  %99 = fmul double %97, %98
  %100 = call double @llvm.fmuladd.f64(double %93, double %94, double %99)
  %101 = call double @llvm.fmuladd.f64(double %100, double f0x3E7AD7F29ABCAF48, double %70)
  %102 = add nuw nsw i32 %68, 1
  %103 = icmp samesign ult i32 %102, 8
  br i1 %103, label %67, label %104, !llvm.loop !7

104:                                              ; preds = %67
  %.lcssa4 = phi double [ %101, %67 ]
  %.lcssa3 = phi double [ %90, %67 ]
  %105 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 64
  %107 = load double, ptr %106, align 8
  %108 = fmul double %107, %66
  %109 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %111 = load double, ptr %110, align 8
  %112 = call double @cos(double noundef %108) #4
  %113 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 64
  %115 = load double, ptr %114, align 8
  %116 = call double @sin(double noundef %108) #4
  br label %117

117:                                              ; preds = %104, %117
  %118 = phi i32 [ 8, %104 ], [ %137, %117 ]
  %119 = phi double [ %.lcssa4, %104 ], [ %136, %117 ]
  %120 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %121 = zext nneg i32 %118 to i64
  %122 = getelementptr inbounds nuw [8 x i8], ptr %120, i64 %121
  %123 = load double, ptr %122, align 8
  %124 = fmul double %123, %66
  %125 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %126 = getelementptr inbounds nuw [8 x i8], ptr %125, i64 %121
  %127 = load double, ptr %126, align 8
  %128 = call double @cos(double noundef %124) #4
  %129 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  %130 = getelementptr inbounds nuw [8 x i8], ptr %129, i64 %121
  %131 = load double, ptr %130, align 8
  %132 = call double @sin(double noundef %124) #4
  %133 = fmul double %131, %132
  %134 = call double @llvm.fmuladd.f64(double %127, double %128, double %133)
  %135 = fmul double %10, %134
  %136 = call double @llvm.fmuladd.f64(double %135, double f0x3E7AD7F29ABCAF48, double %119)
  %137 = add nuw nsw i32 %118, 1
  %138 = icmp samesign ult i32 %137, 10
  br i1 %138, label %117, label %139, !llvm.loop !9

139:                                              ; preds = %117
  %.lcssa2 = phi double [ %136, %117 ]
  %140 = call double @fmod(double noundef %.lcssa2, double noundef f0x401921FB54442D18) #4
  %141 = fsub double %140, %48
  %142 = call double @sin(double noundef %141) #4
  %143 = call double @llvm.fmuladd.f64(double %37, double %142, double %141)
  %144 = fsub double %141, %143
  %145 = call double @sin(double noundef %143) #4
  %146 = call double @llvm.fmuladd.f64(double %37, double %145, double %144)
  %147 = call double @cos(double noundef %143) #4
  %148 = fneg double %37
  %149 = call double @llvm.fmuladd.f64(double %148, double %147, double 1.000000e+00)
  %150 = fdiv double %146, %149
  %151 = fadd double %143, %150
  br label %164

152:                                              ; preds = %164
  %153 = phi i32 [ %165, %164 ]
  %154 = phi double [ %166, %164 ]
  %155 = fsub double %141, %154
  %156 = call double @sin(double noundef %154) #4
  %157 = call double @llvm.fmuladd.f64(double %37, double %156, double %155)
  %158 = call double @cos(double noundef %154) #4
  %159 = call double @llvm.fmuladd.f64(double %148, double %158, double 1.000000e+00)
  %160 = fdiv double %157, %159
  %161 = fadd double %154, %160
  %162 = add nuw nsw i32 %153, 1
  %163 = icmp samesign ugt i32 %153, 8
  br i1 %163, label %170, label %164

164:                                              ; preds = %139, %152
  %165 = phi i32 [ 1, %139 ], [ %162, %152 ]
  %166 = phi double [ %151, %139 ], [ %161, %152 ]
  %167 = phi double [ %150, %139 ], [ %160, %152 ]
  %168 = call double @llvm.fabs.f64(double %167)
  %169 = fcmp olt double %168, f0x3D719799812DEA11
  br i1 %169, label %170, label %152

170:                                              ; preds = %164, %152
  %.lcssa1 = phi double [ %148, %164 ], [ %148, %152 ]
  %.lcssa = phi double [ %166, %164 ], [ %161, %152 ]
  %171 = fmul double %115, %116
  %172 = call double @llvm.fmuladd.f64(double %111, double %112, double %171)
  %173 = fmul double %10, %172
  %174 = call double @llvm.fmuladd.f64(double %173, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  %175 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %176 = fmul double %175, %10
  %177 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %176)
  %178 = fmul double %177, f0x3ED455A5B2FF8F9D
  %179 = fmul double %.lcssa, 5.000000e-01
  %180 = fadd double %37, 1.000000e+00
  %181 = fsub double 1.000000e+00, %37
  %182 = fdiv double %180, %181
  %183 = call double @sqrt(double noundef %182) #4
  %184 = call double @sin(double noundef %179) #4
  %185 = fmul double %183, %184
  %186 = call double @cos(double noundef %179) #4
  %187 = call double @atan2(double noundef %185, double noundef %186) #4
  %188 = fmul double %187, 2.000000e+00
  %189 = call double @cos(double noundef %.lcssa) #4
  %190 = call double @llvm.fmuladd.f64(double %.lcssa1, double %189, double 1.000000e+00)
  %191 = fmul double %174, %190
  %192 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %193 = load double, ptr %192, align 8
  %194 = fdiv double 1.000000e+00, %193
  %195 = fadd double %194, 1.000000e+00
  %196 = fmul double %174, %174
  %197 = fmul double %196, %174
  %198 = fdiv double %195, %197
  %199 = call double @sqrt(double noundef %198) #4
  %200 = fmul double %199, f0x3F919D6D51A6B69A
  %201 = fmul double %178, 5.000000e-01
  %202 = call double @sin(double noundef %201) #4
  %203 = call double @cos(double noundef %65) #4
  %204 = fmul double %202, %203
  %205 = call double @sin(double noundef %65) #4
  %206 = fmul double %202, %205
  %207 = fadd double %188, %48
  %208 = call double @sin(double noundef %207) #4
  %209 = call double @cos(double noundef %207) #4
  %210 = fneg double %208
  %211 = fmul double %204, %210
  %212 = call double @llvm.fmuladd.f64(double %206, double %209, double %211)
  %213 = fmul double %212, 2.000000e+00
  %214 = call double @llvm.fmuladd.f64(double %.lcssa1, double %37, double 1.000000e+00)
  %215 = call double @sqrt(double noundef %214) #4
  %216 = fdiv double %174, %215
  %217 = call double @cos(double noundef %201) #4
  %218 = call double @sin(double noundef %48) #4
  %219 = call double @llvm.fmuladd.f64(double %37, double %218, double %208)
  %220 = fmul double %219, %216
  %221 = call double @cos(double noundef %48) #4
  %222 = call double @llvm.fmuladd.f64(double %37, double %221, double %209)
  %223 = fmul double %222, %216
  %224 = fmul double %206, 2.000000e+00
  %225 = fmul double %224, %204
  %226 = fneg double %213
  %227 = call double @llvm.fmuladd.f64(double %226, double %206, double %209)
  %228 = fmul double %191, %227
  %229 = call double @llvm.fmuladd.f64(double %213, double %204, double %208)
  %230 = fmul double %191, %229
  %231 = fmul double %217, %226
  %232 = fmul double %191, %231
  store double %228, ptr %2, align 8
  %233 = fmul double %232, f0xBFD9752E50F4B399
  %234 = call double @llvm.fmuladd.f64(double %230, double f0x3FED5C0357681EF3, double %233)
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %234, ptr %235, align 8
  %236 = fmul double %232, f0x3FED5C0357681EF3
  %237 = call double @llvm.fmuladd.f64(double %230, double f0x3FD9752E50F4B399, double %236)
  %238 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %237, ptr %238, align 8
  %239 = call double @llvm.fmuladd.f64(double %224, double %206, double -1.000000e+00)
  %240 = fmul double %225, %223
  %241 = call double @llvm.fmuladd.f64(double %239, double %220, double %240)
  %242 = fmul double %200, %241
  %243 = fmul double %204, -2.000000e+00
  %244 = call double @llvm.fmuladd.f64(double %243, double %204, double 1.000000e+00)
  %245 = fneg double %220
  %246 = fmul double %225, %245
  %247 = call double @llvm.fmuladd.f64(double %244, double %223, double %246)
  %248 = fmul double %200, %247
  %249 = fmul double %217, 2.000000e+00
  %250 = fmul double %204, %223
  %251 = call double @llvm.fmuladd.f64(double %206, double %220, double %250)
  %252 = fmul double %249, %251
  %253 = fmul double %200, %252
  %254 = load ptr, ptr %4, align 8
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 24
  store double %242, ptr %255, align 8
  %256 = fmul double %253, f0xBFD9752E50F4B399
  %257 = call double @llvm.fmuladd.f64(double %248, double f0x3FED5C0357681EF3, double %256)
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 32
  store double %257, ptr %258, align 8
  %259 = fmul double %253, f0x3FED5C0357681EF3
  %260 = call double @llvm.fmuladd.f64(double %248, double f0x3FD9752E50F4B399, double %259)
  %261 = getelementptr inbounds nuw i8, ptr %254, i64 40
  store double %260, ptr %261, align 8
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
  br i1 %6, label %10, label %.loopexit

7:                                                ; preds = %10
  %8 = phi i32 [ %15, %10 ]
  %9 = icmp slt i32 %8, %0
  br i1 %9, label %10, label %.loopexit, !llvm.loop !10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %2 ]
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %14, 0
  %15 = add nuw nsw i32 %11, 1
  br i1 %.not, label %.loopexit, label %7

.loopexit:                                        ; preds = %10, %7, %2
  br label %16

16:                                               ; preds = %.loopexit, %32
  %17 = phi i32 [ 0, %.loopexit ], [ %33, %32 ]
  store double f0x4142B42C80000000, ptr %3, align 16
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %18, align 8
  br label %19

19:                                               ; preds = %16, %29
  %20 = phi i32 [ 0, %16 ], [ %30, %29 ]
  %21 = load double, ptr %3, align 16
  %22 = fadd double %21, 1.000000e+00
  store double %22, ptr %3, align 16
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ 0, %19 ], [ %27, %23 ]
  call void @planetpv(ptr noundef nonnull %3, i32 noundef %24, ptr noundef nonnull %4)
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %25
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %26)
  %27 = add nuw nsw i32 %24, 1
  %28 = icmp samesign ult i32 %27, 8
  br i1 %28, label %23, label %29, !llvm.loop !11

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %20, 1
  %31 = icmp samesign ult i32 %30, 36525
  br i1 %31, label %19, label %32, !llvm.loop !12

32:                                               ; preds = %29
  %33 = add nuw nsw i32 %17, 1
  %34 = icmp samesign ult i32 %33, 20
  br i1 %34, label %16, label %35, !llvm.loop !13

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %45, %35 ], [ 0, %32 ]
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %43 = load double, ptr %42, align 8
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %39, double noundef %41, double noundef %43) #4
  %45 = add nuw nsw i32 %36, 1
  %46 = icmp samesign ult i32 %45, 8
  br i1 %46, label %35, label %47, !llvm.loop !14

47:                                               ; preds = %35
  %48 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %49 = call i32 @fflush(ptr noundef %48) #4
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
