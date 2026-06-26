; ModuleID = 'results\paper_full\CoyoteBench_almabench\round_004\output.ll'
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

107:                                              ; preds = %97, %107
  %108 = phi double [ %.lcssa3, %97 ], [ %121, %107 ]
  %indvars.iv55 = phi i64 [ 8, %97 ], [ %indvars.iv.next6, %107 ]
  %109 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %indvars.iv55
  %110 = load double, ptr %109, align 8
  %111 = fmul double %110, %63
  %112 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %indvars.iv55
  %113 = load double, ptr %112, align 8
  %114 = call double @cos(double noundef %111) #4
  %115 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %indvars.iv55
  %116 = load double, ptr %115, align 8
  %117 = call double @sin(double noundef %111) #4
  %118 = fmul double %116, %117
  %119 = call double @llvm.fmuladd.f64(double %113, double %114, double %118)
  %120 = fmul double %9, %119
  %121 = call double @llvm.fmuladd.f64(double %120, double f0x3E7AD7F29ABCAF48, double %108)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond8.not = icmp eq i64 %indvars.iv.next6, 10
  br i1 %exitcond8.not, label %122, label %107, !llvm.loop !9

122:                                              ; preds = %107
  %.lcssa1 = phi double [ %121, %107 ]
  %123 = call double @llvm.fmuladd.f64(double %34, double %9, double %32)
  %124 = call double @llvm.fmuladd.f64(double %123, double %9, double %30)
  %125 = call double @fmod(double noundef %.lcssa1, double noundef f0x401921FB54442D18) #4
  %126 = fsub double %125, %45
  %127 = call double @sin(double noundef %126) #4
  %128 = call double @llvm.fmuladd.f64(double %124, double %127, double %126)
  %129 = fneg double %124
  %130 = fsub double %126, %128
  %131 = call double @sin(double noundef %128) #4
  %132 = call double @llvm.fmuladd.f64(double %124, double %131, double %130)
  %133 = call double @cos(double noundef %128) #4
  %134 = call double @llvm.fmuladd.f64(double %129, double %133, double 1.000000e+00)
  %135 = fdiv double %132, %134
  %136 = fadd double %128, %135
  br label %148

137:                                              ; preds = %148
  %138 = phi i32 [ %149, %148 ]
  %139 = phi double [ %150, %148 ]
  %140 = fsub double %126, %139
  %141 = call double @sin(double noundef %139) #4
  %142 = call double @llvm.fmuladd.f64(double %124, double %141, double %140)
  %143 = call double @cos(double noundef %139) #4
  %144 = call double @llvm.fmuladd.f64(double %129, double %143, double 1.000000e+00)
  %145 = fdiv double %142, %144
  %146 = fadd double %139, %145
  %147 = add nuw nsw i32 %138, 1
  %exitcond9 = icmp eq i32 %138, 9
  br i1 %exitcond9, label %154, label %148

148:                                              ; preds = %122, %137
  %149 = phi i32 [ 1, %122 ], [ %147, %137 ]
  %150 = phi double [ %136, %122 ], [ %146, %137 ]
  %151 = phi double [ %135, %122 ], [ %145, %137 ]
  %152 = call double @llvm.fabs.f64(double %151)
  %153 = fcmp olt double %152, f0x3D719799812DEA11
  br i1 %153, label %154, label %137

