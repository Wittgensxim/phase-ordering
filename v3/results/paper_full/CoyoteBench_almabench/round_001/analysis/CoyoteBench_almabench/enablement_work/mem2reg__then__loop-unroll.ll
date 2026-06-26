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
  %4 = load double, ptr %0, align 8
  %5 = fadd double %4, f0xC142B42C80000000
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load double, ptr %6, align 8
  %8 = fadd double %5, %7
  %9 = fdiv double %8, 3.652500e+05
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [24 x i8], ptr @a, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %16 = load double, ptr %15, align 8
  %17 = call double @llvm.fmuladd.f64(double %16, double %9, double %14)
  %18 = call double @llvm.fmuladd.f64(double %17, double %9, double %12)
  %19 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %10
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fmuladd.f64(double %24, double %9, double %22)
  %26 = fmul double %25, %9
  %27 = call double @llvm.fmuladd.f64(double %20, double 3.600000e+03, double %26)
  %28 = fmul double %27, f0x3ED455A5B2FF8F9D
  %29 = getelementptr inbounds [24 x i8], ptr @e, i64 %10
  %30 = load double, ptr %29, align 8
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %32 = load double, ptr %31, align 8
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fmuladd.f64(double %34, double %9, double %32)
  %36 = call double @llvm.fmuladd.f64(double %35, double %9, double %30)
  %37 = getelementptr inbounds [24 x i8], ptr @pi, i64 %10
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fmuladd.f64(double %42, double %9, double %40)
  %44 = fmul double %43, %9
  %45 = call double @llvm.fmuladd.f64(double %38, double 3.600000e+03, double %44)
  %46 = fmul double %45, f0x3ED455A5B2FF8F9D
  %47 = call double @anpm(double noundef %46)
  %48 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %10
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %51 = load double, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds [24 x i8], ptr @omega, i64 %10
  %55 = load double, ptr %54, align 8
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %57 = load double, ptr %56, align 8
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 16
  %59 = load double, ptr %58, align 8
  %60 = call double @llvm.fmuladd.f64(double %59, double %9, double %57)
  %61 = fmul double %60, %9
  %62 = call double @llvm.fmuladd.f64(double %55, double 3.600000e+03, double %61)
  %63 = fmul double %62, f0x3ED455A5B2FF8F9D
  %64 = call double @anpm(double noundef %63)
  %65 = fmul double %9, f0x3FD702A41F2E9970
  br label %66

66:                                               ; preds = %3
  br label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %69 = load double, ptr %68, align 8
  %70 = fmul double %69, %65
  %71 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %72 = load double, ptr %71, align 8
  %73 = fmul double %72, %65
  %74 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %75 = load double, ptr %74, align 8
  %76 = call double @cos(double noundef %70) #4
  %77 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %78 = load double, ptr %77, align 8
  %79 = call double @sin(double noundef %70) #4
  %80 = fmul double %78, %79
  %81 = call double @llvm.fmuladd.f64(double %75, double %76, double %80)
  %82 = call double @llvm.fmuladd.f64(double %81, double f0x3E7AD7F29ABCAF48, double %18)
  %83 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %84 = load double, ptr %83, align 8
  %85 = call double @cos(double noundef %73) #4
  %86 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %87 = load double, ptr %86, align 8
  %88 = call double @sin(double noundef %73) #4
  %89 = fmul double %87, %88
  %90 = call double @llvm.fmuladd.f64(double %84, double %85, double %89)
  %91 = call double @llvm.fmuladd.f64(double %90, double f0x3E7AD7F29ABCAF48, double %28)
  br label %92

