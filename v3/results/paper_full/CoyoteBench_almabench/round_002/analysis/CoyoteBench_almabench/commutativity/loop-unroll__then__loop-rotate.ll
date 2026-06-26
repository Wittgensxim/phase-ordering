; ModuleID = 'results\paper_full\CoyoteBench_almabench\round_001\output.ll'
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
  %68 = getelementptr inbounds [80 x i8], ptr @kq, i64 %11
  %69 = getelementptr inbounds [72 x i8], ptr @ca, i64 %11
  %70 = getelementptr inbounds [72 x i8], ptr @sa, i64 %11
  %71 = getelementptr inbounds [80 x i8], ptr @cl, i64 %11
  %72 = getelementptr inbounds [80 x i8], ptr @sl, i64 %11
  br label %73

73:                                               ; preds = %3, %73
  %74 = phi i32 [ 0, %3 ], [ %102, %73 ]
  %75 = phi double [ %19, %3 ], [ %92, %73 ]
  %76 = phi double [ %29, %3 ], [ %101, %73 ]
  %77 = zext nneg i32 %74 to i64
  %78 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = fmul double %79, %66
  %81 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %77
  %82 = load double, ptr %81, align 8
  %83 = fmul double %82, %66
  %84 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %77
  %85 = load double, ptr %84, align 8
  %86 = call double @cos(double noundef %80) #4
  %87 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 %77
  %88 = load double, ptr %87, align 8
  %89 = call double @sin(double noundef %80) #4
  %90 = fmul double %88, %89
  %91 = call double @llvm.fmuladd.f64(double %85, double %86, double %90)
  %92 = call double @llvm.fmuladd.f64(double %91, double f0x3E7AD7F29ABCAF48, double %75)
  %93 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 %77
  %94 = load double, ptr %93, align 8
  %95 = call double @cos(double noundef %83) #4
  %96 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 %77
  %97 = load double, ptr %96, align 8
  %98 = call double @sin(double noundef %83) #4
  %99 = fmul double %97, %98
  %100 = call double @llvm.fmuladd.f64(double %94, double %95, double %99)
  %101 = call double @llvm.fmuladd.f64(double %100, double f0x3E7AD7F29ABCAF48, double %76)
  %102 = add nuw nsw i32 %74, 1
  %103 = icmp samesign ult i32 %102, 8
  br i1 %103, label %73, label %104, !llvm.loop !7

