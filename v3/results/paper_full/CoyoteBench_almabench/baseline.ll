; ModuleID = 'results\paper_full\CoyoteBench_almabench\CoyoteBench_almabench.ll'
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
  %.0 = phi double [ %8, %5 ], [ %2, %1 ]
  ret double %.0
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

66:                                               ; preds = %3, %66
  %.019 = phi double [ %28, %3 ], [ %94, %66 ]
  %.028 = phi double [ %18, %3 ], [ %97, %66 ]
  %.037 = phi i32 [ 0, %3 ], [ %98, %66 ]
  %67 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %68 = zext nneg i32 %.037 to i64
  %69 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = fmul double %70, %65
  %72 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %73 = getelementptr inbounds nuw [8 x i8], ptr %72, i64 %68
  %74 = load double, ptr %73, align 8
  %75 = fmul double %74, %65
  %76 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %77 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %68
  %78 = load double, ptr %77, align 8
  %79 = call double @cos(double noundef %71) #4
  %80 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %81 = getelementptr inbounds nuw [8 x i8], ptr %80, i64 %68
  %82 = load double, ptr %81, align 8
  %83 = call double @sin(double noundef %71) #4
  %84 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %85 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 %68
  %86 = load double, ptr %85, align 8
  %87 = call double @cos(double noundef %75) #4
  %88 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %89 = getelementptr inbounds nuw [8 x i8], ptr %88, i64 %68
  %90 = load double, ptr %89, align 8
  %91 = call double @sin(double noundef %75) #4
  %92 = fmul double %90, %91
  %93 = call double @llvm.fmuladd.f64(double %86, double %87, double %92)
  %94 = call double @llvm.fmuladd.f64(double %93, double f0x3E7AD7F29ABCAF48, double %.019)
  %95 = fmul double %82, %83
  %96 = call double @llvm.fmuladd.f64(double %78, double %79, double %95)
  %97 = call double @llvm.fmuladd.f64(double %96, double f0x3E7AD7F29ABCAF48, double %.028)
  %98 = add nuw nsw i32 %.037, 1
  %99 = icmp samesign ult i32 %98, 8
  br i1 %99, label %66, label %100, !llvm.loop !7

100:                                              ; preds = %66
  %.02.lcssa = phi double [ %97, %66 ]
  %.01.lcssa = phi double [ %94, %66 ]
  %101 = getelementptr inbounds [72 x i8], ptr @kp, i64 %10
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 64
  %103 = load double, ptr %102, align 8
  %104 = fmul double %103, %65
  %105 = getelementptr inbounds [72 x i8], ptr @ca, i64 %10
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 64
  %107 = load double, ptr %106, align 8
  %108 = call double @cos(double noundef %104) #4
  %109 = getelementptr inbounds [72 x i8], ptr @sa, i64 %10
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %111 = load double, ptr %110, align 8
  %112 = call double @sin(double noundef %104) #4
  br label %113

113:                                              ; preds = %100, %113
  %.111 = phi double [ %.01.lcssa, %100 ], [ %130, %113 ]
  %.1410 = phi i32 [ 8, %100 ], [ %131, %113 ]
  %114 = getelementptr inbounds [80 x i8], ptr @kq, i64 %10
  %115 = zext nneg i32 %.1410 to i64
  %116 = getelementptr inbounds nuw [8 x i8], ptr %114, i64 %115
  %117 = load double, ptr %116, align 8
  %118 = fmul double %117, %65
  %119 = getelementptr inbounds [80 x i8], ptr @cl, i64 %10
  %120 = getelementptr inbounds nuw [8 x i8], ptr %119, i64 %115
  %121 = load double, ptr %120, align 8
  %122 = call double @cos(double noundef %118) #4
  %123 = getelementptr inbounds [80 x i8], ptr @sl, i64 %10
  %124 = getelementptr inbounds nuw [8 x i8], ptr %123, i64 %115
  %125 = load double, ptr %124, align 8
  %126 = call double @sin(double noundef %118) #4
  %127 = fmul double %125, %126
  %128 = call double @llvm.fmuladd.f64(double %121, double %122, double %127)
  %129 = fmul double %9, %128
  %130 = call double @llvm.fmuladd.f64(double %129, double f0x3E7AD7F29ABCAF48, double %.111)
  %131 = add nuw nsw i32 %.1410, 1
  %132 = icmp samesign ult i32 %131, 10
  br i1 %132, label %113, label %133, !llvm.loop !9

133:                                              ; preds = %113
  %.1.lcssa = phi double [ %130, %113 ]
  %134 = call double @fmod(double noundef %.1.lcssa, double noundef f0x401921FB54442D18) #4
  %135 = fsub double %134, %47
  %136 = call double @sin(double noundef %135) #4
  %137 = call double @llvm.fmuladd.f64(double %36, double %136, double %135)
  br label %138

