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
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds [24 x i8], ptr @a, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load double, ptr %15, align 8
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds [24 x i8], ptr @a, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %20 = load double, ptr %19, align 8
  %21 = call double @llvm.fmuladd.f64(double %20, double %9, double %16)
  %22 = call double @llvm.fmuladd.f64(double %21, double %9, double %12)
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = load double, ptr %28, align 8
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds [24 x i8], ptr @dlm, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %33 = load double, ptr %32, align 8
  %34 = call double @llvm.fmuladd.f64(double %33, double %9, double %29)
  %35 = fmul double %34, %9
  %36 = call double @llvm.fmuladd.f64(double %25, double 3.600000e+03, double %35)
  %37 = fmul double %36, f0x3ED455A5B2FF8F9D
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds [24 x i8], ptr @e, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds [24 x i8], ptr @e, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %44 = load double, ptr %43, align 8
  %45 = sext i32 %1 to i64
  %46 = getelementptr inbounds [24 x i8], ptr @e, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %48 = load double, ptr %47, align 8
  %49 = call double @llvm.fmuladd.f64(double %48, double %9, double %44)
  %50 = call double @llvm.fmuladd.f64(double %49, double %9, double %40)
  %51 = sext i32 %1 to i64
  %52 = getelementptr inbounds [24 x i8], ptr @pi, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = sext i32 %1 to i64
  %55 = getelementptr inbounds [24 x i8], ptr @pi, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %57 = load double, ptr %56, align 8
  %58 = sext i32 %1 to i64
  %59 = getelementptr inbounds [24 x i8], ptr @pi, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %61 = load double, ptr %60, align 8
  %62 = call double @llvm.fmuladd.f64(double %61, double %9, double %57)
  %63 = fmul double %62, %9
  %64 = call double @llvm.fmuladd.f64(double %53, double 3.600000e+03, double %63)
  %65 = fmul double %64, f0x3ED455A5B2FF8F9D
  %66 = call double @anpm(double noundef %65)
  %67 = sext i32 %1 to i64
  %68 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = sext i32 %1 to i64
  %71 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %73 = load double, ptr %72, align 8
  %74 = sext i32 %1 to i64
  %75 = getelementptr inbounds [24 x i8], ptr @dinc, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 16
  %77 = load double, ptr %76, align 8
  %78 = sext i32 %1 to i64
  %79 = getelementptr inbounds [24 x i8], ptr @omega, i64 %78
  %80 = load double, ptr %79, align 8
  %81 = sext i32 %1 to i64
  %82 = getelementptr inbounds [24 x i8], ptr @omega, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %84 = load double, ptr %83, align 8
  %85 = sext i32 %1 to i64
  %86 = getelementptr inbounds [24 x i8], ptr @omega, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %88 = load double, ptr %87, align 8
  %89 = call double @llvm.fmuladd.f64(double %88, double %9, double %84)
  %90 = fmul double %89, %9
  %91 = call double @llvm.fmuladd.f64(double %80, double 3.600000e+03, double %90)
  %92 = fmul double %91, f0x3ED455A5B2FF8F9D
  %93 = call double @anpm(double noundef %92)
  %94 = fmul double %9, f0x3FD702A41F2E9970
  br label %95

95:                                               ; preds = %134, %3
  %.0177 = phi double [ %37, %3 ], [ %137, %134 ]
  %.0176 = phi double [ %22, %3 ], [ %140, %134 ]
  %.0 = phi i32 [ 0, %3 ], [ %141, %134 ]
  %96 = icmp samesign ult i32 %.0, 8
  br i1 %96, label %97, label %142

97:                                               ; preds = %95
  %98 = sext i32 %1 to i64
  %99 = getelementptr inbounds [72 x i8], ptr @kp, i64 %98
  %100 = zext nneg i32 %.0 to i64
  %101 = getelementptr inbounds nuw [8 x i8], ptr %99, i64 %100
  %102 = load double, ptr %101, align 8
  %103 = fmul double %102, %94
  %104 = sext i32 %1 to i64
  %105 = getelementptr inbounds [80 x i8], ptr @kq, i64 %104
  %106 = zext nneg i32 %.0 to i64
  %107 = getelementptr inbounds nuw [8 x i8], ptr %105, i64 %106
  %108 = load double, ptr %107, align 8
  %109 = fmul double %108, %94
  %110 = sext i32 %1 to i64
  %111 = getelementptr inbounds [72 x i8], ptr @ca, i64 %110
  %112 = zext nneg i32 %.0 to i64
  %113 = getelementptr inbounds nuw [8 x i8], ptr %111, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = call double @cos(double noundef %103) #4
  %116 = sext i32 %1 to i64
  %117 = getelementptr inbounds [72 x i8], ptr @sa, i64 %116
  %118 = zext nneg i32 %.0 to i64
  %119 = getelementptr inbounds nuw [8 x i8], ptr %117, i64 %118
  %120 = load double, ptr %119, align 8
  %121 = call double @sin(double noundef %103) #4
  %122 = sext i32 %1 to i64
  %123 = getelementptr inbounds [80 x i8], ptr @cl, i64 %122
  %124 = zext nneg i32 %.0 to i64
  %125 = getelementptr inbounds nuw [8 x i8], ptr %123, i64 %124
  %126 = load double, ptr %125, align 8
  %127 = call double @cos(double noundef %109) #4
  %128 = sext i32 %1 to i64
  %129 = getelementptr inbounds [80 x i8], ptr @sl, i64 %128
  %130 = zext nneg i32 %.0 to i64
  %131 = getelementptr inbounds nuw [8 x i8], ptr %129, i64 %130
  %132 = load double, ptr %131, align 8
  %133 = call double @sin(double noundef %109) #4
  br label %134

