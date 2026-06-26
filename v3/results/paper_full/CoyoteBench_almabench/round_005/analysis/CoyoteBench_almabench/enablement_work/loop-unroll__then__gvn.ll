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

70:                                               ; preds = %73, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %73 ], [ 0, %3 ]
  %71 = phi double [ %97, %73 ], [ %28, %3 ]
  %72 = phi double [ %88, %73 ], [ %18, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 8
  br i1 %exitcond.not, label %98, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds nuw [8 x i8], ptr %64, i64 %indvars.iv
  %75 = load double, ptr %74, align 8
  %76 = fmul double %75, %63
  %77 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %indvars.iv
  %78 = load double, ptr %77, align 8
  %79 = fmul double %78, %63
  %80 = getelementptr inbounds nuw [8 x i8], ptr %66, i64 %indvars.iv
  %81 = load double, ptr %80, align 8
  %82 = call double @cos(double noundef %76) #4
  %83 = getelementptr inbounds nuw [8 x i8], ptr %67, i64 %indvars.iv
  %84 = load double, ptr %83, align 8
  %85 = call double @sin(double noundef %76) #4
  %86 = fmul double %84, %85
  %87 = call double @llvm.fmuladd.f64(double %81, double %82, double %86)
  %88 = call double @llvm.fmuladd.f64(double %87, double f0x3E7AD7F29ABCAF48, double %72)
  %89 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 %indvars.iv
  %90 = load double, ptr %89, align 8
  %91 = call double @cos(double noundef %79) #4
  %92 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %indvars.iv
  %93 = load double, ptr %92, align 8
  %94 = call double @sin(double noundef %79) #4
  %95 = fmul double %93, %94
  %96 = call double @llvm.fmuladd.f64(double %90, double %91, double %95)
  %97 = call double @llvm.fmuladd.f64(double %96, double f0x3E7AD7F29ABCAF48, double %71)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %70, !llvm.loop !7

98:                                               ; preds = %70
  %99 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %100 = load double, ptr %99, align 8
  %101 = fmul double %100, %63
  %102 = getelementptr inbounds nuw i8, ptr %66, i64 64
  %103 = load double, ptr %102, align 8
  %104 = call double @cos(double noundef %101) #4
  %105 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %106 = load double, ptr %105, align 8
  %107 = call double @sin(double noundef %101) #4
  %108 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 8
  %109 = load double, ptr %108, align 8
  %110 = fmul double %109, %63
  %111 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 8
  %112 = load double, ptr %111, align 8
  %113 = call double @cos(double noundef %110) #4
  %114 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 8
  %115 = load double, ptr %114, align 8
  %116 = call double @sin(double noundef %110) #4
  %117 = fmul double %115, %116
  %118 = call double @llvm.fmuladd.f64(double %112, double %113, double %117)
  %119 = fmul double %9, %118
  %120 = call double @llvm.fmuladd.f64(double %119, double f0x3E7AD7F29ABCAF48, double %71)
  %121 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 9
  %122 = load double, ptr %121, align 8
  %123 = fmul double %122, %63
  %124 = getelementptr inbounds nuw [8 x i8], ptr %68, i64 9
  %125 = load double, ptr %124, align 8
  %126 = call double @cos(double noundef %123) #4
  %127 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 9
  %128 = load double, ptr %127, align 8
  %129 = call double @sin(double noundef %123) #4
  %130 = fmul double %128, %129
  %131 = call double @llvm.fmuladd.f64(double %125, double %126, double %130)
  %132 = fmul double %9, %131
  %133 = call double @llvm.fmuladd.f64(double %132, double f0x3E7AD7F29ABCAF48, double %120)
  br i1 true, label %140, label %134

134:                                              ; preds = %98
  %135 = getelementptr inbounds nuw [8 x i8], ptr %65, i64 10
  %136 = load double, ptr %135, align 8
  %137 = fmul double %136, %63
  %138 = call double @cos(double noundef %137) #4
  %139 = call double @sin(double noundef %137) #4
  unreachable

140:                                              ; preds = %98
  %141 = call double @llvm.fmuladd.f64(double %34, double %9, double %32)
  %142 = call double @llvm.fmuladd.f64(double %141, double %9, double %30)
  %143 = call double @fmod(double noundef %133, double noundef f0x401921FB54442D18) #4
  %144 = fsub double %143, %45
  %145 = call double @sin(double noundef %144) #4
  %146 = call double @llvm.fmuladd.f64(double %142, double %145, double %144)
  %147 = fneg double %142
  %148 = fsub double %144, %146
  %149 = call double @sin(double noundef %146) #4
  %150 = call double @llvm.fmuladd.f64(double %142, double %149, double %148)
  %151 = call double @cos(double noundef %146) #4
  %152 = call double @llvm.fmuladd.f64(double %147, double %151, double 1.000000e+00)
  %153 = fdiv double %150, %152
  %154 = fadd double %146, %153
  %155 = call double @llvm.fabs.f64(double %153)
  %156 = fcmp olt double %155, f0x3D719799812DEA11
  br i1 %156, label %157, label %248

157:                                              ; preds = %._crit_edge, %328, %318, %308, %298, %288, %278, %268, %258, %248, %140
  %.lcssa = phi double [ %154, %140 ], [ poison, %._crit_edge ], [ %335, %328 ], [ %255, %248 ], [ %325, %318 ], [ %265, %258 ], [ %295, %288 ], [ %275, %268 ], [ %315, %308 ], [ %285, %278 ], [ %305, %298 ]
  %158 = fmul double %106, %107
  %159 = call double @llvm.fmuladd.f64(double %103, double %104, double %158)
  %160 = fmul double %9, %159
  %161 = call double @llvm.fmuladd.f64(double %160, double f0x3E7AD7F29ABCAF48, double %72)
  %162 = call double @llvm.fmuladd.f64(double %51, double %9, double %49)
  %163 = fmul double %162, %9
  %164 = call double @llvm.fmuladd.f64(double %47, double 3.600000e+03, double %163)
  %165 = fmul double %164, f0x3ED455A5B2FF8F9D
  %166 = fmul double %.lcssa, 5.000000e-01
  %167 = fadd double %142, 1.000000e+00
  %168 = fsub double 1.000000e+00, %142
  %169 = fdiv double %167, %168
  %170 = call double @sqrt(double noundef %169) #4
  %171 = call double @sin(double noundef %166) #4
  %172 = fmul double %170, %171
  %173 = call double @cos(double noundef %166) #4
  %174 = call double @atan2(double noundef %172, double noundef %173) #4
  %175 = fmul double %174, 2.000000e+00
  %176 = call double @cos(double noundef %.lcssa) #4
  %177 = call double @llvm.fmuladd.f64(double %147, double %176, double 1.000000e+00)
  %178 = fmul double %161, %177
  %179 = getelementptr inbounds [8 x i8], ptr @amas, i64 %10
  %180 = load double, ptr %179, align 8
  %181 = fdiv double 1.000000e+00, %180
  %182 = fadd double %181, 1.000000e+00
  %183 = fmul double %161, %161
  %184 = fmul double %183, %161
  %185 = fdiv double %182, %184
  %186 = call double @sqrt(double noundef %185) #4
  %187 = fmul double %186, f0x3F919D6D51A6B69A
  %188 = fmul double %165, 5.000000e-01
  %189 = call double @sin(double noundef %188) #4
  %190 = call double @cos(double noundef %62) #4
  %191 = fmul double %189, %190
  %192 = call double @sin(double noundef %62) #4
  %193 = fmul double %189, %192
  %194 = fadd double %175, %45
  %195 = call double @sin(double noundef %194) #4
  %196 = call double @cos(double noundef %194) #4
  %197 = fneg double %195
  %198 = fmul double %191, %197
  %199 = call double @llvm.fmuladd.f64(double %193, double %196, double %198)
  %200 = fmul double %199, 2.000000e+00
  %201 = call double @llvm.fmuladd.f64(double %147, double %142, double 1.000000e+00)
  %202 = call double @sqrt(double noundef %201) #4
  %203 = fdiv double %161, %202
  %204 = call double @cos(double noundef %188) #4
  %205 = call double @sin(double noundef %45) #4
  %206 = call double @llvm.fmuladd.f64(double %142, double %205, double %195)
  %207 = fmul double %206, %203
  %208 = call double @cos(double noundef %45) #4
  %209 = call double @llvm.fmuladd.f64(double %142, double %208, double %196)
  %210 = fmul double %209, %203
  %211 = fmul double %193, 2.000000e+00
  %212 = fmul double %211, %191
  %213 = fneg double %200
  %214 = call double @llvm.fmuladd.f64(double %213, double %193, double %196)
  %215 = fmul double %178, %214
  %216 = call double @llvm.fmuladd.f64(double %200, double %191, double %195)
  %217 = fmul double %178, %216
  %218 = fmul double %204, %213
  %219 = fmul double %178, %218
  store double %215, ptr %2, align 8
  %220 = fmul double %219, f0xBFD9752E50F4B399
  %221 = call double @llvm.fmuladd.f64(double %217, double f0x3FED5C0357681EF3, double %220)
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %221, ptr %222, align 8
  %223 = fmul double %219, f0x3FED5C0357681EF3
  %224 = call double @llvm.fmuladd.f64(double %217, double f0x3FD9752E50F4B399, double %223)
  %225 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %224, ptr %225, align 8
  %226 = call double @llvm.fmuladd.f64(double %211, double %193, double -1.000000e+00)
  %227 = fmul double %212, %210
  %228 = call double @llvm.fmuladd.f64(double %226, double %207, double %227)
  %229 = fmul double %187, %228
  %230 = fmul double %191, -2.000000e+00
  %231 = call double @llvm.fmuladd.f64(double %230, double %191, double 1.000000e+00)
  %232 = fneg double %207
  %233 = fmul double %212, %232
  %234 = call double @llvm.fmuladd.f64(double %231, double %210, double %233)
  %235 = fmul double %187, %234
  %236 = fmul double %204, 2.000000e+00
  %237 = fmul double %191, %210
  %238 = call double @llvm.fmuladd.f64(double %193, double %207, double %237)
  %239 = fmul double %236, %238
  %240 = fmul double %187, %239
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %229, ptr %241, align 8
  %242 = fmul double %240, f0xBFD9752E50F4B399
  %243 = call double @llvm.fmuladd.f64(double %235, double f0x3FED5C0357681EF3, double %242)
  %244 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %243, ptr %244, align 8
  %245 = fmul double %240, f0x3FED5C0357681EF3
  %246 = call double @llvm.fmuladd.f64(double %235, double f0x3FD9752E50F4B399, double %245)
  %247 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %246, ptr %247, align 8
  ret void

248:                                              ; preds = %140
  %249 = fsub double %144, %154
  %250 = call double @sin(double noundef %154) #4
  %251 = call double @llvm.fmuladd.f64(double %142, double %250, double %249)
  %252 = call double @cos(double noundef %154) #4
  %253 = call double @llvm.fmuladd.f64(double %147, double %252, double 1.000000e+00)
  %254 = fdiv double %251, %253
  %255 = fadd double %154, %254
  %256 = call double @llvm.fabs.f64(double %254)
  %257 = fcmp olt double %256, f0x3D719799812DEA11
  br i1 %257, label %157, label %258

258:                                              ; preds = %248
  %259 = fsub double %144, %255
  %260 = call double @sin(double noundef %255) #4
  %261 = call double @llvm.fmuladd.f64(double %142, double %260, double %259)
  %262 = call double @cos(double noundef %255) #4
  %263 = call double @llvm.fmuladd.f64(double %147, double %262, double 1.000000e+00)
  %264 = fdiv double %261, %263
  %265 = fadd double %255, %264
  %266 = call double @llvm.fabs.f64(double %264)
  %267 = fcmp olt double %266, f0x3D719799812DEA11
  br i1 %267, label %157, label %268

268:                                              ; preds = %258
  %269 = fsub double %144, %265
  %270 = call double @sin(double noundef %265) #4
  %271 = call double @llvm.fmuladd.f64(double %142, double %270, double %269)
  %272 = call double @cos(double noundef %265) #4
  %273 = call double @llvm.fmuladd.f64(double %147, double %272, double 1.000000e+00)
  %274 = fdiv double %271, %273
  %275 = fadd double %265, %274
  %276 = call double @llvm.fabs.f64(double %274)
  %277 = fcmp olt double %276, f0x3D719799812DEA11
  br i1 %277, label %157, label %278

278:                                              ; preds = %268
  %279 = fsub double %144, %275
  %280 = call double @sin(double noundef %275) #4
  %281 = call double @llvm.fmuladd.f64(double %142, double %280, double %279)
  %282 = call double @cos(double noundef %275) #4
  %283 = call double @llvm.fmuladd.f64(double %147, double %282, double 1.000000e+00)
  %284 = fdiv double %281, %283
  %285 = fadd double %275, %284
  %286 = call double @llvm.fabs.f64(double %284)
  %287 = fcmp olt double %286, f0x3D719799812DEA11
  br i1 %287, label %157, label %288

288:                                              ; preds = %278
  %289 = fsub double %144, %285
  %290 = call double @sin(double noundef %285) #4
  %291 = call double @llvm.fmuladd.f64(double %142, double %290, double %289)
  %292 = call double @cos(double noundef %285) #4
  %293 = call double @llvm.fmuladd.f64(double %147, double %292, double 1.000000e+00)
  %294 = fdiv double %291, %293
  %295 = fadd double %285, %294
  %296 = call double @llvm.fabs.f64(double %294)
  %297 = fcmp olt double %296, f0x3D719799812DEA11
  br i1 %297, label %157, label %298

298:                                              ; preds = %288
  %299 = fsub double %144, %295
  %300 = call double @sin(double noundef %295) #4
  %301 = call double @llvm.fmuladd.f64(double %142, double %300, double %299)
  %302 = call double @cos(double noundef %295) #4
  %303 = call double @llvm.fmuladd.f64(double %147, double %302, double 1.000000e+00)
  %304 = fdiv double %301, %303
  %305 = fadd double %295, %304
  %306 = call double @llvm.fabs.f64(double %304)
  %307 = fcmp olt double %306, f0x3D719799812DEA11
  br i1 %307, label %157, label %308

308:                                              ; preds = %298
  %309 = fsub double %144, %305
  %310 = call double @sin(double noundef %305) #4
  %311 = call double @llvm.fmuladd.f64(double %142, double %310, double %309)
  %312 = call double @cos(double noundef %305) #4
  %313 = call double @llvm.fmuladd.f64(double %147, double %312, double 1.000000e+00)
  %314 = fdiv double %311, %313
  %315 = fadd double %305, %314
  %316 = call double @llvm.fabs.f64(double %314)
  %317 = fcmp olt double %316, f0x3D719799812DEA11
  br i1 %317, label %157, label %318

318:                                              ; preds = %308
  %319 = fsub double %144, %315
  %320 = call double @sin(double noundef %315) #4
  %321 = call double @llvm.fmuladd.f64(double %142, double %320, double %319)
  %322 = call double @cos(double noundef %315) #4
  %323 = call double @llvm.fmuladd.f64(double %147, double %322, double 1.000000e+00)
  %324 = fdiv double %321, %323
  %325 = fadd double %315, %324
  %326 = call double @llvm.fabs.f64(double %324)
  %327 = fcmp olt double %326, f0x3D719799812DEA11
  br i1 %327, label %157, label %328

328:                                              ; preds = %318
  %329 = fsub double %144, %325
  %330 = call double @sin(double noundef %325) #4
  %331 = call double @llvm.fmuladd.f64(double %142, double %330, double %329)
  %332 = call double @cos(double noundef %325) #4
  %333 = call double @llvm.fmuladd.f64(double %147, double %332, double 1.000000e+00)
  %334 = fdiv double %331, %333
  %335 = fadd double %325, %334
  br i1 true, label %157, label %336

336:                                              ; preds = %328
  %337 = call double @llvm.fabs.f64(double %334)
  %338 = fcmp olt double %337, f0x3D719799812DEA11
  br i1 %338, label %._crit_edge, label %339

._crit_edge:                                      ; preds = %336
  br label %157

339:                                              ; preds = %336
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
  br label %9

9:                                                ; preds = %15, %7
  %10 = phi i32 [ %16, %15 ], [ 1, %7 ]
  %exitcond.not = icmp eq i32 %10, %0
  br i1 %exitcond.not, label %.loopexit, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str) #4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %14, label %15

