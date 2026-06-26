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
  %91 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 1
  %92 = load double, ptr %91, align 8
  %93 = fmul double %92, %66
  %94 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 1
  %95 = load double, ptr %94, align 8
  %96 = fmul double %95, %66
  %97 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 1
  %98 = load double, ptr %97, align 8
  %99 = call double @cos(double noundef %93) #4
  %100 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 1
  %101 = load double, ptr %100, align 8
  %102 = call double @sin(double noundef %93) #4
  %103 = fmul double %101, %102
  %104 = call double @llvm.fmuladd.f64(double %98, double %99, double %103)
  %105 = call double @llvm.fmuladd.f64(double %104, double f0x3E7AD7F29ABCAF48, double %81)
  %106 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 1
  %107 = load double, ptr %106, align 8
  %108 = call double @cos(double noundef %96) #4
  %109 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 1
  %110 = load double, ptr %109, align 8
  %111 = call double @sin(double noundef %96) #4
  %112 = fmul double %110, %111
  %113 = call double @llvm.fmuladd.f64(double %107, double %108, double %112)
  %114 = call double @llvm.fmuladd.f64(double %113, double f0x3E7AD7F29ABCAF48, double %90)
  %115 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 2
  %116 = load double, ptr %115, align 8
  %117 = fmul double %116, %66
  %118 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 2
  %119 = load double, ptr %118, align 8
  %120 = fmul double %119, %66
  %121 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 2
  %122 = load double, ptr %121, align 8
  %123 = call double @cos(double noundef %117) #4
  %124 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 2
  %125 = load double, ptr %124, align 8
  %126 = call double @sin(double noundef %117) #4
  %127 = fmul double %125, %126
  %128 = call double @llvm.fmuladd.f64(double %122, double %123, double %127)
  %129 = call double @llvm.fmuladd.f64(double %128, double f0x3E7AD7F29ABCAF48, double %105)
  %130 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 2
  %131 = load double, ptr %130, align 8
  %132 = call double @cos(double noundef %120) #4
  %133 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 2
  %134 = load double, ptr %133, align 8
  %135 = call double @sin(double noundef %120) #4
  %136 = fmul double %134, %135
  %137 = call double @llvm.fmuladd.f64(double %131, double %132, double %136)
  %138 = call double @llvm.fmuladd.f64(double %137, double f0x3E7AD7F29ABCAF48, double %114)
  %139 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 3
  %140 = load double, ptr %139, align 8
  %141 = fmul double %140, %66
  %142 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 3
  %143 = load double, ptr %142, align 8
  %144 = fmul double %143, %66
  %145 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 3
  %146 = load double, ptr %145, align 8
  %147 = call double @cos(double noundef %141) #4
  %148 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 3
  %149 = load double, ptr %148, align 8
  %150 = call double @sin(double noundef %141) #4
  %151 = fmul double %149, %150
  %152 = call double @llvm.fmuladd.f64(double %146, double %147, double %151)
  %153 = call double @llvm.fmuladd.f64(double %152, double f0x3E7AD7F29ABCAF48, double %129)
  %154 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 3
  %155 = load double, ptr %154, align 8
  %156 = call double @cos(double noundef %144) #4
  %157 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 3
  %158 = load double, ptr %157, align 8
  %159 = call double @sin(double noundef %144) #4
  %160 = fmul double %158, %159
  %161 = call double @llvm.fmuladd.f64(double %155, double %156, double %160)
  %162 = call double @llvm.fmuladd.f64(double %161, double f0x3E7AD7F29ABCAF48, double %138)
  %163 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 4
  %164 = load double, ptr %163, align 8
  %165 = fmul double %164, %66
  %166 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 4
  %167 = load double, ptr %166, align 8
  %168 = fmul double %167, %66
  %169 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 4
  %170 = load double, ptr %169, align 8
  %171 = call double @cos(double noundef %165) #4
  %172 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 4
  %173 = load double, ptr %172, align 8
  %174 = call double @sin(double noundef %165) #4
  %175 = fmul double %173, %174
  %176 = call double @llvm.fmuladd.f64(double %170, double %171, double %175)
  %177 = call double @llvm.fmuladd.f64(double %176, double f0x3E7AD7F29ABCAF48, double %153)
  %178 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 4
  %179 = load double, ptr %178, align 8
  %180 = call double @cos(double noundef %168) #4
  %181 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 4
  %182 = load double, ptr %181, align 8
  %183 = call double @sin(double noundef %168) #4
  %184 = fmul double %182, %183
  %185 = call double @llvm.fmuladd.f64(double %179, double %180, double %184)
  %186 = call double @llvm.fmuladd.f64(double %185, double f0x3E7AD7F29ABCAF48, double %162)
  %187 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 5
  %188 = load double, ptr %187, align 8
  %189 = fmul double %188, %66
  %190 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 5
  %191 = load double, ptr %190, align 8
  %192 = fmul double %191, %66
  %193 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 5
  %194 = load double, ptr %193, align 8
  %195 = call double @cos(double noundef %189) #4
  %196 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 5
  %197 = load double, ptr %196, align 8
  %198 = call double @sin(double noundef %189) #4
  %199 = fmul double %197, %198
  %200 = call double @llvm.fmuladd.f64(double %194, double %195, double %199)
  %201 = call double @llvm.fmuladd.f64(double %200, double f0x3E7AD7F29ABCAF48, double %177)
  %202 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 5
  %203 = load double, ptr %202, align 8
  %204 = call double @cos(double noundef %192) #4
  %205 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 5
  %206 = load double, ptr %205, align 8
  %207 = call double @sin(double noundef %192) #4
  %208 = fmul double %206, %207
  %209 = call double @llvm.fmuladd.f64(double %203, double %204, double %208)
  %210 = call double @llvm.fmuladd.f64(double %209, double f0x3E7AD7F29ABCAF48, double %186)
  %211 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 6
  %212 = load double, ptr %211, align 8
  %213 = fmul double %212, %66
  %214 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 6
  %215 = load double, ptr %214, align 8
  %216 = fmul double %215, %66
  %217 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 6
  %218 = load double, ptr %217, align 8
  %219 = call double @cos(double noundef %213) #4
  %220 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 6
  %221 = load double, ptr %220, align 8
  %222 = call double @sin(double noundef %213) #4
  %223 = fmul double %221, %222
  %224 = call double @llvm.fmuladd.f64(double %218, double %219, double %223)
  %225 = call double @llvm.fmuladd.f64(double %224, double f0x3E7AD7F29ABCAF48, double %201)
  %226 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 6
  %227 = load double, ptr %226, align 8
  %228 = call double @cos(double noundef %216) #4
  %229 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 6
  %230 = load double, ptr %229, align 8
  %231 = call double @sin(double noundef %216) #4
  %232 = fmul double %230, %231
  %233 = call double @llvm.fmuladd.f64(double %227, double %228, double %232)
  %234 = call double @llvm.fmuladd.f64(double %233, double f0x3E7AD7F29ABCAF48, double %210)
  %235 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 7
  %236 = load double, ptr %235, align 8
  %237 = fmul double %236, %66
  %238 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 7
  %239 = load double, ptr %238, align 8
  %240 = fmul double %239, %66
  %241 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 7
  %242 = load double, ptr %241, align 8
  %243 = call double @cos(double noundef %237) #4
  %244 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 7
  %245 = load double, ptr %244, align 8
  %246 = call double @sin(double noundef %237) #4
  %247 = fmul double %245, %246
  %248 = call double @llvm.fmuladd.f64(double %242, double %243, double %247)
  %249 = call double @llvm.fmuladd.f64(double %248, double f0x3E7AD7F29ABCAF48, double %225)
  %250 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 7
  %251 = load double, ptr %250, align 8
  %252 = call double @cos(double noundef %240) #4
  %253 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 7
  %254 = load double, ptr %253, align 8
  %255 = call double @sin(double noundef %240) #4
  %256 = fmul double %254, %255
  %257 = call double @llvm.fmuladd.f64(double %251, double %252, double %256)
  %258 = call double @llvm.fmuladd.f64(double %257, double f0x3E7AD7F29ABCAF48, double %234)
  br i1 false, label %259, label %272