92:                                               ; preds = %67
  %93 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %94 = getelementptr inbounds nuw [8 x i8], ptr %93, i64 1
  %95 = load double, ptr %94, align 8
  %96 = fmul double %95, %65
  %97 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %98 = getelementptr inbounds nuw [8 x i8], ptr %97, i64 1
  %99 = load double, ptr %98, align 8
  %100 = fmul double %99, %65
  %101 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %102 = getelementptr inbounds nuw [8 x i8], ptr %101, i64 1
  %103 = load double, ptr %102, align 8
  %104 = call double @cos(double noundef %96) #4
  %105 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %106 = getelementptr inbounds nuw [8 x i8], ptr %105, i64 1
  %107 = load double, ptr %106, align 8
  %108 = call double @sin(double noundef %96) #4
  %109 = fmul double %107, %108
  %110 = call double @llvm.fmuladd.f64(double %103, double %104, double %109)
  %111 = call double @llvm.fmuladd.f64(double %110, double f0x3E7AD7F29ABCAF48, double %82)
  %112 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %113 = getelementptr inbounds nuw [8 x i8], ptr %112, i64 1
  %114 = load double, ptr %113, align 8
  %115 = call double @cos(double noundef %100) #4
  %116 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %117 = getelementptr inbounds nuw [8 x i8], ptr %116, i64 1
  %118 = load double, ptr %117, align 8
  %119 = call double @sin(double noundef %100) #4
  %120 = fmul double %118, %119
  %121 = call double @llvm.fmuladd.f64(double %114, double %115, double %120)
  %122 = call double @llvm.fmuladd.f64(double %121, double f0x3E7AD7F29ABCAF48, double %91)
  br label %123

123:                                              ; preds = %92
  %124 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %125 = getelementptr inbounds nuw [8 x i8], ptr %124, i64 2
  %126 = load double, ptr %125, align 8
  %127 = fmul double %126, %65
  %128 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %129 = getelementptr inbounds nuw [8 x i8], ptr %128, i64 2
  %130 = load double, ptr %129, align 8
  %131 = fmul double %130, %65
  %132 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %133 = getelementptr inbounds nuw [8 x i8], ptr %132, i64 2
  %134 = load double, ptr %133, align 8
  %135 = call double @cos(double noundef %127) #4
  %136 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %137 = getelementptr inbounds nuw [8 x i8], ptr %136, i64 2
  %138 = load double, ptr %137, align 8
  %139 = call double @sin(double noundef %127) #4
  %140 = fmul double %138, %139
  %141 = call double @llvm.fmuladd.f64(double %134, double %135, double %140)
  %142 = call double @llvm.fmuladd.f64(double %141, double f0x3E7AD7F29ABCAF48, double %111)
  %143 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %144 = getelementptr inbounds nuw [8 x i8], ptr %143, i64 2
  %145 = load double, ptr %144, align 8
  %146 = call double @cos(double noundef %131) #4
  %147 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %148 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 2
  %149 = load double, ptr %148, align 8
  %150 = call double @sin(double noundef %131) #4
  %151 = fmul double %149, %150
  %152 = call double @llvm.fmuladd.f64(double %145, double %146, double %151)
  %153 = call double @llvm.fmuladd.f64(double %152, double f0x3E7AD7F29ABCAF48, double %122)
  br label %154

154:                                              ; preds = %123
  %155 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %156 = getelementptr inbounds nuw [8 x i8], ptr %155, i64 3
  %157 = load double, ptr %156, align 8
  %158 = fmul double %157, %65
  %159 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %160 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 3
  %161 = load double, ptr %160, align 8
  %162 = fmul double %161, %65
  %163 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %164 = getelementptr inbounds nuw [8 x i8], ptr %163, i64 3
  %165 = load double, ptr %164, align 8
  %166 = call double @cos(double noundef %158) #4
  %167 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %168 = getelementptr inbounds nuw [8 x i8], ptr %167, i64 3
  %169 = load double, ptr %168, align 8
  %170 = call double @sin(double noundef %158) #4
  %171 = fmul double %169, %170
  %172 = call double @llvm.fmuladd.f64(double %165, double %166, double %171)
  %173 = call double @llvm.fmuladd.f64(double %172, double f0x3E7AD7F29ABCAF48, double %142)
  %174 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %175 = getelementptr inbounds nuw [8 x i8], ptr %174, i64 3
  %176 = load double, ptr %175, align 8
  %177 = call double @cos(double noundef %162) #4
  %178 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %179 = getelementptr inbounds nuw [8 x i8], ptr %178, i64 3
  %180 = load double, ptr %179, align 8
  %181 = call double @sin(double noundef %162) #4
  %182 = fmul double %180, %181
  %183 = call double @llvm.fmuladd.f64(double %176, double %177, double %182)
  %184 = call double @llvm.fmuladd.f64(double %183, double f0x3E7AD7F29ABCAF48, double %153)
  br label %185

