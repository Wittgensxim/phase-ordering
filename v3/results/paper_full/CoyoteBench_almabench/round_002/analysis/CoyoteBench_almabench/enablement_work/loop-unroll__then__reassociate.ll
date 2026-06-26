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

73:                                               ; preds = %78, %3
  %74 = phi double [ %103, %78 ], [ %29, %3 ]
  %75 = phi double [ %94, %78 ], [ %19, %3 ]
  %76 = phi i32 [ %104, %78 ], [ 0, %3 ]
  %77 = icmp samesign ult i32 %76, 8
  br i1 %77, label %78, label %105

78:                                               ; preds = %73
  %79 = zext nneg i32 %76 to i64
  %80 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 %79
  %81 = load double, ptr %80, align 8
  %82 = fmul double %66, %81
  %83 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %79
  %84 = load double, ptr %83, align 8
  %85 = fmul double %66, %84
  %86 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %79
  %87 = load double, ptr %86, align 8
  %88 = call double @cos(double noundef %82) #4
  %89 = getelementptr inbounds nuw [8 x i8], ptr %70, i64 %79
  %90 = load double, ptr %89, align 8
  %91 = call double @sin(double noundef %82) #4
  %92 = fmul double %90, %91
  %93 = call double @llvm.fmuladd.f64(double %87, double %88, double %92)
  %94 = call double @llvm.fmuladd.f64(double %93, double f0x3E7AD7F29ABCAF48, double %75)
  %95 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 %79
  %96 = load double, ptr %95, align 8
  %97 = call double @cos(double noundef %85) #4
  %98 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 %79
  %99 = load double, ptr %98, align 8
  %100 = call double @sin(double noundef %85) #4
  %101 = fmul double %99, %100
  %102 = call double @llvm.fmuladd.f64(double %96, double %97, double %101)
  %103 = call double @llvm.fmuladd.f64(double %102, double f0x3E7AD7F29ABCAF48, double %74)
  %104 = add nuw nsw i32 %76, 1
  br label %73, !llvm.loop !7