154:                                              ; preds = %148, %137
  %.lcssa = phi double [ %150, %148 ], [ %146, %137 ]
  %155 = fmul double %105, %106
  %156 = call double @llvm.fmuladd.f64(double %102, double %103, double %155)
  %157 = fmul double %9, %156
  %158 = call double @llvm.fmuladd.f64(double %157, double f0x3E7AD7F29ABCAF48, double %.lcssa2)
  %159 = call double @llvm.fmuladd.f64(double %51, double %9, double %49)
  %160 = fmul double %159, %9
  %161 = call double @llvm.fmuladd.f64(double %47, double 3.600000e+03, double %160)
  %162 = fmul double %161, f0x3ED455A5B2FF8F9D
  %163 = fmul double %.lcssa, 5.000000e-01
  %164 = fadd double %124, 1.000000e+00
  %165 = fsub double 1.000000e+00, %124
  %166 = fdiv double %164, %165
  %167 = call double @sqrt(double noundef %166) #4
  %168 = call double @sin(double noundef %163) #4
  %169 = fmul double %167, %168
  %170 = call double @cos(double noundef %163) #4
  %171 = call double @atan2(double noundef %169, double noundef %170) #4
  %172 = fmul double %171, 2.000000e+00
  %173 = call double @cos(double noundef %.lcssa) #4
  %174 = call double @llvm.fmuladd.f64(double %129, double %173, double 1.000000e+00)
  %175 = fmul double %158, %174
  %176 = getelementptr inbounds [8 x i8], ptr @amas, i64 %10
  %177 = load double, ptr %176, align 8
  %178 = fdiv double 1.000000e+00, %177
  %179 = fadd double %178, 1.000000e+00
  %180 = fmul double %158, %158
  %181 = fmul double %180, %158
  %182 = fdiv double %179, %181
  %183 = call double @sqrt(double noundef %182) #4
  %184 = fmul double %183, f0x3F919D6D51A6B69A
  %185 = fmul double %162, 5.000000e-01
  %186 = call double @sin(double noundef %185) #4
  %187 = call double @cos(double noundef %62) #4
  %188 = fmul double %186, %187
  %189 = call double @sin(double noundef %62) #4
  %190 = fmul double %186, %189
  %191 = fadd double %172, %45
  %192 = call double @sin(double noundef %191) #4
  %193 = call double @cos(double noundef %191) #4
  %194 = fneg double %192
  %195 = fmul double %188, %194
  %196 = call double @llvm.fmuladd.f64(double %190, double %193, double %195)
  %197 = fmul double %196, 2.000000e+00
  %198 = call double @llvm.fmuladd.f64(double %129, double %124, double 1.000000e+00)
  %199 = call double @sqrt(double noundef %198) #4
  %200 = fdiv double %158, %199
  %201 = call double @cos(double noundef %185) #4
  %202 = call double @sin(double noundef %45) #4
  %203 = call double @llvm.fmuladd.f64(double %124, double %202, double %192)
  %204 = fmul double %203, %200
  %205 = call double @cos(double noundef %45) #4
  %206 = call double @llvm.fmuladd.f64(double %124, double %205, double %193)
  %207 = fmul double %206, %200
  %208 = fmul double %190, 2.000000e+00
  %209 = fmul double %208, %188
  %210 = fneg double %197
  %211 = call double @llvm.fmuladd.f64(double %210, double %190, double %193)
  %212 = fmul double %175, %211
  %213 = call double @llvm.fmuladd.f64(double %197, double %188, double %192)
  %214 = fmul double %175, %213
  %215 = fmul double %201, %210
  %216 = fmul double %175, %215
  store double %212, ptr %2, align 8
  %217 = fmul double %216, f0xBFD9752E50F4B399
  %218 = call double @llvm.fmuladd.f64(double %214, double f0x3FED5C0357681EF3, double %217)
  %219 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %218, ptr %219, align 8
  %220 = fmul double %216, f0x3FED5C0357681EF3
  %221 = call double @llvm.fmuladd.f64(double %214, double f0x3FD9752E50F4B399, double %220)
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %221, ptr %222, align 8
  %223 = call double @llvm.fmuladd.f64(double %208, double %190, double -1.000000e+00)
  %224 = fmul double %209, %207
  %225 = call double @llvm.fmuladd.f64(double %223, double %204, double %224)
  %226 = fmul double %184, %225
  %227 = fmul double %188, -2.000000e+00
  %228 = call double @llvm.fmuladd.f64(double %227, double %188, double 1.000000e+00)
  %229 = fneg double %204
  %230 = fmul double %209, %229
  %231 = call double @llvm.fmuladd.f64(double %228, double %207, double %230)
  %232 = fmul double %184, %231
  %233 = fmul double %201, 2.000000e+00
  %234 = fmul double %188, %207
  %235 = call double @llvm.fmuladd.f64(double %190, double %204, double %234)
  %236 = fmul double %233, %235
  %237 = fmul double %184, %236
  %238 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %226, ptr %238, align 8
  %239 = fmul double %237, f0xBFD9752E50F4B399
  %240 = call double @llvm.fmuladd.f64(double %232, double f0x3FED5C0357681EF3, double %239)
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %240, ptr %241, align 8
  %242 = fmul double %237, f0x3FED5C0357681EF3
  %243 = call double @llvm.fmuladd.f64(double %232, double f0x3FD9752E50F4B399, double %242)
  %244 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %243, ptr %244, align 8
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
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %11

9:                                                ; preds = %11
  %10 = phi i32 [ %15, %11 ]
  %exitcond.not = icmp eq i32 %10, %0
  br i1 %exitcond.not, label %.loopexit, label %11, !llvm.loop !10

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

20:                                               ; preds = %18, %31
  %21 = phi i32 [ 0, %18 ], [ %32, %31 ]
  store double f0x4142B42C80000000, ptr %3, align 16
  store double 0.000000e+00, ptr %19, align 8
  br label %22

22:                                               ; preds = %20, %29
  %23 = phi i32 [ 0, %20 ], [ %30, %29 ]
  %24 = load double, ptr %3, align 16
  %25 = fadd double %24, 1.000000e+00
  store double %25, ptr %3, align 16
  br label %26

26:                                               ; preds = %22, %26
  %indvars.iv1 = phi i64 [ 0, %22 ], [ %indvars.iv.next, %26 ]
  %27 = trunc nuw nsw i64 %indvars.iv1 to i32
  call void @planetpv(ptr noundef nonnull %3, i32 noundef %27, ptr noundef nonnull %4)
  %28 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %28)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1
  %exitcond2.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond2.not, label %29, label %26, !llvm.loop !11

29:                                               ; preds = %26
  %30 = add nuw nsw i32 %23, 1
  %exitcond3.not = icmp eq i32 %30, 36525
  br i1 %exitcond3.not, label %31, label %22, !llvm.loop !12

31:                                               ; preds = %29
  %32 = add nuw nsw i32 %21, 1
  %exitcond4.not = icmp eq i32 %32, 20
  br i1 %exitcond4.not, label %33, label %20, !llvm.loop !13

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %34
  %indvars.iv52 = phi i64 [ 0, %33 ], [ %indvars.iv.next6, %34 ]
  %35 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv52
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %40 = load double, ptr %39, align 8
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %36, double noundef %38, double noundef %40) #4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond8.not = icmp eq i64 %indvars.iv.next6, 8
  br i1 %exitcond8.not, label %42, label %34, !llvm.loop !14

42:                                               ; preds = %34
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
