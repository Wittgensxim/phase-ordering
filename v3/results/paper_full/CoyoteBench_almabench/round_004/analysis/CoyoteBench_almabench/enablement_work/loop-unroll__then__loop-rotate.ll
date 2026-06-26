; ModuleID = 'results\paper_full\CoyoteBench_almabench\round_003\output.ll'
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
  %35 = getelementptr inbounds [24 x i8], ptr @pi, i64 %10
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %40, double %9, double %38)
  %42 = fmul double %41, %9
  %43 = call double @llvm.fmuladd.f64(double %36, double 3.600000e+03, double %42)
  %44 = fmul double %43, f0x3ED455A5B2FF8F9D
  %45 = call double @anpm(double noundef %44)
  %46 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %10
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %51 = load double, ptr %50, align 8
  %52 = getelementptr inbounds [24 x i8], ptr @omega, i64 %10
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %55 = load double, ptr %54, align 8
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %57 = load double, ptr %56, align 8
  %58 = call double @llvm.fmuladd.f64(double %57, double %9, double %55)
  %59 = fmul double %58, %9
  %60 = call double @llvm.fmuladd.f64(double %53, double 3.600000e+03, double %59)
  %61 = fmul double %60, f0x3ED455A5B2FF8F9D
  %62 = call double @anpm(double noundef %61)
  %63 = fmul double %9, f0x3FD702A41F2E9970
  %64 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %65 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %66 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %67 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %68 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %69 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  br label %70

70:                                               ; preds = %3, %70
  %71 = phi double [ %18, %3 ], [ %87, %70 ]
  %72 = phi double [ %28, %3 ], [ %96, %70 ]
  %indvars.iv4 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %70 ]
  %73 = getelementptr inbounds nuw [8 x i8], ptr %64, i64 %indvars.iv4
  %74 = load double, ptr %73, align 8
  %75 = fmul double %74, %63
  %76 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %indvars.iv4
  %77 = load double, ptr %76, align 8
  %78 = fmul double %77, %63
  %79 = getelementptr inbounds nuw [8 x i8], ptr %66, i64 %indvars.iv4
  %80 = load double, ptr %79, align 8
  %81 = call double @cos(double noundef %75) #4
  %82 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 %indvars.iv4
  %83 = load double, ptr %82, align 8
  %84 = call double @sin(double noundef %75) #4
  %85 = fmul double %83, %84
  %86 = call double @llvm.fmuladd.f64(double %80, double %81, double %85)
  %87 = call double @llvm.fmuladd.f64(double %86, double f0x3E7AD7F29ABCAF48, double %71)
  %88 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %indvars.iv4
  %89 = load double, ptr %88, align 8
  %90 = call double @cos(double noundef %78) #4
  %91 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %indvars.iv4
  %92 = load double, ptr %91, align 8
  %93 = call double @sin(double noundef %78) #4
  %94 = fmul double %92, %93
  %95 = call double @llvm.fmuladd.f64(double %89, double %90, double %94)
  %96 = call double @llvm.fmuladd.f64(double %95, double f0x3E7AD7F29ABCAF48, double %72)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %97, label %70, !llvm.loop !7

97:                                               ; preds = %70
  %.lcssa3 = phi double [ %96, %70 ]
  %.lcssa2 = phi double [ %87, %70 ]
  %98 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %99 = load double, ptr %98, align 8
  %100 = fmul double %99, %63
  %101 = getelementptr inbounds nuw i8, ptr %66, i64 64
  %102 = load double, ptr %101, align 8
  %103 = call double @cos(double noundef %100) #4
  %104 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %105 = load double, ptr %104, align 8
  %106 = call double @sin(double noundef %100) #4
  br label %107

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 8
  %110 = load double, ptr %109, align 8
  %111 = fmul double %110, %63
  %112 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 8
  %113 = load double, ptr %112, align 8
  %114 = call double @cos(double noundef %111) #4
  %115 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 8
  %116 = load double, ptr %115, align 8
  %117 = call double @sin(double noundef %111) #4
  %118 = fmul double %116, %117
  %119 = call double @llvm.fmuladd.f64(double %113, double %114, double %118)
  %120 = fmul double %9, %119
  %121 = call double @llvm.fmuladd.f64(double %120, double f0x3E7AD7F29ABCAF48, double %.lcssa3)
  br label %122