104:                                              ; preds = %73
  %.lcssa3 = phi double [ %101, %73 ]
  %.lcssa2 = phi double [ %92, %73 ]
  %105 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %106 = load double, ptr %105, align 8
  %107 = fmul double %106, %66
  %108 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %109 = load double, ptr %108, align 8
  %110 = call double @cos(double noundef %107) #4
  %111 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %112 = load double, ptr %111, align 8
  %113 = call double @sin(double noundef %107) #4
  br label %114

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 8
  %117 = load double, ptr %116, align 8
  %118 = fmul double %117, %66
  %119 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 8
  %120 = load double, ptr %119, align 8
  %121 = call double @cos(double noundef %118) #4
  %122 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 8
  %123 = load double, ptr %122, align 8
  %124 = call double @sin(double noundef %118) #4
  %125 = fmul double %123, %124
  %126 = call double @llvm.fmuladd.f64(double %120, double %121, double %125)
  %127 = fmul double %10, %126
  %128 = call double @llvm.fmuladd.f64(double %127, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  br label %129

129:                                              ; preds = %115
  %130 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 9
  %131 = load double, ptr %130, align 8
  %132 = fmul double %131, %66
  %133 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 9
  %134 = load double, ptr %133, align 8
  %135 = call double @cos(double noundef %132) #4
  %136 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 9
  %137 = load double, ptr %136, align 8
  %138 = call double @sin(double noundef %132) #4
  %139 = fmul double %137, %138
  %140 = call double @llvm.fmuladd.f64(double %134, double %135, double %139)
  %141 = fmul double %10, %140
  %142 = call double @llvm.fmuladd.f64(double %141, double f0x3E7AD7F29ABCAF48, double %128)
  br i1 false, label %143, label %149

143:                                              ; preds = %129
  %144 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 10
  %145 = load double, ptr %144, align 8
  %146 = fmul double %145, %66
  %147 = call double @cos(double noundef %146) #4
  %148 = call double @sin(double noundef %146) #4
  unreachable

149:                                              ; preds = %129
  %.lcssa1 = phi double [ %142, %129 ]
  %150 = call double @fmod(double noundef %.lcssa1, double noundef f0x401921FB54442D18) #4
  %151 = fsub double %150, %48
  %152 = call double @sin(double noundef %151) #4
  %153 = call double @llvm.fmuladd.f64(double %37, double %152, double %151)
  %154 = fneg double %37
  br label %155

155:                                              ; preds = %149
  %156 = fsub double %151, %153
  %157 = call double @sin(double noundef %153) #4
  %158 = call double @llvm.fmuladd.f64(double %37, double %157, double %156)
  %159 = call double @cos(double noundef %153) #4
  %160 = call double @llvm.fmuladd.f64(double %154, double %159, double 1.000000e+00)
  %161 = fdiv double %158, %160
  %162 = fadd double %153, %161
  br label %163

163:                                              ; preds = %155
  %164 = call double @llvm.fabs.f64(double %161)
  %165 = fcmp olt double %164, f0x3D719799812DEA11
  br i1 %165, label %166, label %257

166:                                              ; preds = %353, %345, %342, %331, %320, %309, %298, %287, %276, %265, %163
  %.lcssa = phi double [ %162, %163 ], [ %352, %353 ], [ %352, %345 ], [ %264, %265 ], [ %341, %342 ], [ %275, %276 ], [ %308, %309 ], [ %286, %287 ], [ %330, %331 ], [ %297, %298 ], [ %319, %320 ]
  %167 = fmul double %112, %113
  %168 = call double @llvm.fmuladd.f64(double %109, double %110, double %167)
  %169 = fmul double %10, %168
  %170 = call double @llvm.fmuladd.f64(double %169, double f0x3E7AD7F29ABCAF48, double %.lcssa2)
  %171 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %172 = fmul double %171, %10
  %173 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %172)
  %174 = fmul double %173, f0x3ED455A5B2FF8F9D
  %175 = fmul double %.lcssa, 5.000000e-01
  %176 = fadd double %37, 1.000000e+00
  %177 = fsub double 1.000000e+00, %37
  %178 = fdiv double %176, %177
  %179 = call double @sqrt(double noundef %178) #4
  %180 = call double @sin(double noundef %175) #4
  %181 = fmul double %179, %180
  %182 = call double @cos(double noundef %175) #4
  %183 = call double @atan2(double noundef %181, double noundef %182) #4
  %184 = fmul double %183, 2.000000e+00
  %185 = call double @cos(double noundef %.lcssa) #4
  %186 = call double @llvm.fmuladd.f64(double %154, double %185, double 1.000000e+00)
  %187 = fmul double %170, %186
  %188 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %189 = load double, ptr %188, align 8
  %190 = fdiv double 1.000000e+00, %189
  %191 = fadd double %190, 1.000000e+00
  %192 = fmul double %170, %170
  %193 = fmul double %192, %170
  %194 = fdiv double %191, %193
  %195 = call double @sqrt(double noundef %194) #4
  %196 = fmul double %195, f0x3F919D6D51A6B69A
  %197 = fmul double %174, 5.000000e-01
  %198 = call double @sin(double noundef %197) #4
  %199 = call double @cos(double noundef %65) #4
  %200 = fmul double %198, %199
  %201 = call double @sin(double noundef %65) #4
  %202 = fmul double %198, %201
  %203 = fadd double %184, %48
  %204 = call double @sin(double noundef %203) #4
  %205 = call double @cos(double noundef %203) #4
  %206 = fneg double %204
  %207 = fmul double %200, %206
  %208 = call double @llvm.fmuladd.f64(double %202, double %205, double %207)
  %209 = fmul double %208, 2.000000e+00
  %210 = call double @llvm.fmuladd.f64(double %154, double %37, double 1.000000e+00)
  %211 = call double @sqrt(double noundef %210) #4
  %212 = fdiv double %170, %211
  %213 = call double @cos(double noundef %197) #4
  %214 = call double @sin(double noundef %48) #4
  %215 = call double @llvm.fmuladd.f64(double %37, double %214, double %204)
  %216 = fmul double %215, %212
  %217 = call double @cos(double noundef %48) #4
  %218 = call double @llvm.fmuladd.f64(double %37, double %217, double %205)
  %219 = fmul double %218, %212
  %220 = fmul double %202, 2.000000e+00
  %221 = fmul double %220, %200
  %222 = fneg double %209
  %223 = call double @llvm.fmuladd.f64(double %222, double %202, double %205)
  %224 = fmul double %187, %223
  %225 = call double @llvm.fmuladd.f64(double %209, double %200, double %204)
  %226 = fmul double %187, %225
  %227 = fmul double %213, %222
  %228 = fmul double %187, %227
  store double %224, ptr %2, align 8
  %229 = fmul double %228, f0xBFD9752E50F4B399
  %230 = call double @llvm.fmuladd.f64(double %226, double f0x3FED5C0357681EF3, double %229)
  %231 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %230, ptr %231, align 8
  %232 = fmul double %228, f0x3FED5C0357681EF3
  %233 = call double @llvm.fmuladd.f64(double %226, double f0x3FD9752E50F4B399, double %232)
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %233, ptr %234, align 8
  %235 = call double @llvm.fmuladd.f64(double %220, double %202, double -1.000000e+00)
  %236 = fmul double %221, %219
  %237 = call double @llvm.fmuladd.f64(double %235, double %216, double %236)
  %238 = fmul double %196, %237
  %239 = fmul double %200, -2.000000e+00
  %240 = call double @llvm.fmuladd.f64(double %239, double %200, double 1.000000e+00)
  %241 = fneg double %216
  %242 = fmul double %221, %241
  %243 = call double @llvm.fmuladd.f64(double %240, double %219, double %242)
  %244 = fmul double %196, %243
  %245 = fmul double %213, 2.000000e+00
  %246 = fmul double %200, %219
  %247 = call double @llvm.fmuladd.f64(double %202, double %216, double %246)
  %248 = fmul double %245, %247
  %249 = fmul double %196, %248
  %250 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %238, ptr %250, align 8
  %251 = fmul double %249, f0xBFD9752E50F4B399
  %252 = call double @llvm.fmuladd.f64(double %244, double f0x3FED5C0357681EF3, double %251)
  %253 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %252, ptr %253, align 8
  %254 = fmul double %249, f0x3FED5C0357681EF3
  %255 = call double @llvm.fmuladd.f64(double %244, double f0x3FD9752E50F4B399, double %254)
  %256 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %255, ptr %256, align 8
  ret void