185:                                              ; preds = %154
  %186 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %187 = getelementptr inbounds nuw [8 x i8], ptr %186, i64 4
  %188 = load double, ptr %187, align 8
  %189 = fmul double %188, %65
  %190 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %191 = getelementptr inbounds nuw [8 x i8], ptr %190, i64 4
  %192 = load double, ptr %191, align 8
  %193 = fmul double %192, %65
  %194 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %195 = getelementptr inbounds nuw [8 x i8], ptr %194, i64 4
  %196 = load double, ptr %195, align 8
  %197 = call double @cos(double noundef %189) #4
  %198 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %199 = getelementptr inbounds nuw [8 x i8], ptr %198, i64 4
  %200 = load double, ptr %199, align 8
  %201 = call double @sin(double noundef %189) #4
  %202 = fmul double %200, %201
  %203 = call double @llvm.fmuladd.f64(double %196, double %197, double %202)
  %204 = call double @llvm.fmuladd.f64(double %203, double f0x3E7AD7F29ABCAF48, double %173)
  %205 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %206 = getelementptr inbounds nuw [8 x i8], ptr %205, i64 4
  %207 = load double, ptr %206, align 8
  %208 = call double @cos(double noundef %193) #4
  %209 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %210 = getelementptr inbounds nuw [8 x i8], ptr %209, i64 4
  %211 = load double, ptr %210, align 8
  %212 = call double @sin(double noundef %193) #4
  %213 = fmul double %211, %212
  %214 = call double @llvm.fmuladd.f64(double %207, double %208, double %213)
  %215 = call double @llvm.fmuladd.f64(double %214, double f0x3E7AD7F29ABCAF48, double %184)
  br label %216

216:                                              ; preds = %185
  %217 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %218 = getelementptr inbounds nuw [8 x i8], ptr %217, i64 5
  %219 = load double, ptr %218, align 8
  %220 = fmul double %219, %65
  %221 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %222 = getelementptr inbounds nuw [8 x i8], ptr %221, i64 5
  %223 = load double, ptr %222, align 8
  %224 = fmul double %223, %65
  %225 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %226 = getelementptr inbounds nuw [8 x i8], ptr %225, i64 5
  %227 = load double, ptr %226, align 8
  %228 = call double @cos(double noundef %220) #4
  %229 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %230 = getelementptr inbounds nuw [8 x i8], ptr %229, i64 5
  %231 = load double, ptr %230, align 8
  %232 = call double @sin(double noundef %220) #4
  %233 = fmul double %231, %232
  %234 = call double @llvm.fmuladd.f64(double %227, double %228, double %233)
  %235 = call double @llvm.fmuladd.f64(double %234, double f0x3E7AD7F29ABCAF48, double %204)
  %236 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %237 = getelementptr inbounds nuw [8 x i8], ptr %236, i64 5
  %238 = load double, ptr %237, align 8
  %239 = call double @cos(double noundef %224) #4
  %240 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %241 = getelementptr inbounds nuw [8 x i8], ptr %240, i64 5
  %242 = load double, ptr %241, align 8
  %243 = call double @sin(double noundef %224) #4
  %244 = fmul double %242, %243
  %245 = call double @llvm.fmuladd.f64(double %238, double %239, double %244)
  %246 = call double @llvm.fmuladd.f64(double %245, double f0x3E7AD7F29ABCAF48, double %215)
  br label %247