134:                                              ; preds = %97
  %135 = fmul double %132, %133
  %136 = call double @llvm.fmuladd.f64(double %126, double %127, double %135)
  %137 = call double @llvm.fmuladd.f64(double %136, double f0x3E7AD7F29ABCAF48, double %.0177)
  %138 = fmul double %120, %121
  %139 = call double @llvm.fmuladd.f64(double %114, double %115, double %138)
  %140 = call double @llvm.fmuladd.f64(double %139, double f0x3E7AD7F29ABCAF48, double %.0176)
  %141 = add nuw nsw i32 %.0, 1
  br label %95, !llvm.loop !7

142:                                              ; preds = %95
  %143 = sext i32 %1 to i64
  %144 = getelementptr inbounds [72 x i8], ptr @kp, i64 %143
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 64
  %146 = load double, ptr %145, align 8
  %147 = fmul double %146, %94
  %148 = sext i32 %1 to i64
  %149 = getelementptr inbounds [72 x i8], ptr @ca, i64 %148
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 64
  %151 = load double, ptr %150, align 8
  %152 = call double @cos(double noundef %147) #4
  %153 = sext i32 %1 to i64
  %154 = getelementptr inbounds [72 x i8], ptr @sa, i64 %153
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 64
  %156 = load double, ptr %155, align 8
  %157 = call double @sin(double noundef %147) #4
  br label %158

158:                                              ; preds = %179, %142
  %.1178 = phi double [ %.0177, %142 ], [ %183, %179 ]
  %.1 = phi i32 [ 8, %142 ], [ %184, %179 ]
  %159 = icmp samesign ult i32 %.1, 10
  br i1 %159, label %160, label %185

160:                                              ; preds = %158
  %161 = sext i32 %1 to i64
  %162 = getelementptr inbounds [80 x i8], ptr @kq, i64 %161
  %163 = zext nneg i32 %.1 to i64
  %164 = getelementptr inbounds nuw [8 x i8], ptr %162, i64 %163
  %165 = load double, ptr %164, align 8
  %166 = fmul double %165, %94
  %167 = sext i32 %1 to i64
  %168 = getelementptr inbounds [80 x i8], ptr @cl, i64 %167
  %169 = zext nneg i32 %.1 to i64
  %170 = getelementptr inbounds nuw [8 x i8], ptr %168, i64 %169
  %171 = load double, ptr %170, align 8
  %172 = call double @cos(double noundef %166) #4
  %173 = sext i32 %1 to i64
  %174 = getelementptr inbounds [80 x i8], ptr @sl, i64 %173
  %175 = zext nneg i32 %.1 to i64
  %176 = getelementptr inbounds nuw [8 x i8], ptr %174, i64 %175
  %177 = load double, ptr %176, align 8
  %178 = call double @sin(double noundef %166) #4
  br label %179

179:                                              ; preds = %160
  %180 = fmul double %177, %178
  %181 = call double @llvm.fmuladd.f64(double %171, double %172, double %180)
  %182 = fmul double %9, %181
  %183 = call double @llvm.fmuladd.f64(double %182, double f0x3E7AD7F29ABCAF48, double %.1178)
  %184 = add nuw nsw i32 %.1, 1
  br label %158, !llvm.loop !9

185:                                              ; preds = %158
  %186 = call double @fmod(double noundef %.1178, double noundef f0x401921FB54442D18) #4
  %187 = fsub double %186, %66
  %188 = call double @sin(double noundef %187) #4
  %189 = call double @llvm.fmuladd.f64(double %50, double %188, double %187)
  br label %190