259:                                              ; preds = %3
  %260 = getelementptr inbounds [72 x i8], ptr @kp, i64 %11
  %261 = getelementptr inbounds nuw [8 x i8], ptr %260, i64 8
  %262 = load double, ptr %261, align 8
  %263 = fmul double %262, %66
  %264 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %265 = getelementptr inbounds nuw [8 x i8], ptr %264, i64 8
  %266 = load double, ptr %265, align 8
  %267 = fmul double %266, %66
  %268 = call double @cos(double noundef %263) #4
  %269 = call double @sin(double noundef %263) #4
  %270 = call double @cos(double noundef %267) #4
  %271 = call double @sin(double noundef %267) #4
  unreachable

272:                                              ; preds = %3
  %273 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %274 = load double, ptr %273, align 8
  %275 = fmul double %274, %66
  %276 = getelementptr inbounds nuw i8, ptr %73, i64 64
  %277 = load double, ptr %276, align 8
  %278 = call double @cos(double noundef %275) #4
  %279 = getelementptr inbounds nuw i8, ptr %76, i64 64
  %280 = load double, ptr %279, align 8
  %281 = call double @sin(double noundef %275) #4
  %282 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 8
  %283 = load double, ptr %282, align 8
  %284 = fmul double %283, %66
  %285 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 8
  %286 = load double, ptr %285, align 8
  %287 = call double @cos(double noundef %284) #4
  %288 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 8
  %289 = load double, ptr %288, align 8
  %290 = call double @sin(double noundef %284) #4
  %291 = fmul double %289, %290
  %292 = call double @llvm.fmuladd.f64(double %286, double %287, double %291)
  %293 = fmul double %10, %292
  %294 = call double @llvm.fmuladd.f64(double %293, double f0x3E7AD7F29ABCAF48, double %258)
  %295 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 9
  %296 = load double, ptr %295, align 8
  %297 = fmul double %296, %66
  %298 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 9
  %299 = load double, ptr %298, align 8
  %300 = call double @cos(double noundef %297) #4
  %301 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 9
  %302 = load double, ptr %301, align 8
  %303 = call double @sin(double noundef %297) #4
  %304 = fmul double %302, %303
  %305 = call double @llvm.fmuladd.f64(double %299, double %300, double %304)
  %306 = fmul double %10, %305
  %307 = call double @llvm.fmuladd.f64(double %306, double f0x3E7AD7F29ABCAF48, double %294)
  br i1 false, label %308, label %315