122:                                              ; preds = %108
  %123 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 9
  %124 = load double, ptr %123, align 8
  %125 = fmul double %124, %63
  %126 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 9
  %127 = load double, ptr %126, align 8
  %128 = call double @cos(double noundef %125) #4
  %129 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 9
  %130 = load double, ptr %129, align 8
  %131 = call double @sin(double noundef %125) #4
  %132 = fmul double %130, %131
  %133 = call double @llvm.fmuladd.f64(double %127, double %128, double %132)
  %134 = fmul double %9, %133
  %135 = call double @llvm.fmuladd.f64(double %134, double f0x3E7AD7F29ABCAF48, double %121)
  br i1 true, label %142, label %136

136:                                              ; preds = %122
  %137 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 10
  %138 = load double, ptr %137, align 8
  %139 = fmul double %138, %63
  %140 = call double @cos(double noundef %139) #4
  %141 = call double @sin(double noundef %139) #4
  unreachable

142:                                              ; preds = %122
  %.lcssa1 = phi double [ %135, %122 ]
  %143 = call double @llvm.fmuladd.f64(double %34, double %9, double %32)
  %144 = call double @llvm.fmuladd.f64(double %143, double %9, double %30)
  %145 = call double @fmod(double noundef %.lcssa1, double noundef f0x401921FB54442D18) #4
  %146 = fsub double %145, %45
  %147 = call double @sin(double noundef %146) #4
  %148 = call double @llvm.fmuladd.f64(double %144, double %147, double %146)
  %149 = fneg double %144
  br label %150

150:                                              ; preds = %142
  %151 = fsub double %146, %148
  %152 = call double @sin(double noundef %148) #4
  %153 = call double @llvm.fmuladd.f64(double %144, double %152, double %151)
  %154 = call double @cos(double noundef %148) #4
  %155 = call double @llvm.fmuladd.f64(double %149, double %154, double 1.000000e+00)
  %156 = fdiv double %153, %155
  %157 = fadd double %148, %156
  br label %158

158:                                              ; preds = %150
  %159 = call double @llvm.fabs.f64(double %156)
  %160 = fcmp olt double %159, f0x3D719799812DEA11
  br i1 %160, label %161, label %252