190:                                              ; preds = %205, %185
  %.0179 = phi double [ %189, %185 ], [ %198, %205 ]
  %.2 = phi i32 [ 0, %185 ], [ %199, %205 ]
  %191 = fsub double %187, %.0179
  %192 = call double @sin(double noundef %.0179) #4
  %193 = call double @llvm.fmuladd.f64(double %50, double %192, double %191)
  %194 = call double @cos(double noundef %.0179) #4
  %195 = fneg double %50
  %196 = call double @llvm.fmuladd.f64(double %195, double %194, double 1.000000e+00)
  %197 = fdiv double %193, %196
  %198 = fadd double %.0179, %197
  %199 = add nuw nsw i32 %.2, 1
  %200 = icmp samesign ugt i32 %.2, 8
  br i1 %200, label %204, label %201

201:                                              ; preds = %190
  %202 = call double @llvm.fabs.f64(double %197)
  %203 = fcmp olt double %202, f0x3D719799812DEA11
  br i1 %203, label %204, label %205

204:                                              ; preds = %201, %190
  br label %206

205:                                              ; preds = %201
  br label %190

206:                                              ; preds = %204
  %207 = fmul double %156, %157
  %208 = call double @llvm.fmuladd.f64(double %151, double %152, double %207)
  %209 = fmul double %9, %208
  %210 = call double @llvm.fmuladd.f64(double %209, double f0x3E7AD7F29ABCAF48, double %.0176)
  %211 = call double @llvm.fmuladd.f64(double %77, double %9, double %73)
  %212 = fmul double %211, %9
  %213 = call double @llvm.fmuladd.f64(double %69, double 3.600000e+03, double %212)
  %214 = fmul double %213, f0x3ED455A5B2FF8F9D
  %215 = fmul double %198, 5.000000e-01
  %216 = fadd double %50, 1.000000e+00
  %217 = fsub double 1.000000e+00, %50
  %218 = fdiv double %216, %217
  %219 = call double @sqrt(double noundef %218) #4
  %220 = call double @sin(double noundef %215) #4
  %221 = fmul double %219, %220
  %222 = call double @cos(double noundef %215) #4
  %223 = call double @atan2(double noundef %221, double noundef %222) #4
  %224 = fmul double %223, 2.000000e+00
  %225 = call double @cos(double noundef %198) #4
  %226 = fneg double %50
  %227 = call double @llvm.fmuladd.f64(double %226, double %225, double 1.000000e+00)
  %228 = fmul double %210, %227
  %229 = sext i32 %1 to i64
  %230 = getelementptr inbounds [8 x i8], ptr @amas, i64 %229
  %231 = load double, ptr %230, align 8
  %232 = fdiv double 1.000000e+00, %231
  %233 = fadd double %232, 1.000000e+00
  %234 = fmul double %210, %210
  %235 = fmul double %234, %210
  %236 = fdiv double %233, %235
  %237 = call double @sqrt(double noundef %236) #4
  %238 = fmul double %237, f0x3F919D6D51A6B69A
  %239 = fmul double %214, 5.000000e-01
  %240 = call double @sin(double noundef %239) #4
  %241 = call double @cos(double noundef %93) #4
  %242 = fmul double %240, %241
  %243 = call double @sin(double noundef %93) #4
  %244 = fmul double %240, %243
  %245 = fadd double %224, %66
  %246 = call double @sin(double noundef %245) #4
  %247 = call double @cos(double noundef %245) #4
  %248 = fneg double %246
  %249 = fmul double %242, %248
  %250 = call double @llvm.fmuladd.f64(double %244, double %247, double %249)
  %251 = fmul double %250, 2.000000e+00
  %252 = fneg double %50
  %253 = call double @llvm.fmuladd.f64(double %252, double %50, double 1.000000e+00)
  %254 = call double @sqrt(double noundef %253) #4
  %255 = fdiv double %210, %254
  %256 = fmul double %214, 5.000000e-01
  %257 = call double @cos(double noundef %256) #4
  %258 = call double @sin(double noundef %66) #4
  %259 = call double @llvm.fmuladd.f64(double %50, double %258, double %246)
  %260 = fmul double %259, %255
  %261 = call double @cos(double noundef %66) #4
  %262 = call double @llvm.fmuladd.f64(double %50, double %261, double %247)
  %263 = fmul double %262, %255
  %264 = fmul double %244, 2.000000e+00
  %265 = fmul double %264, %242
  %266 = fneg double %251
  %267 = call double @llvm.fmuladd.f64(double %266, double %244, double %247)
  %268 = fmul double %228, %267
  %269 = call double @llvm.fmuladd.f64(double %251, double %242, double %246)
  %270 = fmul double %228, %269
  %271 = fneg double %251
  %272 = fmul double %257, %271
  %273 = fmul double %228, %272
  store double %268, ptr %2, align 8
  %274 = fmul double %273, f0xBFD9752E50F4B399
  %275 = call double @llvm.fmuladd.f64(double %270, double f0x3FED5C0357681EF3, double %274)
  %276 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %275, ptr %276, align 8
  %277 = fmul double %273, f0x3FED5C0357681EF3
  %278 = call double @llvm.fmuladd.f64(double %270, double f0x3FD9752E50F4B399, double %277)
  %279 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %278, ptr %279, align 8
  %280 = fmul double %244, 2.000000e+00
  %281 = call double @llvm.fmuladd.f64(double %280, double %244, double -1.000000e+00)
  %282 = fmul double %265, %263
  %283 = call double @llvm.fmuladd.f64(double %281, double %260, double %282)
  %284 = fmul double %238, %283
  %285 = fmul double %242, -2.000000e+00
  %286 = call double @llvm.fmuladd.f64(double %285, double %242, double 1.000000e+00)
  %287 = fneg double %260
  %288 = fmul double %265, %287
  %289 = call double @llvm.fmuladd.f64(double %286, double %263, double %288)
  %290 = fmul double %238, %289
  %291 = fmul double %257, 2.000000e+00
  %292 = fmul double %242, %263
  %293 = call double @llvm.fmuladd.f64(double %244, double %260, double %292)
  %294 = fmul double %291, %293
  %295 = fmul double %238, %294
  %296 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %284, ptr %296, align 8
  %297 = fmul double %295, f0xBFD9752E50F4B399
  %298 = call double @llvm.fmuladd.f64(double %290, double f0x3FED5C0357681EF3, double %297)
  %299 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %298, ptr %299, align 8
  %300 = fmul double %295, f0x3FED5C0357681EF3
  %301 = call double @llvm.fmuladd.f64(double %290, double f0x3FD9752E50F4B399, double %300)
  %302 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %301, ptr %302, align 8
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
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load double, ptr %13, align 8
  %15 = load double, ptr %0, align 8
  %16 = call double @atan2(double noundef %14, double noundef %15) #4
  %17 = fmul double %16, f0x400E8EC8A4AEACC4
  store double %17, ptr %1, align 8
  %18 = fcmp olt double %17, 0.000000e+00
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load double, ptr %1, align 8
  %21 = fadd double %20, 2.400000e+01
  store double %21, ptr %1, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %26 = load double, ptr %25, align 8
  %27 = fdiv double %24, %26
  %28 = call double @asin(double noundef %27) #4
  %29 = fmul double %28, f0x404CA5DC1A63C1F8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %29, ptr %30, align 8
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
  %.018 = phi i32 [ 1, %7 ], [ %17, %16 ]
  %9 = icmp slt i32 %.018, %0
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %14, label %15

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.018, 1
  br label %8, !llvm.loop !10