247:                                              ; preds = %216
  %248 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %249 = getelementptr inbounds nuw [8 x i8], ptr %248, i64 6
  %250 = load double, ptr %249, align 8
  %251 = fmul double %250, %65
  %252 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %253 = getelementptr inbounds nuw [8 x i8], ptr %252, i64 6
  %254 = load double, ptr %253, align 8
  %255 = fmul double %254, %65
  %256 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %257 = getelementptr inbounds nuw [8 x i8], ptr %256, i64 6
  %258 = load double, ptr %257, align 8
  %259 = call double @cos(double noundef %251) #4
  %260 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %261 = getelementptr inbounds nuw [8 x i8], ptr %260, i64 6
  %262 = load double, ptr %261, align 8
  %263 = call double @sin(double noundef %251) #4
  %264 = fmul double %262, %263
  %265 = call double @llvm.fmuladd.f64(double %258, double %259, double %264)
  %266 = call double @llvm.fmuladd.f64(double %265, double f0x3E7AD7F29ABCAF48, double %235)
  %267 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %268 = getelementptr inbounds nuw [8 x i8], ptr %267, i64 6
  %269 = load double, ptr %268, align 8
  %270 = call double @cos(double noundef %255) #4
  %271 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %272 = getelementptr inbounds nuw [8 x i8], ptr %271, i64 6
  %273 = load double, ptr %272, align 8
  %274 = call double @sin(double noundef %255) #4
  %275 = fmul double %273, %274
  %276 = call double @llvm.fmuladd.f64(double %269, double %270, double %275)
  %277 = call double @llvm.fmuladd.f64(double %276, double f0x3E7AD7F29ABCAF48, double %246)
  br label %278

278:                                              ; preds = %247
  %279 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %280 = getelementptr inbounds nuw [8 x i8], ptr %279, i64 7
  %281 = load double, ptr %280, align 8
  %282 = fmul double %281, %65
  %283 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %284 = getelementptr inbounds nuw [8 x i8], ptr %283, i64 7
  %285 = load double, ptr %284, align 8
  %286 = fmul double %285, %65
  %287 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %288 = getelementptr inbounds nuw [8 x i8], ptr %287, i64 7
  %289 = load double, ptr %288, align 8
  %290 = call double @cos(double noundef %282) #4
  %291 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %292 = getelementptr inbounds nuw [8 x i8], ptr %291, i64 7
  %293 = load double, ptr %292, align 8
  %294 = call double @sin(double noundef %282) #4
  %295 = fmul double %293, %294
  %296 = call double @llvm.fmuladd.f64(double %289, double %290, double %295)
  %297 = call double @llvm.fmuladd.f64(double %296, double f0x3E7AD7F29ABCAF48, double %266)
  %298 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %299 = getelementptr inbounds nuw [8 x i8], ptr %298, i64 7
  %300 = load double, ptr %299, align 8
  %301 = call double @cos(double noundef %286) #4
  %302 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %303 = getelementptr inbounds nuw [8 x i8], ptr %302, i64 7
  %304 = load double, ptr %303, align 8
  %305 = call double @sin(double noundef %286) #4
  %306 = fmul double %304, %305
  %307 = call double @llvm.fmuladd.f64(double %300, double %301, double %306)
  %308 = call double @llvm.fmuladd.f64(double %307, double f0x3E7AD7F29ABCAF48, double %277)
  br i1 false, label %309, label %322

309:                                              ; preds = %278
  %310 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %311 = getelementptr inbounds nuw [8 x i8], ptr %310, i64 8
  %312 = load double, ptr %311, align 8
  %313 = fmul double %312, %65
  %314 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %315 = getelementptr inbounds nuw [8 x i8], ptr %314, i64 8
  %316 = load double, ptr %315, align 8
  %317 = fmul double %316, %65
  %318 = call double @cos(double noundef %313) #4
  %319 = call double @sin(double noundef %313) #4
  %320 = call double @cos(double noundef %317) #4
  %321 = call double @sin(double noundef %317) #4
  unreachable

