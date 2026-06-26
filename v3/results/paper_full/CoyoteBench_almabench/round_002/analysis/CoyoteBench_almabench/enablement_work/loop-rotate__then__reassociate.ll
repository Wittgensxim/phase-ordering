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
  %27 = fmul double %10, %26
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
  %45 = fmul double %10, %44
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
  %62 = fmul double %10, %61
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
  %80 = fmul double %66, %79
  %81 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %77
  %82 = load double, ptr %81, align 8
  %83 = fmul double %66, %82
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
  %107 = fmul double %66, %106
  %108 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %109 = load double, ptr %108, align 8
  %110 = call double @cos(double noundef %107) #4
  %111 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %112 = load double, ptr %111, align 8
  %113 = call double @sin(double noundef %107) #4
  br label %114

114:                                              ; preds = %104, %114
  %115 = phi i32 [ 8, %104 ], [ %131, %114 ]
  %116 = phi double [ %.lcssa3, %104 ], [ %130, %114 ]
  %117 = zext nneg i32 %115 to i64
  %118 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %117
  %119 = load double, ptr %118, align 8
  %120 = fmul double %66, %119
  %121 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 %117
  %122 = load double, ptr %121, align 8
  %123 = call double @cos(double noundef %120) #4
  %124 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 %117
  %125 = load double, ptr %124, align 8
  %126 = call double @sin(double noundef %120) #4
  %127 = fmul double %125, %126
  %128 = call double @llvm.fmuladd.f64(double %122, double %123, double %127)
  %129 = fmul double %10, %128
  %130 = call double @llvm.fmuladd.f64(double %129, double f0x3E7AD7F29ABCAF48, double %116)
  %131 = add nuw nsw i32 %115, 1
  %132 = icmp samesign ult i32 %131, 10
  br i1 %132, label %114, label %133, !llvm.loop !9

133:                                              ; preds = %114
  %.lcssa1 = phi double [ %130, %114 ]
  %134 = call double @fmod(double noundef %.lcssa1, double noundef f0x401921FB54442D18) #4
  %135 = fsub double %134, %48
  %136 = call double @sin(double noundef %135) #4
  %137 = call double @llvm.fmuladd.f64(double %37, double %136, double %135)
  %138 = fneg double %37
  %139 = fsub double %135, %137
  %140 = call double @sin(double noundef %137) #4
  %141 = call double @llvm.fmuladd.f64(double %37, double %140, double %139)
  %142 = call double @cos(double noundef %137) #4
  %143 = call double @llvm.fmuladd.f64(double %138, double %142, double 1.000000e+00)
  %144 = fdiv double %141, %143
  %145 = fadd double %137, %144
  br label %158

146:                                              ; preds = %158
  %147 = phi i32 [ %159, %158 ]
  %148 = phi double [ %160, %158 ]
  %149 = fsub double %135, %148
  %150 = call double @sin(double noundef %148) #4
  %151 = call double @llvm.fmuladd.f64(double %37, double %150, double %149)
  %152 = call double @cos(double noundef %148) #4
  %153 = call double @llvm.fmuladd.f64(double %138, double %152, double 1.000000e+00)
  %154 = fdiv double %151, %153
  %155 = fadd double %148, %154
  %156 = add nuw nsw i32 %147, 1
  %157 = icmp samesign ugt i32 %147, 8
  br i1 %157, label %164, label %158

158:                                              ; preds = %133, %146
  %159 = phi i32 [ 1, %133 ], [ %156, %146 ]
  %160 = phi double [ %145, %133 ], [ %155, %146 ]
  %161 = phi double [ %144, %133 ], [ %154, %146 ]
  %162 = call double @llvm.fabs.f64(double %161)
  %163 = fcmp olt double %162, f0x3D719799812DEA11
  br i1 %163, label %164, label %146