257:                                              ; preds = %163
  %258 = fsub double %151, %162
  %259 = call double @sin(double noundef %162) #4
  %260 = call double @llvm.fmuladd.f64(double %37, double %259, double %258)
  %261 = call double @cos(double noundef %162) #4
  %262 = call double @llvm.fmuladd.f64(double %154, double %261, double 1.000000e+00)
  %263 = fdiv double %260, %262
  %264 = fadd double %162, %263
  br label %265

265:                                              ; preds = %257
  %266 = call double @llvm.fabs.f64(double %263)
  %267 = fcmp olt double %266, f0x3D719799812DEA11
  br i1 %267, label %166, label %268

268:                                              ; preds = %265
  %269 = fsub double %151, %264
  %270 = call double @sin(double noundef %264) #4
  %271 = call double @llvm.fmuladd.f64(double %37, double %270, double %269)
  %272 = call double @cos(double noundef %264) #4
  %273 = call double @llvm.fmuladd.f64(double %154, double %272, double 1.000000e+00)
  %274 = fdiv double %271, %273
  %275 = fadd double %264, %274
  br label %276

276:                                              ; preds = %268
  %277 = call double @llvm.fabs.f64(double %274)
  %278 = fcmp olt double %277, f0x3D719799812DEA11
  br i1 %278, label %166, label %279

279:                                              ; preds = %276
  %280 = fsub double %151, %275
  %281 = call double @sin(double noundef %275) #4
  %282 = call double @llvm.fmuladd.f64(double %37, double %281, double %280)
  %283 = call double @cos(double noundef %275) #4
  %284 = call double @llvm.fmuladd.f64(double %154, double %283, double 1.000000e+00)
  %285 = fdiv double %282, %284
  %286 = fadd double %275, %285
  br label %287

287:                                              ; preds = %279
  %288 = call double @llvm.fabs.f64(double %285)
  %289 = fcmp olt double %288, f0x3D719799812DEA11
  br i1 %289, label %166, label %290