18:                                               ; preds = %14, %8
  br label %19

19:                                               ; preds = %18, %2
  br label %20

20:                                               ; preds = %40, %19
  %.119 = phi i32 [ 0, %19 ], [ %41, %40 ]
  %21 = icmp samesign ult i32 %.119, 20
  br i1 %21, label %22, label %42

22:                                               ; preds = %20
  store double f0x4142B42C80000000, ptr %3, align 16
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %23, align 8
  br label %24

24:                                               ; preds = %37, %22
  %.017 = phi i32 [ 0, %22 ], [ %38, %37 ]
  %25 = icmp samesign ult i32 %.017, 36525
  br i1 %25, label %26, label %39

26:                                               ; preds = %24
  %27 = load double, ptr %3, align 16
  %28 = fadd double %27, 1.000000e+00
  store double %28, ptr %3, align 16
  br label %29

29:                                               ; preds = %34, %26
  %.0 = phi i32 [ 0, %26 ], [ %35, %34 ]
  %30 = icmp samesign ult i32 %.0, 8
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  call void @planetpv(ptr noundef nonnull %3, i32 noundef %.0, ptr noundef nonnull %4)
  %32 = zext nneg i32 %.0 to i64
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %32
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %33)
  br label %34

34:                                               ; preds = %31
  %35 = add nuw nsw i32 %.0, 1
  br label %29, !llvm.loop !11

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.017, 1
  br label %24, !llvm.loop !12

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.119, 1
  br label %20, !llvm.loop !13

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %58, %42
  %.1 = phi i32 [ 0, %42 ], [ %59, %58 ]
  %44 = icmp samesign ult i32 %.1, 8
  br i1 %44, label %45, label %60

45:                                               ; preds = %43
  %46 = zext nneg i32 %.1 to i64
  %47 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = zext nneg i32 %.1 to i64
  %50 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load double, ptr %51, align 8
  %53 = zext nneg i32 %.1 to i64
  %54 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 16
  %56 = load double, ptr %55, align 8
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %48, double noundef %52, double noundef %56) #4
  br label %58

58:                                               ; preds = %45
  %59 = add nuw nsw i32 %.1, 1
  br label %43, !llvm.loop !14

60:                                               ; preds = %43
  %61 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %62 = call i32 @fflush(ptr noundef %61) #4
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