161:                                              ; preds = %348, %340, %337, %326, %315, %304, %293, %282, %271, %260, %158
  %.lcssa = phi double [ %157, %158 ], [ %347, %348 ], [ %347, %340 ], [ %259, %260 ], [ %336, %337 ], [ %270, %271 ], [ %303, %304 ], [ %281, %282 ], [ %325, %326 ], [ %292, %293 ], [ %314, %315 ]
  %162 = fmul double %105, %106
  %163 = call double @llvm.fmuladd.f64(double %102, double %103, double %162)
  %164 = fmul double %9, %163
  %165 = call double @llvm.fmuladd.f64(double %164, double f0x3E7AD7F29ABCAF48, double %.lcssa2)
  %166 = call double @llvm.fmuladd.f64(double %51, double %9, double %49)
  %167 = fmul double %166, %9
  %168 = call double @llvm.fmuladd.f64(double %47, double 3.600000e+03, double %167)
  %169 = fmul double %168, f0x3ED455A5B2FF8F9D
  %170 = fmul double %.lcssa, 5.000000e-01
  %171 = fadd double %144, 1.000000e+00
  %172 = fsub double 1.000000e+00, %144
  %173 = fdiv double %171, %172
  %174 = call double @sqrt(double noundef %173) #4
  %175 = call double @sin(double noundef %170) #4
  %176 = fmul double %174, %175
  %177 = call double @cos(double noundef %170) #4
  %178 = call double @atan2(double noundef %176, double noundef %177) #4
  %179 = fmul double %178, 2.000000e+00
  %180 = call double @cos(double noundef %.lcssa) #4
  %181 = call double @llvm.fmuladd.f64(double %149, double %180, double 1.000000e+00)
  %182 = fmul double %165, %181
  %183 = getelementptr inbounds [8 x i8], ptr @amas, i64 %10
  %184 = load double, ptr %183, align 8
  %185 = fdiv double 1.000000e+00, %184
  %186 = fadd double %185, 1.000000e+00
  %187 = fmul double %165, %165
  %188 = fmul double %187, %165
  %189 = fdiv double %186, %188
  %190 = call double @sqrt(double noundef %189) #4
  %191 = fmul double %190, f0x3F919D6D51A6B69A
  %192 = fmul double %169, 5.000000e-01
  %193 = call double @sin(double noundef %192) #4
  %194 = call double @cos(double noundef %62) #4
  %195 = fmul double %193, %194
  %196 = call double @sin(double noundef %62) #4
  %197 = fmul double %193, %196
  %198 = fadd double %179, %45
  %199 = call double @sin(double noundef %198) #4
  %200 = call double @cos(double noundef %198) #4
  %201 = fneg double %199
  %202 = fmul double %195, %201
  %203 = call double @llvm.fmuladd.f64(double %197, double %200, double %202)
  %204 = fmul double %203, 2.000000e+00
  %205 = call double @llvm.fmuladd.f64(double %149, double %144, double 1.000000e+00)
  %206 = call double @sqrt(double noundef %205) #4
  %207 = fdiv double %165, %206
  %208 = call double @cos(double noundef %192) #4
  %209 = call double @sin(double noundef %45) #4
  %210 = call double @llvm.fmuladd.f64(double %144, double %209, double %199)
  %211 = fmul double %210, %207
  %212 = call double @cos(double noundef %45) #4
  %213 = call double @llvm.fmuladd.f64(double %144, double %212, double %200)
  %214 = fmul double %213, %207
  %215 = fmul double %197, 2.000000e+00
  %216 = fmul double %215, %195
  %217 = fneg double %204
  %218 = call double @llvm.fmuladd.f64(double %217, double %197, double %200)
  %219 = fmul double %182, %218
  %220 = call double @llvm.fmuladd.f64(double %204, double %195, double %199)
  %221 = fmul double %182, %220
  %222 = fmul double %208, %217
  %223 = fmul double %182, %222
  store double %219, ptr %2, align 8
  %224 = fmul double %223, f0xBFD9752E50F4B399
  %225 = call double @llvm.fmuladd.f64(double %221, double f0x3FED5C0357681EF3, double %224)
  %226 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %225, ptr %226, align 8
  %227 = fmul double %223, f0x3FED5C0357681EF3
  %228 = call double @llvm.fmuladd.f64(double %221, double f0x3FD9752E50F4B399, double %227)
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %228, ptr %229, align 8
  %230 = call double @llvm.fmuladd.f64(double %215, double %197, double -1.000000e+00)
  %231 = fmul double %216, %214
  %232 = call double @llvm.fmuladd.f64(double %230, double %211, double %231)
  %233 = fmul double %191, %232
  %234 = fmul double %195, -2.000000e+00
  %235 = call double @llvm.fmuladd.f64(double %234, double %195, double 1.000000e+00)
  %236 = fneg double %211
  %237 = fmul double %216, %236
  %238 = call double @llvm.fmuladd.f64(double %235, double %214, double %237)
  %239 = fmul double %191, %238
  %240 = fmul double %208, 2.000000e+00
  %241 = fmul double %195, %214
  %242 = call double @llvm.fmuladd.f64(double %197, double %211, double %241)
  %243 = fmul double %240, %242
  %244 = fmul double %191, %243
  %245 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %233, ptr %245, align 8
  %246 = fmul double %244, f0xBFD9752E50F4B399
  %247 = call double @llvm.fmuladd.f64(double %239, double f0x3FED5C0357681EF3, double %246)
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %247, ptr %248, align 8
  %249 = fmul double %244, f0x3FED5C0357681EF3
  %250 = call double @llvm.fmuladd.f64(double %239, double f0x3FD9752E50F4B399, double %249)
  %251 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %250, ptr %251, align 8
  ret void

252:                                              ; preds = %158
  %253 = fsub double %146, %157
  %254 = call double @sin(double noundef %157) #4
  %255 = call double @llvm.fmuladd.f64(double %144, double %254, double %253)
  %256 = call double @cos(double noundef %157) #4
  %257 = call double @llvm.fmuladd.f64(double %149, double %256, double 1.000000e+00)
  %258 = fdiv double %255, %257
  %259 = fadd double %157, %258
  br label %260

260:                                              ; preds = %252
  %261 = call double @llvm.fabs.f64(double %258)
  %262 = fcmp olt double %261, f0x3D719799812DEA11
  br i1 %262, label %161, label %263

263:                                              ; preds = %260
  %264 = fsub double %146, %259
  %265 = call double @sin(double noundef %259) #4
  %266 = call double @llvm.fmuladd.f64(double %144, double %265, double %264)
  %267 = call double @cos(double noundef %259) #4
  %268 = call double @llvm.fmuladd.f64(double %149, double %267, double 1.000000e+00)
  %269 = fdiv double %266, %268
  %270 = fadd double %259, %269
  br label %271