308:                                              ; preds = %272
  %309 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %310 = getelementptr inbounds nuw [8 x i8], ptr %309, i64 10
  %311 = load double, ptr %310, align 8
  %312 = fmul double %311, %66
  %313 = call double @cos(double noundef %312) #4
  %314 = call double @sin(double noundef %312) #4
  unreachable

315:                                              ; preds = %272
  %316 = call double @fmod(double noundef %307, double noundef f0x401921FB54442D18) #4
  %317 = fsub double %316, %48
  %318 = call double @sin(double noundef %317) #4
  %319 = call double @llvm.fmuladd.f64(double %37, double %318, double %317)
  %320 = fsub double %317, %319
  %321 = call double @sin(double noundef %319) #4
  %322 = call double @llvm.fmuladd.f64(double %37, double %321, double %320)
  %323 = call double @cos(double noundef %319) #4
  %324 = fneg double %37
  %325 = call double @llvm.fmuladd.f64(double %324, double %323, double 1.000000e+00)
  %326 = fdiv double %322, %325
  %327 = fadd double %319, %326
  %328 = call double @llvm.fabs.f64(double %326)
  %329 = fcmp olt double %328, f0x3D719799812DEA11
  br i1 %329, label %330, label %422

330:                                              ; preds = %._crit_edge, %502, %492, %482, %472, %462, %452, %442, %432, %422, %315
  %.lcssa = phi double [ %327, %315 ], [ poison, %._crit_edge ], [ %509, %502 ], [ %429, %422 ], [ %499, %492 ], [ %439, %432 ], [ %469, %462 ], [ %449, %442 ], [ %489, %482 ], [ %459, %452 ], [ %479, %472 ]
  %331 = fmul double %280, %281
  %332 = call double @llvm.fmuladd.f64(double %277, double %278, double %331)
  %333 = fmul double %10, %332
  %334 = call double @llvm.fmuladd.f64(double %333, double f0x3E7AD7F29ABCAF48, double %249)
  %335 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %336 = fmul double %335, %10
  %337 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %336)
  %338 = fmul double %337, f0x3ED455A5B2FF8F9D
  %339 = fmul double %.lcssa, 5.000000e-01
  %340 = fadd double %37, 1.000000e+00
  %341 = fsub double 1.000000e+00, %37
  %342 = fdiv double %340, %341
  %343 = call double @sqrt(double noundef %342) #4
  %344 = call double @sin(double noundef %339) #4
  %345 = fmul double %343, %344
  %346 = call double @cos(double noundef %339) #4
  %347 = call double @atan2(double noundef %345, double noundef %346) #4
  %348 = fmul double %347, 2.000000e+00
  %349 = call double @cos(double noundef %.lcssa) #4
  %350 = call double @llvm.fmuladd.f64(double %324, double %349, double 1.000000e+00)
  %351 = fmul double %334, %350
  %352 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %353 = load double, ptr %352, align 8
  %354 = fdiv double 1.000000e+00, %353
  %355 = fadd double %354, 1.000000e+00
  %356 = fmul double %334, %334
  %357 = fmul double %356, %334
  %358 = fdiv double %355, %357
  %359 = call double @sqrt(double noundef %358) #4
  %360 = fmul double %359, f0x3F919D6D51A6B69A
  %361 = fmul double %338, 5.000000e-01
  %362 = call double @sin(double noundef %361) #4
  %363 = call double @cos(double noundef %65) #4
  %364 = fmul double %362, %363
  %365 = call double @sin(double noundef %65) #4
  %366 = fmul double %362, %365
  %367 = fadd double %348, %48
  %368 = call double @sin(double noundef %367) #4
  %369 = call double @cos(double noundef %367) #4
  %370 = fneg double %368
  %371 = fmul double %364, %370
  %372 = call double @llvm.fmuladd.f64(double %366, double %369, double %371)
  %373 = fmul double %372, 2.000000e+00
  %374 = call double @llvm.fmuladd.f64(double %324, double %37, double 1.000000e+00)
  %375 = call double @sqrt(double noundef %374) #4
  %376 = fdiv double %334, %375
  %377 = call double @cos(double noundef %361) #4
  %378 = call double @sin(double noundef %48) #4
  %379 = call double @llvm.fmuladd.f64(double %37, double %378, double %368)
  %380 = fmul double %379, %376
  %381 = call double @cos(double noundef %48) #4
  %382 = call double @llvm.fmuladd.f64(double %37, double %381, double %369)
  %383 = fmul double %382, %376
  %384 = fmul double %366, 2.000000e+00
  %385 = fmul double %384, %364
  %386 = fneg double %373
  %387 = call double @llvm.fmuladd.f64(double %386, double %366, double %369)
  %388 = fmul double %351, %387
  %389 = call double @llvm.fmuladd.f64(double %373, double %364, double %368)
  %390 = fmul double %351, %389
  %391 = fmul double %377, %386
  %392 = fmul double %351, %391
  store double %388, ptr %2, align 8
  %393 = fmul double %392, f0xBFD9752E50F4B399
  %394 = call double @llvm.fmuladd.f64(double %390, double f0x3FED5C0357681EF3, double %393)
  %395 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %394, ptr %395, align 8
  %396 = fmul double %392, f0x3FED5C0357681EF3
  %397 = call double @llvm.fmuladd.f64(double %390, double f0x3FD9752E50F4B399, double %396)
  %398 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %397, ptr %398, align 8
  %399 = call double @llvm.fmuladd.f64(double %384, double %366, double -1.000000e+00)
  %400 = fmul double %385, %383
  %401 = call double @llvm.fmuladd.f64(double %399, double %380, double %400)
  %402 = fmul double %360, %401
  %403 = fmul double %364, -2.000000e+00
  %404 = call double @llvm.fmuladd.f64(double %403, double %364, double 1.000000e+00)
  %405 = fneg double %380
  %406 = fmul double %385, %405
  %407 = call double @llvm.fmuladd.f64(double %404, double %383, double %406)
  %408 = fmul double %360, %407
  %409 = fmul double %377, 2.000000e+00
  %410 = fmul double %364, %383
  %411 = call double @llvm.fmuladd.f64(double %366, double %380, double %410)
  %412 = fmul double %409, %411
  %413 = fmul double %360, %412
  %414 = load ptr, ptr %4, align 8
  %415 = getelementptr inbounds nuw i8, ptr %414, i64 24
  store double %402, ptr %415, align 8
  %416 = fmul double %413, f0xBFD9752E50F4B399
  %417 = call double @llvm.fmuladd.f64(double %408, double f0x3FED5C0357681EF3, double %416)
  %418 = getelementptr inbounds nuw i8, ptr %414, i64 32
  store double %417, ptr %418, align 8
  %419 = fmul double %413, f0x3FED5C0357681EF3
  %420 = call double @llvm.fmuladd.f64(double %408, double f0x3FD9752E50F4B399, double %419)
  %421 = getelementptr inbounds nuw i8, ptr %414, i64 40
  store double %420, ptr %421, align 8
  ret void