105:                                              ; preds = %73
  %.lcssa3 = phi double [ %74, %73 ]
  %.lcssa2 = phi double [ %75, %73 ]
  %106 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %107 = load double, ptr %106, align 8
  %108 = fmul double %66, %107
  %109 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %110 = load double, ptr %109, align 8
  %111 = call double @cos(double noundef %108) #4
  %112 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %113 = load double, ptr %112, align 8
  %114 = call double @sin(double noundef %108) #4
  br label %115

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 8
  %118 = load double, ptr %117, align 8
  %119 = fmul double %66, %118
  %120 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 8
  %121 = load double, ptr %120, align 8
  %122 = call double @cos(double noundef %119) #4
  %123 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 8
  %124 = load double, ptr %123, align 8
  %125 = call double @sin(double noundef %119) #4
  %126 = fmul double %124, %125
  %127 = call double @llvm.fmuladd.f64(double %121, double %122, double %126)
  %128 = fmul double %10, %127
  %129 = call double @llvm.fmuladd.f64(double %128, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  br label %130

130:                                              ; preds = %116
  %131 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 9
  %132 = load double, ptr %131, align 8
  %133 = fmul double %66, %132
  %134 = getelementptr inbounds nuw [8 x i8], ptr %71, i64 9
  %135 = load double, ptr %134, align 8
  %136 = call double @cos(double noundef %133) #4
  %137 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 9
  %138 = load double, ptr %137, align 8
  %139 = call double @sin(double noundef %133) #4
  %140 = fmul double %138, %139
  %141 = call double @llvm.fmuladd.f64(double %135, double %136, double %140)
  %142 = fmul double %10, %141
  %143 = call double @llvm.fmuladd.f64(double %142, double f0x3E7AD7F29ABCAF48, double %129)
  br i1 false, label %144, label %150

144:                                              ; preds = %130
  %145 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 10
  %146 = load double, ptr %145, align 8
  %147 = fmul double %66, %146
  %148 = call double @cos(double noundef %147) #4
  %149 = call double @sin(double noundef %147) #4
  unreachable

150:                                              ; preds = %130
  %.lcssa1 = phi double [ %143, %130 ]
  %151 = call double @fmod(double noundef %.lcssa1, double noundef f0x401921FB54442D18) #4
  %152 = fsub double %151, %48
  %153 = call double @sin(double noundef %152) #4
  %154 = call double @llvm.fmuladd.f64(double %37, double %153, double %152)
  %155 = fneg double %37
  br label %156

156:                                              ; preds = %150
  %157 = fsub double %152, %154
  %158 = call double @sin(double noundef %154) #4
  %159 = call double @llvm.fmuladd.f64(double %37, double %158, double %157)
  %160 = call double @cos(double noundef %154) #4
  %161 = call double @llvm.fmuladd.f64(double %155, double %160, double 1.000000e+00)
  %162 = fdiv double %159, %161
  %163 = fadd double %154, %162
  br label %164

164:                                              ; preds = %156
  %165 = call double @llvm.fabs.f64(double %162)
  %166 = fcmp olt double %165, f0x3D719799812DEA11
  br i1 %166, label %167, label %258

167:                                              ; preds = %354, %346, %343, %332, %321, %310, %299, %288, %277, %266, %164
  %.lcssa = phi double [ %163, %164 ], [ %353, %354 ], [ %353, %346 ], [ %265, %266 ], [ %342, %343 ], [ %276, %277 ], [ %309, %310 ], [ %287, %288 ], [ %331, %332 ], [ %298, %299 ], [ %320, %321 ]
  %168 = fmul double %113, %114
  %169 = call double @llvm.fmuladd.f64(double %110, double %111, double %168)
  %170 = fmul double %10, %169
  %171 = call double @llvm.fmuladd.f64(double %170, double f0x3E7AD7F29ABCAF48, double %.lcssa2)
  %172 = call double @llvm.fmuladd.f64(double %54, double %10, double %52)
  %173 = fmul double %10, %172
  %174 = call double @llvm.fmuladd.f64(double %50, double 3.600000e+03, double %173)
  %175 = fmul double %174, f0x3ED455A5B2FF8F9D
  %176 = fmul double %.lcssa, 5.000000e-01
  %177 = fadd double %37, 1.000000e+00
  %178 = fsub double 1.000000e+00, %37
  %179 = fdiv double %177, %178
  %180 = call double @sqrt(double noundef %179) #4
  %181 = call double @sin(double noundef %176) #4
  %182 = fmul double %180, %181
  %183 = call double @cos(double noundef %176) #4
  %184 = call double @atan2(double noundef %182, double noundef %183) #4
  %185 = fmul double %184, 2.000000e+00
  %186 = call double @cos(double noundef %.lcssa) #4
  %187 = call double @llvm.fmuladd.f64(double %155, double %186, double 1.000000e+00)
  %188 = fmul double %171, %187
  %189 = getelementptr inbounds [8 x i8], ptr @amas, i64 %11
  %190 = load double, ptr %189, align 8
  %191 = fdiv double 1.000000e+00, %190
  %192 = fadd double %191, 1.000000e+00
  %193 = fmul double %171, %171
  %194 = fmul double %171, %193
  %195 = fdiv double %192, %194
  %196 = call double @sqrt(double noundef %195) #4
  %197 = fmul double %196, f0x3F919D6D51A6B69A
  %198 = fmul double %175, 5.000000e-01
  %199 = call double @sin(double noundef %198) #4
  %200 = call double @cos(double noundef %65) #4
  %201 = fmul double %199, %200
  %202 = call double @sin(double noundef %65) #4
  %203 = fmul double %199, %202
  %204 = fadd double %48, %185
  %205 = call double @sin(double noundef %204) #4
  %206 = call double @cos(double noundef %204) #4
  %207 = fneg double %205
  %208 = fmul double %201, %207
  %209 = call double @llvm.fmuladd.f64(double %203, double %206, double %208)
  %210 = fmul double %209, 2.000000e+00
  %211 = call double @llvm.fmuladd.f64(double %155, double %37, double 1.000000e+00)
  %212 = call double @sqrt(double noundef %211) #4
  %213 = fdiv double %171, %212
  %214 = call double @cos(double noundef %198) #4
  %215 = call double @sin(double noundef %48) #4
  %216 = call double @llvm.fmuladd.f64(double %37, double %215, double %205)
  %217 = fmul double %213, %216
  %218 = call double @cos(double noundef %48) #4
  %219 = call double @llvm.fmuladd.f64(double %37, double %218, double %206)
  %220 = fmul double %213, %219
  %221 = fmul double %203, 2.000000e+00
  %222 = fmul double %201, %221
  %223 = fneg double %210
  %224 = call double @llvm.fmuladd.f64(double %223, double %203, double %206)
  %225 = fmul double %188, %224
  %226 = call double @llvm.fmuladd.f64(double %210, double %201, double %205)
  %227 = fmul double %188, %226
  %228 = fmul double %214, %223
  %229 = fmul double %188, %228
  store double %225, ptr %2, align 8
  %230 = fmul double %229, f0xBFD9752E50F4B399
  %231 = call double @llvm.fmuladd.f64(double %227, double f0x3FED5C0357681EF3, double %230)
  %232 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %231, ptr %232, align 8
  %233 = fmul double %229, f0x3FED5C0357681EF3
  %234 = call double @llvm.fmuladd.f64(double %227, double f0x3FD9752E50F4B399, double %233)
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %234, ptr %235, align 8
  %236 = call double @llvm.fmuladd.f64(double %221, double %203, double -1.000000e+00)
  %237 = fmul double %222, %220
  %238 = call double @llvm.fmuladd.f64(double %236, double %217, double %237)
  %239 = fmul double %197, %238
  %240 = fmul double %201, -2.000000e+00
  %241 = call double @llvm.fmuladd.f64(double %240, double %201, double 1.000000e+00)
  %242 = fneg double %217
  %243 = fmul double %222, %242
  %244 = call double @llvm.fmuladd.f64(double %241, double %220, double %243)
  %245 = fmul double %197, %244
  %246 = fmul double %214, 2.000000e+00
  %247 = fmul double %201, %220
  %248 = call double @llvm.fmuladd.f64(double %203, double %217, double %247)
  %249 = fmul double %246, %248
  %250 = fmul double %197, %249
  %251 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %239, ptr %251, align 8
  %252 = fmul double %250, f0xBFD9752E50F4B399
  %253 = call double @llvm.fmuladd.f64(double %245, double f0x3FED5C0357681EF3, double %252)
  %254 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %253, ptr %254, align 8
  %255 = fmul double %250, f0x3FED5C0357681EF3
  %256 = call double @llvm.fmuladd.f64(double %245, double f0x3FD9752E50F4B399, double %255)
  %257 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %256, ptr %257, align 8
  ret void

258:                                              ; preds = %164
  %259 = fsub double %152, %163
  %260 = call double @sin(double noundef %163) #4
  %261 = call double @llvm.fmuladd.f64(double %37, double %260, double %259)
  %262 = call double @cos(double noundef %163) #4
  %263 = call double @llvm.fmuladd.f64(double %155, double %262, double 1.000000e+00)
  %264 = fdiv double %261, %263
  %265 = fadd double %163, %264
  br label %266

266:                                              ; preds = %258
  %267 = call double @llvm.fabs.f64(double %264)
  %268 = fcmp olt double %267, f0x3D719799812DEA11
  br i1 %268, label %167, label %269

269:                                              ; preds = %266
  %270 = fsub double %152, %265
  %271 = call double @sin(double noundef %265) #4
  %272 = call double @llvm.fmuladd.f64(double %37, double %271, double %270)
  %273 = call double @cos(double noundef %265) #4
  %274 = call double @llvm.fmuladd.f64(double %155, double %273, double 1.000000e+00)
  %275 = fdiv double %272, %274
  %276 = fadd double %265, %275
  br label %277

277:                                              ; preds = %269
  %278 = call double @llvm.fabs.f64(double %275)
  %279 = fcmp olt double %278, f0x3D719799812DEA11
  br i1 %279, label %167, label %280

280:                                              ; preds = %277
  %281 = fsub double %152, %276
  %282 = call double @sin(double noundef %276) #4
  %283 = call double @llvm.fmuladd.f64(double %37, double %282, double %281)
  %284 = call double @cos(double noundef %276) #4
  %285 = call double @llvm.fmuladd.f64(double %155, double %284, double 1.000000e+00)
  %286 = fdiv double %283, %285
  %287 = fadd double %276, %286
  br label %288

288:                                              ; preds = %280
  %289 = call double @llvm.fabs.f64(double %286)
  %290 = fcmp olt double %289, f0x3D719799812DEA11
  br i1 %290, label %167, label %291

291:                                              ; preds = %288
  %292 = fsub double %152, %287
  %293 = call double @sin(double noundef %287) #4
  %294 = call double @llvm.fmuladd.f64(double %37, double %293, double %292)
  %295 = call double @cos(double noundef %287) #4
  %296 = call double @llvm.fmuladd.f64(double %155, double %295, double 1.000000e+00)
  %297 = fdiv double %294, %296
  %298 = fadd double %287, %297
  br label %299

299:                                              ; preds = %291
  %300 = call double @llvm.fabs.f64(double %297)
  %301 = fcmp olt double %300, f0x3D719799812DEA11
  br i1 %301, label %167, label %302

302:                                              ; preds = %299
  %303 = fsub double %152, %298
  %304 = call double @sin(double noundef %298) #4
  %305 = call double @llvm.fmuladd.f64(double %37, double %304, double %303)
  %306 = call double @cos(double noundef %298) #4
  %307 = call double @llvm.fmuladd.f64(double %155, double %306, double 1.000000e+00)
  %308 = fdiv double %305, %307
  %309 = fadd double %298, %308
  br label %310

310:                                              ; preds = %302
  %311 = call double @llvm.fabs.f64(double %308)
  %312 = fcmp olt double %311, f0x3D719799812DEA11
  br i1 %312, label %167, label %313

313:                                              ; preds = %310
  %314 = fsub double %152, %309
  %315 = call double @sin(double noundef %309) #4
  %316 = call double @llvm.fmuladd.f64(double %37, double %315, double %314)
  %317 = call double @cos(double noundef %309) #4
  %318 = call double @llvm.fmuladd.f64(double %155, double %317, double 1.000000e+00)
  %319 = fdiv double %316, %318
  %320 = fadd double %309, %319
  br label %321

321:                                              ; preds = %313
  %322 = call double @llvm.fabs.f64(double %319)
  %323 = fcmp olt double %322, f0x3D719799812DEA11
  br i1 %323, label %167, label %324

324:                                              ; preds = %321
  %325 = fsub double %152, %320
  %326 = call double @sin(double noundef %320) #4
  %327 = call double @llvm.fmuladd.f64(double %37, double %326, double %325)
  %328 = call double @cos(double noundef %320) #4
  %329 = call double @llvm.fmuladd.f64(double %155, double %328, double 1.000000e+00)
  %330 = fdiv double %327, %329
  %331 = fadd double %320, %330
  br label %332

332:                                              ; preds = %324
  %333 = call double @llvm.fabs.f64(double %330)
  %334 = fcmp olt double %333, f0x3D719799812DEA11
  br i1 %334, label %167, label %335

335:                                              ; preds = %332
  %336 = fsub double %152, %331
  %337 = call double @sin(double noundef %331) #4
  %338 = call double @llvm.fmuladd.f64(double %37, double %337, double %336)
  %339 = call double @cos(double noundef %331) #4
  %340 = call double @llvm.fmuladd.f64(double %155, double %339, double 1.000000e+00)
  %341 = fdiv double %338, %340
  %342 = fadd double %331, %341
  br label %343

343:                                              ; preds = %335
  %344 = call double @llvm.fabs.f64(double %341)
  %345 = fcmp olt double %344, f0x3D719799812DEA11
  br i1 %345, label %167, label %346

346:                                              ; preds = %343
  %347 = fsub double %152, %342
  %348 = call double @sin(double noundef %342) #4
  %349 = call double @llvm.fmuladd.f64(double %37, double %348, double %347)
  %350 = call double @cos(double noundef %342) #4
  %351 = call double @llvm.fmuladd.f64(double %155, double %350, double 1.000000e+00)
  %352 = fdiv double %349, %351
  %353 = fadd double %342, %352
  br i1 true, label %167, label %354

354:                                              ; preds = %346
  %355 = call double @llvm.fabs.f64(double %352)
  %356 = fcmp olt double %355, f0x3D719799812DEA11
  br i1 %356, label %167, label %357

357:                                              ; preds = %354
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
  br label %9

9:                                                ; preds = %16, %7
  %10 = phi i32 [ %17, %16 ], [ 1, %7 ]
  %11 = icmp slt i32 %10, %0
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %15, label %16

15:                                               ; preds = %12
  br label %18

16:                                               ; preds = %12
  %17 = add nuw nsw i32 %10, 1
  br label %9, !llvm.loop !9

.loopexit:                                        ; preds = %9
  br label %18

18:                                               ; preds = %.loopexit, %15
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %21

21:                                               ; preds = %51, %19
  %22 = phi i32 [ %52, %51 ], [ 0, %19 ]
  %23 = icmp samesign ult i32 %22, 20
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  store double f0x4142B42C80000000, ptr %3, align 16
  store double 0.000000e+00, ptr %20, align 8
  br label %25

25:                                               ; preds = %49, %24
  %26 = phi i32 [ %50, %49 ], [ 0, %24 ]
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
  br label %25, !llvm.loop !10

51:                                               ; preds = %25
  %52 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !11

53:                                               ; preds = %21
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
!11 = distinct !{!11, !8}