271:                                              ; preds = %263
  %272 = call double @llvm.fabs.f64(double %269)
  %273 = fcmp olt double %272, f0x3D719799812DEA11
  br i1 %273, label %161, label %274

274:                                              ; preds = %271
  %275 = fsub double %146, %270
  %276 = call double @sin(double noundef %270) #4
  %277 = call double @llvm.fmuladd.f64(double %144, double %276, double %275)
  %278 = call double @cos(double noundef %270) #4
  %279 = call double @llvm.fmuladd.f64(double %149, double %278, double 1.000000e+00)
  %280 = fdiv double %277, %279
  %281 = fadd double %270, %280
  br label %282

282:                                              ; preds = %274
  %283 = call double @llvm.fabs.f64(double %280)
  %284 = fcmp olt double %283, f0x3D719799812DEA11
  br i1 %284, label %161, label %285

285:                                              ; preds = %282
  %286 = fsub double %146, %281
  %287 = call double @sin(double noundef %281) #4
  %288 = call double @llvm.fmuladd.f64(double %144, double %287, double %286)
  %289 = call double @cos(double noundef %281) #4
  %290 = call double @llvm.fmuladd.f64(double %149, double %289, double 1.000000e+00)
  %291 = fdiv double %288, %290
  %292 = fadd double %281, %291
  br label %293

293:                                              ; preds = %285
  %294 = call double @llvm.fabs.f64(double %291)
  %295 = fcmp olt double %294, f0x3D719799812DEA11
  br i1 %295, label %161, label %296

296:                                              ; preds = %293
  %297 = fsub double %146, %292
  %298 = call double @sin(double noundef %292) #4
  %299 = call double @llvm.fmuladd.f64(double %144, double %298, double %297)
  %300 = call double @cos(double noundef %292) #4
  %301 = call double @llvm.fmuladd.f64(double %149, double %300, double 1.000000e+00)
  %302 = fdiv double %299, %301
  %303 = fadd double %292, %302
  br label %304

304:                                              ; preds = %296
  %305 = call double @llvm.fabs.f64(double %302)
  %306 = fcmp olt double %305, f0x3D719799812DEA11
  br i1 %306, label %161, label %307

307:                                              ; preds = %304
  %308 = fsub double %146, %303
  %309 = call double @sin(double noundef %303) #4
  %310 = call double @llvm.fmuladd.f64(double %144, double %309, double %308)
  %311 = call double @cos(double noundef %303) #4
  %312 = call double @llvm.fmuladd.f64(double %149, double %311, double 1.000000e+00)
  %313 = fdiv double %310, %312
  %314 = fadd double %303, %313
  br label %315

315:                                              ; preds = %307
  %316 = call double @llvm.fabs.f64(double %313)
  %317 = fcmp olt double %316, f0x3D719799812DEA11
  br i1 %317, label %161, label %318

318:                                              ; preds = %315
  %319 = fsub double %146, %314
  %320 = call double @sin(double noundef %314) #4
  %321 = call double @llvm.fmuladd.f64(double %144, double %320, double %319)
  %322 = call double @cos(double noundef %314) #4
  %323 = call double @llvm.fmuladd.f64(double %149, double %322, double 1.000000e+00)
  %324 = fdiv double %321, %323
  %325 = fadd double %314, %324
  br label %326

326:                                              ; preds = %318
  %327 = call double @llvm.fabs.f64(double %324)
  %328 = fcmp olt double %327, f0x3D719799812DEA11
  br i1 %328, label %161, label %329

329:                                              ; preds = %326
  %330 = fsub double %146, %325
  %331 = call double @sin(double noundef %325) #4
  %332 = call double @llvm.fmuladd.f64(double %144, double %331, double %330)
  %333 = call double @cos(double noundef %325) #4
  %334 = call double @llvm.fmuladd.f64(double %149, double %333, double 1.000000e+00)
  %335 = fdiv double %332, %334
  %336 = fadd double %325, %335
  br label %337

337:                                              ; preds = %329
  %338 = call double @llvm.fabs.f64(double %335)
  %339 = fcmp olt double %338, f0x3D719799812DEA11
  br i1 %339, label %161, label %340