322:                                              ; preds = %278
  %.lcssa4 = phi double [ %308, %278 ]
  %.lcssa3 = phi double [ %297, %278 ]
  %323 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 64
  %325 = load double, ptr %324, align 8
  %326 = fmul double %325, %65
  %327 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 64
  %329 = load double, ptr %328, align 8
  %330 = call double @cos(double noundef %326) #4
  %331 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 64
  %333 = load double, ptr %332, align 8
  %334 = call double @sin(double noundef %326) #4
  br label %335

335:                                              ; preds = %322
  br label %336

336:                                              ; preds = %335
  %337 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %338 = getelementptr inbounds nuw [8 x i8], ptr %337, i64 8
  %339 = load double, ptr %338, align 8
  %340 = fmul double %339, %65
  %341 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %342 = getelementptr inbounds nuw [8 x i8], ptr %341, i64 8
  %343 = load double, ptr %342, align 8
  %344 = call double @cos(double noundef %340) #4
  %345 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %346 = getelementptr inbounds nuw [8 x i8], ptr %345, i64 8
  %347 = load double, ptr %346, align 8
  %348 = call double @sin(double noundef %340) #4
  %349 = fmul double %347, %348
  %350 = call double @llvm.fmuladd.f64(double %343, double %344, double %349)
  %351 = fmul double %9, %350
  %352 = call double @llvm.fmuladd.f64(double %351, double f0x3E7AD7F29ABCAF48, double %.lcssa4)
  br label %353

353:                                              ; preds = %336
  %354 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %355 = getelementptr inbounds nuw [8 x i8], ptr %354, i64 9
  %356 = load double, ptr %355, align 8
  %357 = fmul double %356, %65
  %358 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %359 = getelementptr inbounds nuw [8 x i8], ptr %358, i64 9
  %360 = load double, ptr %359, align 8
  %361 = call double @cos(double noundef %357) #4
  %362 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %363 = getelementptr inbounds nuw [8 x i8], ptr %362, i64 9
  %364 = load double, ptr %363, align 8
  %365 = call double @sin(double noundef %357) #4
  %366 = fmul double %364, %365
  %367 = call double @llvm.fmuladd.f64(double %360, double %361, double %366)
  %368 = fmul double %9, %367
  %369 = call double @llvm.fmuladd.f64(double %368, double f0x3E7AD7F29ABCAF48, double %352)
  br i1 false, label %370, label %377

370:                                              ; preds = %353
  %371 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %372 = getelementptr inbounds nuw [8 x i8], ptr %371, i64 10
  %373 = load double, ptr %372, align 8
  %374 = fmul double %373, %65
  %375 = call double @cos(double noundef %374) #4
  %376 = call double @sin(double noundef %374) #4
  unreachable

377:                                              ; preds = %353
  %.lcssa2 = phi double [ %369, %353 ]
  %378 = call double @fmod(double noundef %.lcssa2, double noundef f0x401921FB54442D18) #4
  %379 = fsub double %378, %47
  %380 = call double @sin(double noundef %379) #4
  %381 = call double @llvm.fmuladd.f64(double %36, double %380, double %379)
  br label %382

382:                                              ; preds = %377
  %383 = fsub double %379, %381
  %384 = call double @sin(double noundef %381) #4
  %385 = call double @llvm.fmuladd.f64(double %36, double %384, double %383)
  %386 = call double @cos(double noundef %381) #4
  %387 = fneg double %36
  %388 = call double @llvm.fmuladd.f64(double %387, double %386, double 1.000000e+00)
  %389 = fdiv double %385, %388
  %390 = fadd double %381, %389
  br label %391

391:                                              ; preds = %382
  %392 = call double @llvm.fabs.f64(double %389)
  %393 = fcmp olt double %392, f0x3D719799812DEA11
  br i1 %393, label %394, label %485