290:                                              ; preds = %287
  %291 = fsub double %151, %286
  %292 = call double @sin(double noundef %286) #4
  %293 = call double @llvm.fmuladd.f64(double %37, double %292, double %291)
  %294 = call double @cos(double noundef %286) #4
  %295 = call double @llvm.fmuladd.f64(double %154, double %294, double 1.000000e+00)
  %296 = fdiv double %293, %295
  %297 = fadd double %286, %296
  br label %298

298:                                              ; preds = %290
  %299 = call double @llvm.fabs.f64(double %296)
  %300 = fcmp olt double %299, f0x3D719799812DEA11
  br i1 %300, label %166, label %301

301:                                              ; preds = %298
  %302 = fsub double %151, %297
  %303 = call double @sin(double noundef %297) #4
  %304 = call double @llvm.fmuladd.f64(double %37, double %303, double %302)
  %305 = call double @cos(double noundef %297) #4
  %306 = call double @llvm.fmuladd.f64(double %154, double %305, double 1.000000e+00)
  %307 = fdiv double %304, %306
  %308 = fadd double %297, %307
  br label %309

309:                                              ; preds = %301
  %310 = call double @llvm.fabs.f64(double %307)
  %311 = fcmp olt double %310, f0x3D719799812DEA11
  br i1 %311, label %166, label %312

312:                                              ; preds = %309
  %313 = fsub double %151, %308
  %314 = call double @sin(double noundef %308) #4
  %315 = call double @llvm.fmuladd.f64(double %37, double %314, double %313)
  %316 = call double @cos(double noundef %308) #4
  %317 = call double @llvm.fmuladd.f64(double %154, double %316, double 1.000000e+00)
  %318 = fdiv double %315, %317
  %319 = fadd double %308, %318
  br label %320

320:                                              ; preds = %312
  %321 = call double @llvm.fabs.f64(double %318)
  %322 = fcmp olt double %321, f0x3D719799812DEA11
  br i1 %322, label %166, label %323

323:                                              ; preds = %320
  %324 = fsub double %151, %319
  %325 = call double @sin(double noundef %319) #4
  %326 = call double @llvm.fmuladd.f64(double %37, double %325, double %324)
  %327 = call double @cos(double noundef %319) #4
  %328 = call double @llvm.fmuladd.f64(double %154, double %327, double 1.000000e+00)
  %329 = fdiv double %326, %328
  %330 = fadd double %319, %329
  br label %331

331:                                              ; preds = %323
  %332 = call double @llvm.fabs.f64(double %329)
  %333 = fcmp olt double %332, f0x3D719799812DEA11
  br i1 %333, label %166, label %334

334:                                              ; preds = %331
  %335 = fsub double %151, %330
  %336 = call double @sin(double noundef %330) #4
  %337 = call double @llvm.fmuladd.f64(double %37, double %336, double %335)
  %338 = call double @cos(double noundef %330) #4
  %339 = call double @llvm.fmuladd.f64(double %154, double %338, double 1.000000e+00)
  %340 = fdiv double %337, %339
  %341 = fadd double %330, %340
  br label %342

342:                                              ; preds = %334
  %343 = call double @llvm.fabs.f64(double %340)
  %344 = fcmp olt double %343, f0x3D719799812DEA11
  br i1 %344, label %166, label %345

345:                                              ; preds = %342
  %346 = fsub double %151, %341
  %347 = call double @sin(double noundef %341) #4
  %348 = call double @llvm.fmuladd.f64(double %37, double %347, double %346)
  %349 = call double @cos(double noundef %341) #4
  %350 = call double @llvm.fmuladd.f64(double %154, double %349, double 1.000000e+00)
  %351 = fdiv double %348, %350
  %352 = fadd double %341, %351
  br i1 true, label %166, label %353

353:                                              ; preds = %345
  %354 = call double @llvm.fabs.f64(double %351)
  %355 = fcmp olt double %354, f0x3D719799812DEA11
  br i1 %355, label %166, label %356

356:                                              ; preds = %353
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
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %12

9:                                                ; preds = %12
  %10 = phi i32 [ %16, %12 ]
  %11 = icmp slt i32 %10, %0
  br i1 %11, label %12, label %.loopexit, !llvm.loop !9