340:                                              ; preds = %337
  %341 = fsub double %146, %336
  %342 = call double @sin(double noundef %336) #4
  %343 = call double @llvm.fmuladd.f64(double %144, double %342, double %341)
  %344 = call double @cos(double noundef %336) #4
  %345 = call double @llvm.fmuladd.f64(double %149, double %344, double 1.000000e+00)
  %346 = fdiv double %343, %345
  %347 = fadd double %336, %346
  br i1 true, label %161, label %348

348:                                              ; preds = %340
  %349 = call double @llvm.fabs.f64(double %346)
  %350 = fcmp olt double %349, f0x3D719799812DEA11
  br i1 %350, label %161, label %351

351:                                              ; preds = %348
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
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %11

9:                                                ; preds = %11
  %10 = phi i32 [ %15, %11 ]
  %exitcond.not = icmp eq i32 %10, %0
  br i1 %exitcond.not, label %.loopexit, label %11, !llvm.loop !9

11:                                               ; preds = %7, %9
  %12 = phi i32 [ 1, %7 ], [ %10, %9 ]
  %13 = load ptr, ptr %8, align 8
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %14, 0
  %15 = add nuw i32 %12, 1
  br i1 %.not, label %16, label %9

16:                                               ; preds = %11
  br label %17

.loopexit:                                        ; preds = %9
  br label %17

17:                                               ; preds = %.loopexit, %16
  br label %18

18:                                               ; preds = %17, %2
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %20

20:                                               ; preds = %18, %47
  %21 = phi i32 [ 0, %18 ], [ %48, %47 ]
  store double f0x4142B42C80000000, ptr %3, align 16
  store double 0.000000e+00, ptr %19, align 8
  br label %24

22:                                               ; preds = %42
  %23 = phi i32 [ %44, %42 ]
  %exitcond3.not = icmp eq i32 %23, 36525
  br i1 %exitcond3.not, label %47, label %24, !llvm.loop !10

24:                                               ; preds = %20, %22
  %25 = phi i32 [ 0, %20 ], [ %23, %22 ]
  %26 = load double, ptr %3, align 16
  %27 = fadd double %26, 1.000000e+00
  store double %27, ptr %3, align 16
  br label %28

28:                                               ; preds = %24
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
  %44 = add nuw nsw i32 %25, 1
  br i1 true, label %22, label %45

45:                                               ; preds = %42
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4)
  %46 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %46)
  unreachable

47:                                               ; preds = %22
  %48 = add nuw nsw i32 %21, 1
  %exitcond4.not = icmp eq i32 %48, 20
  br i1 %exitcond4.not, label %49, label %20, !llvm.loop !11

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load double, ptr %5, align 8
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %56 = load double, ptr %55, align 8
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %52, double noundef %54, double noundef %56) #4
  br label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %60 = load double, ptr %59, align 8
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %62 = load double, ptr %61, align 8
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %64 = load double, ptr %63, align 8
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %60, double noundef %62, double noundef %64) #4
  br label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %68 = load double, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %72 = load double, ptr %71, align 8
  %73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %68, double noundef %70, double noundef %72) #4
  br label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %76 = load double, ptr %75, align 8
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %78 = load double, ptr %77, align 8
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 16
  %80 = load double, ptr %79, align 8
  %81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %76, double noundef %78, double noundef %80) #4
  br label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %84 = load double, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %86 = load double, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %88 = load double, ptr %87, align 8
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %84, double noundef %86, double noundef %88) #4
  br label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %92 = load double, ptr %91, align 8
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %94 = load double, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %96 = load double, ptr %95, align 8
  %97 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %92, double noundef %94, double noundef %96) #4
  br label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %100 = load double, ptr %99, align 8
  %101 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %102 = load double, ptr %101, align 8
  %103 = getelementptr inbounds nuw i8, ptr %99, i64 16
  %104 = load double, ptr %103, align 8
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %100, double noundef %102, double noundef %104) #4
  br label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %108 = load double, ptr %107, align 8
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %110 = load double, ptr %109, align 8
  %111 = getelementptr inbounds nuw i8, ptr %107, i64 16
  %112 = load double, ptr %111, align 8
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %108, double noundef %110, double noundef %112) #4
  br i1 true, label %122, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  %116 = load double, ptr %115, align 8
  %117 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %118 = load double, ptr %117, align 8
  %119 = getelementptr inbounds nuw i8, ptr %115, i64 16
  %120 = load double, ptr %119, align 8
  %121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %116, double noundef %118, double noundef %120) #4
  unreachable

122:                                              ; preds = %106
  %123 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %124 = call i32 @fflush(ptr noundef %123) #4
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