422:                                              ; preds = %315
  %423 = fsub double %317, %327
  %424 = call double @sin(double noundef %327) #4
  %425 = call double @llvm.fmuladd.f64(double %37, double %424, double %423)
  %426 = call double @cos(double noundef %327) #4
  %427 = call double @llvm.fmuladd.f64(double %324, double %426, double 1.000000e+00)
  %428 = fdiv double %425, %427
  %429 = fadd double %327, %428
  %430 = call double @llvm.fabs.f64(double %428)
  %431 = fcmp olt double %430, f0x3D719799812DEA11
  br i1 %431, label %330, label %432

432:                                              ; preds = %422
  %433 = fsub double %317, %429
  %434 = call double @sin(double noundef %429) #4
  %435 = call double @llvm.fmuladd.f64(double %37, double %434, double %433)
  %436 = call double @cos(double noundef %429) #4
  %437 = call double @llvm.fmuladd.f64(double %324, double %436, double 1.000000e+00)
  %438 = fdiv double %435, %437
  %439 = fadd double %429, %438
  %440 = call double @llvm.fabs.f64(double %438)
  %441 = fcmp olt double %440, f0x3D719799812DEA11
  br i1 %441, label %330, label %442

442:                                              ; preds = %432
  %443 = fsub double %317, %439
  %444 = call double @sin(double noundef %439) #4
  %445 = call double @llvm.fmuladd.f64(double %37, double %444, double %443)
  %446 = call double @cos(double noundef %439) #4
  %447 = call double @llvm.fmuladd.f64(double %324, double %446, double 1.000000e+00)
  %448 = fdiv double %445, %447
  %449 = fadd double %439, %448
  %450 = call double @llvm.fabs.f64(double %448)
  %451 = fcmp olt double %450, f0x3D719799812DEA11
  br i1 %451, label %330, label %452