394:                                              ; preds = %590, %581, %578, %566, %554, %542, %530, %518, %506, %494, %391
  %.lcssa1 = phi double [ %387, %391 ], [ %586, %590 ], [ %586, %581 ], [ %490, %494 ], [ %574, %578 ], [ %502, %506 ], [ %538, %542 ], [ %514, %518 ], [ %562, %566 ], [ %526, %530 ], [ %550, %554 ]
  %.lcssa = phi double [ %390, %391 ], [ %589, %590 ], [ %589, %581 ], [ %493, %494 ], [ %577, %578 ], [ %505, %506 ], [ %541, %542 ], [ %517, %518 ], [ %565, %566 ], [ %529, %530 ], [ %553, %554 ]
  %395 = fmul double %333, %334
  %396 = call double @llvm.fmuladd.f64(double %329, double %330, double %395)
  %397 = fmul double %9, %396
  %398 = call double @llvm.fmuladd.f64(double %397, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  %399 = call double @llvm.fmuladd.f64(double %53, double %9, double %51)
  %400 = fmul double %399, %9
  %401 = call double @llvm.fmuladd.f64(double %49, double 3.600000e+03, double %400)
  %402 = fmul double %401, f0x3ED455A5B2FF8F9D
  %403 = fmul double %.lcssa, 5.000000e-01
  %404 = fadd double %36, 1.000000e+00
  %405 = fsub double 1.000000e+00, %36
  %406 = fdiv double %404, %405
  %407 = call double @sqrt(double noundef %406) #4
  %408 = call double @sin(double noundef %403) #4
  %409 = fmul double %407, %408
  %410 = call double @cos(double noundef %403) #4
  %411 = call double @atan2(double noundef %409, double noundef %410) #4
  %412 = fmul double %411, 2.000000e+00
  %413 = call double @cos(double noundef %.lcssa) #4
  %414 = call double @llvm.fmuladd.f64(double %.lcssa1, double %413, double 1.000000e+00)
  %415 = fmul double %398, %414
  %416 = getelementptr inbounds [8 x i8], ptr @amas, i64 %10
  %417 = load double, ptr %416, align 8
  %418 = fdiv double 1.000000e+00, %417
  %419 = fadd double %418, 1.000000e+00
  %420 = fmul double %398, %398
  %421 = fmul double %420, %398
  %422 = fdiv double %419, %421
  %423 = call double @sqrt(double noundef %422) #4
  %424 = fmul double %423, f0x3F919D6D51A6B69A
  %425 = fmul double %402, 5.000000e-01
  %426 = call double @sin(double noundef %425) #4
  %427 = call double @cos(double noundef %64) #4
  %428 = fmul double %426, %427
  %429 = call double @sin(double noundef %64) #4
  %430 = fmul double %426, %429
  %431 = fadd double %412, %47
  %432 = call double @sin(double noundef %431) #4
  %433 = call double @cos(double noundef %431) #4
  %434 = fneg double %432
  %435 = fmul double %428, %434
  %436 = call double @llvm.fmuladd.f64(double %430, double %433, double %435)
  %437 = fmul double %436, 2.000000e+00
  %438 = call double @llvm.fmuladd.f64(double %.lcssa1, double %36, double 1.000000e+00)
  %439 = call double @sqrt(double noundef %438) #4
  %440 = fdiv double %398, %439
  %441 = call double @cos(double noundef %425) #4
  %442 = call double @sin(double noundef %47) #4
  %443 = call double @llvm.fmuladd.f64(double %36, double %442, double %432)
  %444 = fmul double %443, %440
  %445 = call double @cos(double noundef %47) #4
  %446 = call double @llvm.fmuladd.f64(double %36, double %445, double %433)
  %447 = fmul double %446, %440
  %448 = fmul double %430, 2.000000e+00
  %449 = fmul double %448, %428
  %450 = fneg double %437
  %451 = call double @llvm.fmuladd.f64(double %450, double %430, double %433)
  %452 = fmul double %415, %451
  %453 = call double @llvm.fmuladd.f64(double %437, double %428, double %432)
  %454 = fmul double %415, %453
  %455 = fmul double %441, %450
  %456 = fmul double %415, %455
  store double %452, ptr %2, align 8
  %457 = fmul double %456, f0xBFD9752E50F4B399
  %458 = call double @llvm.fmuladd.f64(double %454, double f0x3FED5C0357681EF3, double %457)
  %459 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %458, ptr %459, align 8
  %460 = fmul double %456, f0x3FED5C0357681EF3
  %461 = call double @llvm.fmuladd.f64(double %454, double f0x3FD9752E50F4B399, double %460)
  %462 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %461, ptr %462, align 8
  %463 = call double @llvm.fmuladd.f64(double %448, double %430, double -1.000000e+00)
  %464 = fmul double %449, %447
  %465 = call double @llvm.fmuladd.f64(double %463, double %444, double %464)
  %466 = fmul double %424, %465
  %467 = fmul double %428, -2.000000e+00
  %468 = call double @llvm.fmuladd.f64(double %467, double %428, double 1.000000e+00)
  %469 = fneg double %444
  %470 = fmul double %449, %469
  %471 = call double @llvm.fmuladd.f64(double %468, double %447, double %470)
  %472 = fmul double %424, %471
  %473 = fmul double %441, 2.000000e+00
  %474 = fmul double %428, %447
  %475 = call double @llvm.fmuladd.f64(double %430, double %444, double %474)
  %476 = fmul double %473, %475
  %477 = fmul double %424, %476
  %478 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %466, ptr %478, align 8
  %479 = fmul double %477, f0xBFD9752E50F4B399
  %480 = call double @llvm.fmuladd.f64(double %472, double f0x3FED5C0357681EF3, double %479)
  %481 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %480, ptr %481, align 8
  %482 = fmul double %477, f0x3FED5C0357681EF3
  %483 = call double @llvm.fmuladd.f64(double %472, double f0x3FD9752E50F4B399, double %482)
  %484 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %483, ptr %484, align 8
  ret void

485:                                              ; preds = %391
  %486 = fsub double %379, %390
  %487 = call double @sin(double noundef %390) #4
  %488 = call double @llvm.fmuladd.f64(double %36, double %487, double %486)
  %489 = call double @cos(double noundef %390) #4
  %490 = fneg double %36
  %491 = call double @llvm.fmuladd.f64(double %490, double %489, double 1.000000e+00)
  %492 = fdiv double %488, %491
  %493 = fadd double %390, %492
  br label %494

494:                                              ; preds = %485
  %495 = call double @llvm.fabs.f64(double %492)
  %496 = fcmp olt double %495, f0x3D719799812DEA11
  br i1 %496, label %394, label %497

497:                                              ; preds = %494
  %498 = fsub double %379, %493
  %499 = call double @sin(double noundef %493) #4
  %500 = call double @llvm.fmuladd.f64(double %36, double %499, double %498)
  %501 = call double @cos(double noundef %493) #4
  %502 = fneg double %36
  %503 = call double @llvm.fmuladd.f64(double %502, double %501, double 1.000000e+00)
  %504 = fdiv double %500, %503
  %505 = fadd double %493, %504
  br label %506

506:                                              ; preds = %497
  %507 = call double @llvm.fabs.f64(double %504)
  %508 = fcmp olt double %507, f0x3D719799812DEA11
  br i1 %508, label %394, label %509

509:                                              ; preds = %506
  %510 = fsub double %379, %505
  %511 = call double @sin(double noundef %505) #4
  %512 = call double @llvm.fmuladd.f64(double %36, double %511, double %510)
  %513 = call double @cos(double noundef %505) #4
  %514 = fneg double %36
  %515 = call double @llvm.fmuladd.f64(double %514, double %513, double 1.000000e+00)
  %516 = fdiv double %512, %515
  %517 = fadd double %505, %516
  br label %518

518:                                              ; preds = %509
  %519 = call double @llvm.fabs.f64(double %516)
  %520 = fcmp olt double %519, f0x3D719799812DEA11
  br i1 %520, label %394, label %521

521:                                              ; preds = %518
  %522 = fsub double %379, %517
  %523 = call double @sin(double noundef %517) #4
  %524 = call double @llvm.fmuladd.f64(double %36, double %523, double %522)
  %525 = call double @cos(double noundef %517) #4
  %526 = fneg double %36
  %527 = call double @llvm.fmuladd.f64(double %526, double %525, double 1.000000e+00)
  %528 = fdiv double %524, %527
  %529 = fadd double %517, %528
  br label %530

530:                                              ; preds = %521
  %531 = call double @llvm.fabs.f64(double %528)
  %532 = fcmp olt double %531, f0x3D719799812DEA11
  br i1 %532, label %394, label %533

533:                                              ; preds = %530
  %534 = fsub double %379, %529
  %535 = call double @sin(double noundef %529) #4
  %536 = call double @llvm.fmuladd.f64(double %36, double %535, double %534)
  %537 = call double @cos(double noundef %529) #4
  %538 = fneg double %36
  %539 = call double @llvm.fmuladd.f64(double %538, double %537, double 1.000000e+00)
  %540 = fdiv double %536, %539
  %541 = fadd double %529, %540
  br label %542

542:                                              ; preds = %533
  %543 = call double @llvm.fabs.f64(double %540)
  %544 = fcmp olt double %543, f0x3D719799812DEA11
  br i1 %544, label %394, label %545

545:                                              ; preds = %542
  %546 = fsub double %379, %541
  %547 = call double @sin(double noundef %541) #4
  %548 = call double @llvm.fmuladd.f64(double %36, double %547, double %546)
  %549 = call double @cos(double noundef %541) #4
  %550 = fneg double %36
  %551 = call double @llvm.fmuladd.f64(double %550, double %549, double 1.000000e+00)
  %552 = fdiv double %548, %551
  %553 = fadd double %541, %552
  br label %554

554:                                              ; preds = %545
  %555 = call double @llvm.fabs.f64(double %552)
  %556 = fcmp olt double %555, f0x3D719799812DEA11
  br i1 %556, label %394, label %557

557:                                              ; preds = %554
  %558 = fsub double %379, %553
  %559 = call double @sin(double noundef %553) #4
  %560 = call double @llvm.fmuladd.f64(double %36, double %559, double %558)
  %561 = call double @cos(double noundef %553) #4
  %562 = fneg double %36
  %563 = call double @llvm.fmuladd.f64(double %562, double %561, double 1.000000e+00)
  %564 = fdiv double %560, %563
  %565 = fadd double %553, %564
  br label %566

566:                                              ; preds = %557
  %567 = call double @llvm.fabs.f64(double %564)
  %568 = fcmp olt double %567, f0x3D719799812DEA11
  br i1 %568, label %394, label %569

569:                                              ; preds = %566
  %570 = fsub double %379, %565
  %571 = call double @sin(double noundef %565) #4
  %572 = call double @llvm.fmuladd.f64(double %36, double %571, double %570)
  %573 = call double @cos(double noundef %565) #4
  %574 = fneg double %36
  %575 = call double @llvm.fmuladd.f64(double %574, double %573, double 1.000000e+00)
  %576 = fdiv double %572, %575
  %577 = fadd double %565, %576
  br label %578

578:                                              ; preds = %569
  %579 = call double @llvm.fabs.f64(double %576)
  %580 = fcmp olt double %579, f0x3D719799812DEA11
  br i1 %580, label %394, label %581

581:                                              ; preds = %578
  %582 = fsub double %379, %577
  %583 = call double @sin(double noundef %577) #4
  %584 = call double @llvm.fmuladd.f64(double %36, double %583, double %582)
  %585 = call double @cos(double noundef %577) #4
  %586 = fneg double %36
  %587 = call double @llvm.fmuladd.f64(double %586, double %585, double 1.000000e+00)
  %588 = fdiv double %584, %587
  %589 = fadd double %577, %588
  br i1 true, label %394, label %590

590:                                              ; preds = %581
  %591 = call double @llvm.fabs.f64(double %588)
  %592 = fcmp olt double %591, f0x3D719799812DEA11
  br i1 %592, label %394, label %593

593:                                              ; preds = %590
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