138:                                              ; preds = %138, %133
  %.2 = phi i32 [ 0, %133 ], [ %147, %138 ]
  %.0 = phi double [ %137, %133 ], [ %146, %138 ]
  %139 = fsub double %135, %.0
  %140 = call double @sin(double noundef %.0) #4
  %141 = call double @llvm.fmuladd.f64(double %36, double %140, double %139)
  %142 = call double @cos(double noundef %.0) #4
  %143 = fneg double %36
  %144 = call double @llvm.fmuladd.f64(double %143, double %142, double 1.000000e+00)
  %145 = fdiv double %141, %144
  %146 = fadd double %.0, %145
  %147 = add nuw nsw i32 %.2, 1
  %148 = icmp samesign ugt i32 %.2, 8
  %149 = call double @llvm.fabs.f64(double %145)
  %150 = fcmp olt double %149, f0x3D719799812DEA11
  %or.cond = select i1 %148, i1 true, i1 %150
  br i1 %or.cond, label %151, label %138

151:                                              ; preds = %138
  %.lcssa6 = phi double [ %143, %138 ]
  %.lcssa = phi double [ %146, %138 ]
  %152 = fmul double %111, %112
  %153 = call double @llvm.fmuladd.f64(double %107, double %108, double %152)
  %154 = fmul double %9, %153
  %155 = call double @llvm.fmuladd.f64(double %154, double f0x3E7AD7F29ABCAF48, double %.02.lcssa)
  %156 = call double @llvm.fmuladd.f64(double %53, double %9, double %51)
  %157 = fmul double %156, %9
  %158 = call double @llvm.fmuladd.f64(double %49, double 3.600000e+03, double %157)
  %159 = fmul double %158, f0x3ED455A5B2FF8F9D
  %160 = fmul double %.lcssa, 5.000000e-01
  %161 = fadd double %36, 1.000000e+00
  %162 = fsub double 1.000000e+00, %36
  %163 = fdiv double %161, %162
  %164 = call double @sqrt(double noundef %163) #4
  %165 = call double @sin(double noundef %160) #4
  %166 = fmul double %164, %165
  %167 = call double @cos(double noundef %160) #4
  %168 = call double @atan2(double noundef %166, double noundef %167) #4
  %169 = fmul double %168, 2.000000e+00
  %170 = call double @cos(double noundef %.lcssa) #4
  %171 = call double @llvm.fmuladd.f64(double %.lcssa6, double %170, double 1.000000e+00)
  %172 = fmul double %155, %171
  %173 = getelementptr inbounds [8 x i8], ptr @amas, i64 %10
  %174 = load double, ptr %173, align 8
  %175 = fdiv double 1.000000e+00, %174
  %176 = fadd double %175, 1.000000e+00
  %177 = fmul double %155, %155
  %178 = fmul double %177, %155
  %179 = fdiv double %176, %178
  %180 = call double @sqrt(double noundef %179) #4
  %181 = fmul double %180, f0x3F919D6D51A6B69A
  %182 = fmul double %159, 5.000000e-01
  %183 = call double @sin(double noundef %182) #4
  %184 = call double @cos(double noundef %64) #4
  %185 = fmul double %183, %184
  %186 = call double @sin(double noundef %64) #4
  %187 = fmul double %183, %186
  %188 = fadd double %169, %47
  %189 = call double @sin(double noundef %188) #4
  %190 = call double @cos(double noundef %188) #4
  %191 = fneg double %189
  %192 = fmul double %185, %191
  %193 = call double @llvm.fmuladd.f64(double %187, double %190, double %192)
  %194 = fmul double %193, 2.000000e+00
  %195 = call double @llvm.fmuladd.f64(double %.lcssa6, double %36, double 1.000000e+00)
  %196 = call double @sqrt(double noundef %195) #4
  %197 = fdiv double %155, %196
  %198 = call double @cos(double noundef %182) #4
  %199 = call double @sin(double noundef %47) #4
  %200 = call double @llvm.fmuladd.f64(double %36, double %199, double %189)
  %201 = fmul double %200, %197
  %202 = call double @cos(double noundef %47) #4
  %203 = call double @llvm.fmuladd.f64(double %36, double %202, double %190)
  %204 = fmul double %203, %197
  %205 = fmul double %187, 2.000000e+00
  %206 = fmul double %205, %185
  %207 = fneg double %194
  %208 = call double @llvm.fmuladd.f64(double %207, double %187, double %190)
  %209 = fmul double %172, %208
  %210 = call double @llvm.fmuladd.f64(double %194, double %185, double %189)
  %211 = fmul double %172, %210
  %212 = fmul double %198, %207
  %213 = fmul double %172, %212
  store double %209, ptr %2, align 8
  %214 = fmul double %213, f0xBFD9752E50F4B399
  %215 = call double @llvm.fmuladd.f64(double %211, double f0x3FED5C0357681EF3, double %214)
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %215, ptr %216, align 8
  %217 = fmul double %213, f0x3FED5C0357681EF3
  %218 = call double @llvm.fmuladd.f64(double %211, double f0x3FD9752E50F4B399, double %217)
  %219 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %218, ptr %219, align 8
  %220 = call double @llvm.fmuladd.f64(double %205, double %187, double -1.000000e+00)
  %221 = fmul double %206, %204
  %222 = call double @llvm.fmuladd.f64(double %220, double %201, double %221)
  %223 = fmul double %181, %222
  %224 = fmul double %185, -2.000000e+00
  %225 = call double @llvm.fmuladd.f64(double %224, double %185, double 1.000000e+00)
  %226 = fneg double %201
  %227 = fmul double %206, %226
  %228 = call double @llvm.fmuladd.f64(double %225, double %204, double %227)
  %229 = fmul double %181, %228
  %230 = fmul double %198, 2.000000e+00
  %231 = fmul double %185, %204
  %232 = call double @llvm.fmuladd.f64(double %187, double %201, double %231)
  %233 = fmul double %230, %232
  %234 = fmul double %181, %233
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %223, ptr %235, align 8
  %236 = fmul double %234, f0xBFD9752E50F4B399
  %237 = call double @llvm.fmuladd.f64(double %229, double f0x3FED5C0357681EF3, double %236)
  %238 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %237, ptr %238, align 8
  %239 = fmul double %234, f0x3FED5C0357681EF3
  %240 = call double @llvm.fmuladd.f64(double %229, double f0x3FD9752E50F4B399, double %239)
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %240, ptr %241, align 8
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
  store double %16, ptr %1, align 8
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = fadd double %16, 2.400000e+01
  store double %19, ptr %1, align 8
  br label %20