452:                                              ; preds = %442
  %453 = fsub double %317, %449
  %454 = call double @sin(double noundef %449) #4
  %455 = call double @llvm.fmuladd.f64(double %37, double %454, double %453)
  %456 = call double @cos(double noundef %449) #4
  %457 = call double @llvm.fmuladd.f64(double %324, double %456, double 1.000000e+00)
  %458 = fdiv double %455, %457
  %459 = fadd double %449, %458
  %460 = call double @llvm.fabs.f64(double %458)
  %461 = fcmp olt double %460, f0x3D719799812DEA11
  br i1 %461, label %330, label %462

462:                                              ; preds = %452
  %463 = fsub double %317, %459
  %464 = call double @sin(double noundef %459) #4
  %465 = call double @llvm.fmuladd.f64(double %37, double %464, double %463)
  %466 = call double @cos(double noundef %459) #4
  %467 = call double @llvm.fmuladd.f64(double %324, double %466, double 1.000000e+00)
  %468 = fdiv double %465, %467
  %469 = fadd double %459, %468
  %470 = call double @llvm.fabs.f64(double %468)
  %471 = fcmp olt double %470, f0x3D719799812DEA11
  br i1 %471, label %330, label %472

472:                                              ; preds = %462
  %473 = fsub double %317, %469
  %474 = call double @sin(double noundef %469) #4
  %475 = call double @llvm.fmuladd.f64(double %37, double %474, double %473)
  %476 = call double @cos(double noundef %469) #4
  %477 = call double @llvm.fmuladd.f64(double %324, double %476, double 1.000000e+00)
  %478 = fdiv double %475, %477
  %479 = fadd double %469, %478
  %480 = call double @llvm.fabs.f64(double %478)
  %481 = fcmp olt double %480, f0x3D719799812DEA11
  br i1 %481, label %330, label %482

482:                                              ; preds = %472
  %483 = fsub double %317, %479
  %484 = call double @sin(double noundef %479) #4
  %485 = call double @llvm.fmuladd.f64(double %37, double %484, double %483)
  %486 = call double @cos(double noundef %479) #4
  %487 = call double @llvm.fmuladd.f64(double %324, double %486, double 1.000000e+00)
  %488 = fdiv double %485, %487
  %489 = fadd double %479, %488
  %490 = call double @llvm.fabs.f64(double %488)
  %491 = fcmp olt double %490, f0x3D719799812DEA11
  br i1 %491, label %330, label %492