12:                                               ; preds = %7, %9
  %13 = phi i32 [ 1, %7 ], [ %10, %9 ]
  %14 = load ptr, ptr %8, align 8
  %15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %15, 0
  %16 = add nuw nsw i32 %13, 1
  br i1 %.not, label %17, label %9

17:                                               ; preds = %12
  br label %18

.loopexit:                                        ; preds = %9
  br label %18

18:                                               ; preds = %.loopexit, %17
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %21

21:                                               ; preds = %19, %49
  %22 = phi i32 [ 0, %19 ], [ %50, %49 ]
  store double f0x4142B42C80000000, ptr %3, align 16
  store double 0.000000e+00, ptr %20, align 8
  br label %26

23:                                               ; preds = %44
  %24 = phi i32 [ %46, %44 ]
  %25 = icmp samesign ult i32 %24, 36525
  br i1 %25, label %26, label %49, !llvm.loop !10

26:                                               ; preds = %21, %23
  %27 = phi i32 [ 0, %21 ], [ %24, %23 ]
  %28 = load double, ptr %3, align 16
  %29 = fadd double %28, 1.000000e+00
  store double %29, ptr %3, align 16
  br label %30

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %4)
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %32

32:                                               ; preds = %31
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4)
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %33)
  br label %34

34:                                               ; preds = %32
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %4)
  %35 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %35)
  br label %36

36:                                               ; preds = %34
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull %4)
  %37 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %37)
  br label %38

38:                                               ; preds = %36
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4)
  %39 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %39)
  br label %40

40:                                               ; preds = %38
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %4)
  %41 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %41)
  br label %42

42:                                               ; preds = %40
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull %4)
  %43 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %43)
  br label %44

44:                                               ; preds = %42
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4)
  %45 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %45)
  %46 = add nuw nsw i32 %27, 1
  br i1 false, label %47, label %23

47:                                               ; preds = %44
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4)
  %48 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %48)
  unreachable

49:                                               ; preds = %23
  %50 = add nuw nsw i32 %22, 1
  %51 = icmp samesign ult i32 %50, 20
  br i1 %51, label %21, label %52, !llvm.loop !11

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load double, ptr %5, align 8
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %57 = load double, ptr %56, align 8
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %59 = load double, ptr %58, align 8
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %55, double noundef %57, double noundef %59) #4
  br label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %63 = load double, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %65 = load double, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %67 = load double, ptr %66, align 8
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %63, double noundef %65, double noundef %67) #4
  br label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %71 = load double, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %73 = load double, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 16
  %75 = load double, ptr %74, align 8
  %76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %71, double noundef %73, double noundef %75) #4
  br label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %79 = load double, ptr %78, align 8
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %81 = load double, ptr %80, align 8
  %82 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %83 = load double, ptr %82, align 8
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %79, double noundef %81, double noundef %83) #4
  br label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %87 = load double, ptr %86, align 8
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = load double, ptr %88, align 8
  %90 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %91 = load double, ptr %90, align 8
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %87, double noundef %89, double noundef %91) #4
  br label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %95 = load double, ptr %94, align 8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %97 = load double, ptr %96, align 8
  %98 = getelementptr inbounds nuw i8, ptr %94, i64 16
  %99 = load double, ptr %98, align 8
  %100 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %95, double noundef %97, double noundef %99) #4
  br label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %103 = load double, ptr %102, align 8
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 8
  %105 = load double, ptr %104, align 8
  %106 = getelementptr inbounds nuw i8, ptr %102, i64 16
  %107 = load double, ptr %106, align 8
  %108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %103, double noundef %105, double noundef %107) #4
  br label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %111 = load double, ptr %110, align 8
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 8
  %113 = load double, ptr %112, align 8
  %114 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %115 = load double, ptr %114, align 8
  %116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %111, double noundef %113, double noundef %115) #4
  br i1 false, label %117, label %125

117:                                              ; preds = %109
  %118 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  %119 = load double, ptr %118, align 8
  %120 = getelementptr inbounds nuw i8, ptr %118, i64 8
  %121 = load double, ptr %120, align 8
  %122 = getelementptr inbounds nuw i8, ptr %118, i64 16
  %123 = load double, ptr %122, align 8
  %124 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %119, double noundef %121, double noundef %123) #4
  unreachable

125:                                              ; preds = %109
  %126 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %127 = call i32 @fflush(ptr noundef %126) #4
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