20:                                               ; preds = %18, %2
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
  br i1 %6, label %.preheader4, label %14

.preheader4:                                      ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %10

8:                                                ; preds = %10
  %.02 = phi i32 [ %13, %10 ]
  %9 = icmp slt i32 %.02, %0
  br i1 %9, label %10, label %.loopexit, !llvm.loop !10

10:                                               ; preds = %.preheader4, %8
  %.025 = phi i32 [ 1, %.preheader4 ], [ %.02, %8 ]
  %11 = load ptr, ptr %7, align 8
  %12 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %12, 0
  %13 = add nuw nsw i32 %.025, 1
  br i1 %.not, label %.loopexit, label %8

.loopexit:                                        ; preds = %10, %8
  br label %14

14:                                               ; preds = %.loopexit, %2
  br label %15

.preheader:                                       ; preds = %28
  br label %31

15:                                               ; preds = %14, %28
  %.138 = phi i32 [ 0, %14 ], [ %29, %28 ]
  store double f0x4142B42C80000000, ptr %3, align 16
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %16, align 8
  br label %17

17:                                               ; preds = %15, %25
  %.017 = phi i32 [ 0, %15 ], [ %26, %25 ]
  %18 = load double, ptr %3, align 16
  %19 = fadd double %18, 1.000000e+00
  store double %19, ptr %3, align 16
  br label %20

20:                                               ; preds = %17, %20
  %.06 = phi i32 [ 0, %17 ], [ %23, %20 ]
  call void @planetpv(ptr noundef nonnull %3, i32 noundef %.06, ptr noundef nonnull %4)
  %21 = zext nneg i32 %.06 to i64
  %22 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %21
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %22)
  %23 = add nuw nsw i32 %.06, 1
  %24 = icmp samesign ult i32 %23, 8
  br i1 %24, label %20, label %25, !llvm.loop !11

25:                                               ; preds = %20
  %26 = add nuw nsw i32 %.017, 1
  %27 = icmp samesign ult i32 %26, 36525
  br i1 %27, label %17, label %28, !llvm.loop !12

28:                                               ; preds = %25
  %29 = add nuw nsw i32 %.138, 1
  %30 = icmp samesign ult i32 %29, 20
  br i1 %30, label %15, label %.preheader, !llvm.loop !13

31:                                               ; preds = %.preheader, %31
  %.19 = phi i32 [ 0, %.preheader ], [ %40, %31 ]
  %32 = zext nneg i32 %.19 to i64
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %38 = load double, ptr %37, align 8
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %34, double noundef %36, double noundef %38) #4
  %40 = add nuw nsw i32 %.19, 1
  %41 = icmp samesign ult i32 %40, 8
  br i1 %41, label %31, label %42, !llvm.loop !14

42:                                               ; preds = %31
  %43 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %44 = call i32 @fflush(ptr noundef %43) #4
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