492:                                              ; preds = %482
  %493 = fsub double %317, %489
  %494 = call double @sin(double noundef %489) #4
  %495 = call double @llvm.fmuladd.f64(double %37, double %494, double %493)
  %496 = call double @cos(double noundef %489) #4
  %497 = call double @llvm.fmuladd.f64(double %324, double %496, double 1.000000e+00)
  %498 = fdiv double %495, %497
  %499 = fadd double %489, %498
  %500 = call double @llvm.fabs.f64(double %498)
  %501 = fcmp olt double %500, f0x3D719799812DEA11
  br i1 %501, label %330, label %502

502:                                              ; preds = %492
  %503 = fsub double %317, %499
  %504 = call double @sin(double noundef %499) #4
  %505 = call double @llvm.fmuladd.f64(double %37, double %504, double %503)
  %506 = call double @cos(double noundef %499) #4
  %507 = call double @llvm.fmuladd.f64(double %324, double %506, double 1.000000e+00)
  %508 = fdiv double %505, %507
  %509 = fadd double %499, %508
  br i1 true, label %330, label %510

510:                                              ; preds = %502
  %511 = call double @llvm.fabs.f64(double %508)
  %512 = fcmp olt double %511, f0x3D719799812DEA11
  br i1 %512, label %._crit_edge, label %513

._crit_edge:                                      ; preds = %510
  br label %330

513:                                              ; preds = %510
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

20:                                               ; preds = %42, %19
  %21 = phi i32 [ %43, %42 ], [ 0, %19 ]
  %22 = icmp samesign ult i32 %21, 20
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  store double f0x4142B42C80000000, ptr %3, align 16
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %24, align 8
  br label %25

25:                                               ; preds = %40, %23
  %26 = phi i32 [ %41, %40 ], [ 0, %23 ]
  %27 = icmp samesign ult i32 %26, 36525
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load double, ptr %3, align 16
  %30 = fadd double %29, 1.000000e+00
  store double %30, ptr %3, align 16
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %4)
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4)
  %31 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %31)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %4)
  %32 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %32)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull %4)
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %33)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4)
  %34 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %34)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %4)
  %35 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %35)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull %4)
  %36 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %36)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4)
  %37 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %37)
  br i1 false, label %38, label %40

38:                                               ; preds = %28
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4)
  %39 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %39)
  unreachable

40:                                               ; preds = %28
  %41 = add nuw nsw i32 %26, 1
  br label %25, !llvm.loop !9

42:                                               ; preds = %25
  %43 = add nuw nsw i32 %21, 1
  br label %20, !llvm.loop !10

44:                                               ; preds = %20
  %45 = load double, ptr %5, align 8
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %49 = load double, ptr %48, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %45, double noundef %47, double noundef %49) #4
  %51 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %56 = load double, ptr %55, align 8
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %52, double noundef %54, double noundef %56) #4
  %58 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %59 = load double, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %63 = load double, ptr %62, align 8
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %59, double noundef %61, double noundef %63) #4
  %65 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %68 = load double, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %70 = load double, ptr %69, align 8
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %66, double noundef %68, double noundef %70) #4
  %72 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %73 = load double, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 8
  %75 = load double, ptr %74, align 8
  %76 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %77 = load double, ptr %76, align 8
  %78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %73, double noundef %75, double noundef %77) #4
  %79 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %80 = load double, ptr %79, align 8
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %82 = load double, ptr %81, align 8
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %84 = load double, ptr %83, align 8
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %80, double noundef %82, double noundef %84) #4
  %86 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %87 = load double, ptr %86, align 8
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = load double, ptr %88, align 8
  %90 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %91 = load double, ptr %90, align 8
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %87, double noundef %89, double noundef %91) #4
  %93 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %94 = load double, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %96 = load double, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %98 = load double, ptr %97, align 8
  %99 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %94, double noundef %96, double noundef %98) #4
  br i1 false, label %100, label %108

100:                                              ; preds = %44
  %101 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  %102 = load double, ptr %101, align 8
  %103 = getelementptr inbounds nuw i8, ptr %101, i64 8
  %104 = load double, ptr %103, align 8
  %105 = getelementptr inbounds nuw i8, ptr %101, i64 16
  %106 = load double, ptr %105, align 8
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %102, double noundef %104, double noundef %106) #4
  unreachable

108:                                              ; preds = %44
  %109 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %110 = call i32 @fflush(ptr noundef %109) #4
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