14:                                               ; preds = %11
  br label %17

15:                                               ; preds = %11
  %16 = add nuw i32 %10, 1
  br label %9, !llvm.loop !9

.loopexit:                                        ; preds = %9
  br label %17

17:                                               ; preds = %.loopexit, %14
  br label %18

18:                                               ; preds = %17, %2
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %20

20:                                               ; preds = %39, %18
  %21 = phi i32 [ %40, %39 ], [ 0, %18 ]
  %exitcond4.not = icmp eq i32 %21, 20
  br i1 %exitcond4.not, label %41, label %22

22:                                               ; preds = %20
  store double f0x4142B42C80000000, ptr %3, align 16
  store double 0.000000e+00, ptr %19, align 8
  br label %23

23:                                               ; preds = %37, %22
  %24 = phi i32 [ %38, %37 ], [ 0, %22 ]
  %exitcond3.not = icmp eq i32 %24, 36525
  br i1 %exitcond3.not, label %39, label %25

25:                                               ; preds = %23
  %26 = load double, ptr %3, align 16
  %27 = fadd double %26, 1.000000e+00
  store double %27, ptr %3, align 16
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %4)
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4)
  %28 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %28)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %4)
  %29 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %29)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull %4)
  %30 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %30)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4)
  %31 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %31)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 5, ptr noundef nonnull %4)
  %32 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %32)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull %4)
  %33 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %33)
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull %4)
  %34 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %34)
  br i1 true, label %37, label %35