164:                                              ; preds = %158, %146
  %.lcssa = phi double [ %160, %158 ], [ %155, %146 ]
  %165 = fmul double %112, %113
  %166 = call double @llvm.fmuladd.f64(double %109, double %110, double %165)
  %167 = fmul double %10, %166
  %168 = call double @llvm.fmuladd.f64(double %167, double f0x3E7AD7F29ABCAF48, double %.lcssa2)
  %169 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %170 = fmul double %10, %169
  %171 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %170)
  %172 = fmul double %171, f0x3ED455A5B2FF8F9D
  %173 = fmul double %.lcssa, 5.000000e-01
  %174 = fadd double %37, 1.000000e+00
  %175 = fsub double 1.000000e+00, %37
  %176 = fdiv double %174, %175
  %177 = call double @sqrt(double noundef %176) #4
  %178 = call double @sin(double noundef %173) #4
  %179 = fmul double %177, %178
  %180 = call double @cos(double noundef %173) #4
  %181 = call double @atan2(double noundef %179, double noundef %180) #4
  %182 = fmul double %181, 2.000000e+00
  %183 = call double @cos(double noundef %.lcssa) #4
  %184 = call double @llvm.fmuladd.f64(double %138, double %183, double 1.000000e+00)
  %185 = fmul double %168, %184
  %186 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %187 = load double, ptr %186, align 8
  %188 = fdiv double 1.000000e+00, %187
  %189 = fadd double %188, 1.000000e+00
  %190 = fmul double %168, %168
  %191 = fmul double %168, %190
  %192 = fdiv double %189, %191
  %193 = call double @sqrt(double noundef %192) #4
  %194 = fmul double %193, f0x3F919D6D51A6B69A
  %195 = fmul double %172, 5.000000e-01
  %196 = call double @sin(double noundef %195) #4
  %197 = call double @cos(double noundef %65) #4
  %198 = fmul double %196, %197
  %199 = call double @sin(double noundef %65) #4
  %200 = fmul double %196, %199
  %201 = fadd double %48, %182
  %202 = call double @sin(double noundef %201) #4
  %203 = call double @cos(double noundef %201) #4
  %204 = fneg double %202
  %205 = fmul double %198, %204
  %206 = call double @llvm.fmuladd.f64(double %200, double %203, double %205)
  %207 = fmul double %206, 2.000000e+00
  %208 = call double @llvm.fmuladd.f64(double %138, double %37, double 1.000000e+00)
  %209 = call double @sqrt(double noundef %208) #4
  %210 = fdiv double %168, %209
  %211 = call double @cos(double noundef %195) #4
  %212 = call double @sin(double noundef %48) #4
  %213 = call double @llvm.fmuladd.f64(double %37, double %212, double %202)
  %214 = fmul double %210, %213
  %215 = call double @cos(double noundef %48) #4
  %216 = call double @llvm.fmuladd.f64(double %37, double %215, double %203)
  %217 = fmul double %210, %216
  %218 = fmul double %200, 2.000000e+00
  %219 = fmul double %198, %218
  %220 = fneg double %207
  %221 = call double @llvm.fmuladd.f64(double %220, double %200, double %203)
  %222 = fmul double %185, %221
  %223 = call double @llvm.fmuladd.f64(double %207, double %198, double %202)
  %224 = fmul double %185, %223
  %225 = fmul double %211, %220
  %226 = fmul double %185, %225
  store double %222, ptr %2, align 8
  %227 = fmul double %226, f0xBFD9752E50F4B399
  %228 = call double @llvm.fmuladd.f64(double %224, double f0x3FED5C0357681EF3, double %227)
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %228, ptr %229, align 8
  %230 = fmul double %226, f0x3FED5C0357681EF3
  %231 = call double @llvm.fmuladd.f64(double %224, double f0x3FD9752E50F4B399, double %230)
  %232 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %231, ptr %232, align 8
  %233 = call double @llvm.fmuladd.f64(double %218, double %200, double -1.000000e+00)
  %234 = fmul double %219, %217
  %235 = call double @llvm.fmuladd.f64(double %233, double %214, double %234)
  %236 = fmul double %194, %235
  %237 = fmul double %198, -2.000000e+00
  %238 = call double @llvm.fmuladd.f64(double %237, double %198, double 1.000000e+00)
  %239 = fneg double %214
  %240 = fmul double %219, %239
  %241 = call double @llvm.fmuladd.f64(double %238, double %217, double %240)
  %242 = fmul double %194, %241
  %243 = fmul double %211, 2.000000e+00
  %244 = fmul double %198, %217
  %245 = call double @llvm.fmuladd.f64(double %200, double %214, double %244)
  %246 = fmul double %243, %245
  %247 = fmul double %194, %246
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %236, ptr %248, align 8
  %249 = fmul double %247, f0xBFD9752E50F4B399
  %250 = call double @llvm.fmuladd.f64(double %242, double f0x3FED5C0357681EF3, double %249)
  %251 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %250, ptr %251, align 8
  %252 = fmul double %247, f0x3FED5C0357681EF3
  %253 = call double @llvm.fmuladd.f64(double %242, double f0x3FD9752E50F4B399, double %252)
  %254 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %253, ptr %254, align 8
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
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %12

9:                                                ; preds = %12
  %10 = phi i32 [ %16, %12 ]
  %11 = icmp slt i32 %10, %0
  br i1 %11, label %12, label %.loopexit, !llvm.loop !10

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

21:                                               ; preds = %19, %36
  %22 = phi i32 [ 0, %19 ], [ %37, %36 ]
  store double f0x4142B42C80000000, ptr %3, align 16
  store double 0.000000e+00, ptr %20, align 8
  br label %23

23:                                               ; preds = %21, %33
  %24 = phi i32 [ 0, %21 ], [ %34, %33 ]
  %25 = load double, ptr %3, align 16
  %26 = fadd double %25, 1.000000e+00
  store double %26, ptr %3, align 16
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ 0, %23 ], [ %31, %27 ]
  call void @planetpv(ptr noundef nonnull %3, i32 noundef %28, ptr noundef nonnull %4)
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %29
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %30)
  %31 = add nuw nsw i32 %28, 1
  %32 = icmp samesign ult i32 %31, 8
  br i1 %32, label %27, label %33, !llvm.loop !11

33:                                               ; preds = %27
  %34 = add nuw nsw i32 %24, 1
  %35 = icmp samesign ult i32 %34, 36525
  br i1 %35, label %23, label %36, !llvm.loop !12

36:                                               ; preds = %33
  %37 = add nuw nsw i32 %22, 1
  %38 = icmp samesign ult i32 %37, 20
  br i1 %38, label %21, label %39, !llvm.loop !13

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %40
  %41 = phi i32 [ 0, %39 ], [ %50, %40 ]
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %46 = load double, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %48 = load double, ptr %47, align 8
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %44, double noundef %46, double noundef %48) #4
  %50 = add nuw nsw i32 %41, 1
  %51 = icmp samesign ult i32 %50, 8
  br i1 %51, label %40, label %52, !llvm.loop !14

52:                                               ; preds = %40
  %53 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %54 = call i32 @fflush(ptr noundef %53) #4
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