35:                                               ; preds = %25
  call void @planetpv(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4)
  %36 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  call void @radecdist(ptr noundef nonnull %4, ptr noundef nonnull %36)
  unreachable

37:                                               ; preds = %25
  %38 = add nuw nsw i32 %24, 1
  br label %23, !llvm.loop !10

39:                                               ; preds = %23
  %40 = add nuw nsw i32 %21, 1
  br label %20, !llvm.loop !11

41:                                               ; preds = %20
  %42 = load double, ptr %5, align 8
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %46 = load double, ptr %45, align 8
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %42, double noundef %44, double noundef %46) #4
  %48 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 1
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %51 = load double, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %53 = load double, ptr %52, align 8
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %49, double noundef %51, double noundef %53) #4
  %55 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 2
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %58 = load double, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %60 = load double, ptr %59, align 8
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %56, double noundef %58, double noundef %60) #4
  %62 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 3
  %63 = load double, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %65 = load double, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %67 = load double, ptr %66, align 8
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %63, double noundef %65, double noundef %67) #4
  %69 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 4
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %72 = load double, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %74 = load double, ptr %73, align 8
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %70, double noundef %72, double noundef %74) #4
  %76 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 5
  %77 = load double, ptr %76, align 8
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %79 = load double, ptr %78, align 8
  %80 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %81 = load double, ptr %80, align 8
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %77, double noundef %79, double noundef %81) #4
  %83 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 6
  %84 = load double, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %86 = load double, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %88 = load double, ptr %87, align 8
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %84, double noundef %86, double noundef %88) #4
  %90 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 7
  %91 = load double, ptr %90, align 8
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %93 = load double, ptr %92, align 8
  %94 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %95 = load double, ptr %94, align 8
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %91, double noundef %93, double noundef %95) #4
  br i1 true, label %105, label %97

97:                                               ; preds = %41
  %98 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 8
  %99 = load double, ptr %98, align 8
  %100 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %101 = load double, ptr %100, align 8
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 16
  %103 = load double, ptr %102, align 8
  %104 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %99, double noundef %101, double noundef %103) #4
  unreachable

105:                                              ; preds = %41
  %106 = call ptr @__acrt_iob_func(i32 noundef 1) #4
  %107 = call i32 @fflush(ptr noundef %106) #4
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
