; ModuleID = 'cnot-c.c'
source_filename = "cnot-c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Complex = type { double, double }
%struct.TwoQubitState = type { [4 x %struct.Complex] }

@.str = private unnamed_addr constant [5 x i8] c"|00>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"|01>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"|10>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"|11>\00", align 1
@__const.print_state.basis = private unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: %.3f + %.3fi (prob: %.3f)\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Normalized: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Example 1: Generate entangled state (|00> + |11>)/sqrt(2)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Final state:\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Measurement (10 trials):\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Trial %d: q1=%d, q2=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\0AExample 2: Circuit with X, H, CNOT, Z\0A\00", align 1

define { double, double } @complex_add(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.Complex, align 8
  %6 = alloca %struct.Complex, align 8
  %7 = alloca %struct.Complex, align 8
  %8 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 0
  store double %0, ptr %8, align 8
  %9 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 1
  store double %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 0
  store double %2, ptr %10, align 8
  %11 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 1
  store double %3, ptr %11, align 8
  %12 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 0
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = fadd double %14, %16
  store double %17, ptr %12, align 8
  %18 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 1
  %19 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 1
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 1
  %22 = load double, ptr %21, align 8
  %23 = fadd double %20, %22
  store double %23, ptr %18, align 8
  %24 = load { double, double }, ptr %5, align 8
  ret { double, double } %24
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { double, double } @complex_sub(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.Complex, align 8
  %6 = alloca %struct.Complex, align 8
  %7 = alloca %struct.Complex, align 8
  %8 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 0
  store double %0, ptr %8, align 8
  %9 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 1
  store double %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 0
  store double %2, ptr %10, align 8
  %11 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 1
  store double %3, ptr %11, align 8
  %12 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 0
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = fsub double %14, %16
  store double %17, ptr %12, align 8
  %18 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 1
  %19 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 1
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 1
  %22 = load double, ptr %21, align 8
  %23 = fsub double %20, %22
  store double %23, ptr %18, align 8
  %24 = load { double, double }, ptr %5, align 8
  ret { double, double } %24
}

define dso_local { double, double } @complex_mult(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.Complex, align 8
  %6 = alloca %struct.Complex, align 8
  %7 = alloca %struct.Complex, align 8
  %8 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 0
  store double %0, ptr %8, align 8
  %9 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 1
  store double %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 0
  store double %2, ptr %10, align 8
  %11 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 1
  store double %3, ptr %11, align 8
  %12 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 0
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 1
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 1
  %20 = load double, ptr %19, align 8
  %21 = fmul double %18, %20
  %22 = fneg double %21
  %23 = call double @llvm.fmuladd.f64(double %14, double %16, double %22)
  store double %23, ptr %12, align 8
  %24 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 1
  %25 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 0
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 1
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds nuw %struct.Complex, ptr %6, i32 0, i32 1
  %30 = load double, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct.Complex, ptr %7, i32 0, i32 0
  %32 = load double, ptr %31, align 8
  %33 = fmul double %30, %32
  %34 = call double @llvm.fmuladd.f64(double %26, double %28, double %33)
  store double %34, ptr %24, align 8
  %35 = load { double, double }, ptr %5, align 8
  ret { double, double } %35
}

declare double @llvm.fmuladd.f64(double, double, double) #1

define { double, double } @complex_scale(double %0, double %1, double noundef %2) #0 {
  %4 = alloca %struct.Complex, align 8
  %5 = alloca %struct.Complex, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 0
  store double %0, ptr %7, align 8
  %8 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 1
  store double %1, ptr %8, align 8
  store double %2, ptr %6, align 8
  %9 = getelementptr inbounds nuw %struct.Complex, ptr %4, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 0
  %11 = load double, ptr %10, align 8
  %12 = load double, ptr %6, align 8
  %13 = fmul double %11, %12
  store double %13, ptr %9, align 8
  %14 = getelementptr inbounds nuw %struct.Complex, ptr %4, i32 0, i32 1
  %15 = getelementptr inbounds nuw %struct.Complex, ptr %5, i32 0, i32 1
  %16 = load double, ptr %15, align 8
  %17 = load double, ptr %6, align 8
  %18 = fmul double %16, %17
  store double %18, ptr %14, align 8
  %19 = load { double, double }, ptr %4, align 8
  ret { double, double } %19
}

define  double @complex_abs_squared(double %0, double %1) #0 {
  %3 = alloca %struct.Complex, align 8
  %4 = getelementptr inbounds nuw { double, double }, ptr %3, i32 0, i32 0
  store double %0, ptr %4, align 8
  %5 = getelementptr inbounds nuw { double, double }, ptr %3, i32 0, i32 1
  store double %1, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Complex, ptr %3, i32 0, i32 0
  %7 = load double, ptr %6, align 8
  %8 = getelementptr inbounds nuw %struct.Complex, ptr %3, i32 0, i32 0
  %9 = load double, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct.Complex, ptr %3, i32 0, i32 1
  %11 = load double, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.Complex, ptr %3, i32 0, i32 1
  %13 = load double, ptr %12, align 8
  %14 = fmul double %11, %13
  %15 = call double @llvm.fmuladd.f64(double %7, double %9, double %14)
  ret double %15
}

define void @init_state(ptr dead_on_unwind noalias writable sret(%struct.TwoQubitState) align 8 %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) #0 {
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.Complex, align 8
  %19 = alloca %struct.Complex, align 8
  %20 = alloca %struct.Complex, align 8
  %21 = alloca %struct.Complex, align 8
  store double %1, ptr %10, align 8
  store double %2, ptr %11, align 8
  store double %3, ptr %12, align 8
  store double %4, ptr %13, align 8
  store double %5, ptr %14, align 8
  store double %6, ptr %15, align 8
  store double %7, ptr %16, align 8
  store double %8, ptr %17, align 8
  %22 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %23 = getelementptr inbounds [4 x %struct.Complex], ptr %22, i64 0, i64 0
  %24 = getelementptr inbounds nuw %struct.Complex, ptr %18, i32 0, i32 0
  %25 = load double, ptr %10, align 8
  store double %25, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.Complex, ptr %18, i32 0, i32 1
  %27 = load double, ptr %11, align 8
  store double %27, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %18, i64 16, i1 false)
  %28 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %29 = getelementptr inbounds [4 x %struct.Complex], ptr %28, i64 0, i64 1
  %30 = getelementptr inbounds nuw %struct.Complex, ptr %19, i32 0, i32 0
  %31 = load double, ptr %12, align 8
  store double %31, ptr %30, align 8
  %32 = getelementptr inbounds nuw %struct.Complex, ptr %19, i32 0, i32 1
  %33 = load double, ptr %13, align 8
  store double %33, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %19, i64 16, i1 false)
  %34 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %35 = getelementptr inbounds [4 x %struct.Complex], ptr %34, i64 0, i64 2
  %36 = getelementptr inbounds nuw %struct.Complex, ptr %20, i32 0, i32 0
  %37 = load double, ptr %14, align 8
  store double %37, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct.Complex, ptr %20, i32 0, i32 1
  %39 = load double, ptr %15, align 8
  store double %39, ptr %38, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %20, i64 16, i1 false)
  %40 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %41 = getelementptr inbounds [4 x %struct.Complex], ptr %40, i64 0, i64 3
  %42 = getelementptr inbounds nuw %struct.Complex, ptr %21, i32 0, i32 0
  %43 = load double, ptr %16, align 8
  store double %43, ptr %42, align 8
  %44 = getelementptr inbounds nuw %struct.Complex, ptr %21, i32 0, i32 1
  %45 = load double, ptr %17, align 8
  store double %45, ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %41, ptr align 8 %21, i64 16, i1 false)
  ret void
}

declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define dso_local i32 @is_normalized(ptr noundef byval(%struct.TwoQubitState) align 8 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store double 0.000000e+00, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %9 = load i32, ptr %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x %struct.Complex], ptr %8, i64 0, i64 %10
  %12 = getelementptr inbounds nuw { double, double }, ptr %11, i32 0, i32 0
  %13 = load double, ptr %12, align 8
  %14 = getelementptr inbounds nuw { double, double }, ptr %11, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %16 = call double @complex_abs_squared(double %13, double %15)
  %17 = load double, ptr %2, align 8
  %18 = fadd double %17, %16
  store double %18, ptr %2, align 8
  br label %19

19:                                               ; preds = %7
  %20 = load i32, ptr %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %3, align 4
  br label %4, !llvm.loop !6

22:                                               ; preds = %4
  %23 = load double, ptr %2, align 8
  %24 = fsub double %23, 1.000000e+00
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp olt double %25, 1.000000e-10
  %27 = zext i1 %26 to i32
  ret i32 %27
}

define void @apply_matrix(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.TwoQubitState, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Complex, align 8
  %9 = alloca %struct.Complex, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 64, i1 false)
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %68, %2
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %71

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %64, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %5, i32 0, i32 0
  %19 = load i32, ptr %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x %struct.Complex], ptr %18, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %5, i32 0, i32 0
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x %struct.Complex], ptr %22, i64 0, i64 %24
  %26 = load ptr, ptr %4, align 8
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x %struct.Complex], ptr %26, i64 %28
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x %struct.Complex], ptr %29, i64 0, i64 %31
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x %struct.Complex], ptr %34, i64 0, i64 %36
  %38 = getelementptr inbounds nuw { double, double }, ptr %32, i32 0, i32 0
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds nuw { double, double }, ptr %32, i32 0, i32 1
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds nuw { double, double }, ptr %37, i32 0, i32 0
  %43 = load double, ptr %42, align 8
  %44 = getelementptr inbounds nuw { double, double }, ptr %37, i32 0, i32 1
  %45 = load double, ptr %44, align 8
  %46 = call { double, double } @complex_mult(double %39, double %41, double %43, double %45)
  %47 = getelementptr inbounds nuw { double, double }, ptr %9, i32 0, i32 0
  %48 = extractvalue { double, double } %46, 0
  store double %48, ptr %47, align 8
  %49 = getelementptr inbounds nuw { double, double }, ptr %9, i32 0, i32 1
  %50 = extractvalue { double, double } %46, 1
  store double %50, ptr %49, align 8
  %51 = getelementptr inbounds nuw { double, double }, ptr %25, i32 0, i32 0
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds nuw { double, double }, ptr %25, i32 0, i32 1
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds nuw { double, double }, ptr %9, i32 0, i32 0
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw { double, double }, ptr %9, i32 0, i32 1
  %58 = load double, ptr %57, align 8
  %59 = call { double, double } @complex_add(double %52, double %54, double %56, double %58)
  %60 = getelementptr inbounds nuw { double, double }, ptr %8, i32 0, i32 0
  %61 = extractvalue { double, double } %59, 0
  store double %61, ptr %60, align 8
  %62 = getelementptr inbounds nuw { double, double }, ptr %8, i32 0, i32 1
  %63 = extractvalue { double, double } %59, 1
  store double %63, ptr %62, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %8, i64 16, i1 false)
  br label %64

64:                                               ; preds = %17
  %65 = load i32, ptr %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %7, align 4
  br label %14, !llvm.loop !8

67:                                               ; preds = %14
  br label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %6, align 4
  br label %10, !llvm.loop !9

71:                                               ; preds = %10
  %72 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %72, ptr align 8 %5, i64 64, i1 false)
  ret void
}

declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

define void @apply_cnot(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [4 x [4 x %struct.Complex]], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 256, i1 false)
  %4 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds [4 x %struct.Complex], ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.Complex, ptr %5, i32 0, i32 0
  store double 1.000000e+00, ptr %6, align 16
  %7 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds [4 x %struct.Complex], ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Complex, ptr %8, i32 0, i32 0
  store double 1.000000e+00, ptr %9, align 16
  %10 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds [4 x %struct.Complex], ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.Complex, ptr %11, i32 0, i32 0
  store double 1.000000e+00, ptr %12, align 16
  %13 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds [4 x %struct.Complex], ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.Complex, ptr %14, i32 0, i32 0
  store double 1.000000e+00, ptr %15, align 16
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %3, i64 0, i64 0
  call void @apply_matrix(ptr noundef %16, ptr noundef %17)
  ret void
}

define void @apply_hadamard_q1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca [2 x [2 x %struct.Complex]], align 16
  %5 = alloca [4 x [4 x %struct.Complex]], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %8 = call double @sqrt(double noundef 2.000000e+00) #6
  %9 = fdiv double 1.000000e+00, %8
  store double %9, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.Complex, ptr %4, i32 0, i32 0
  %11 = load double, ptr %3, align 8
  store double %11, ptr %10, align 16
  %12 = getelementptr inbounds nuw %struct.Complex, ptr %4, i32 0, i32 1
  store double 0.000000e+00, ptr %12, align 8
  %13 = getelementptr inbounds %struct.Complex, ptr %4, i64 1
  %14 = getelementptr inbounds nuw %struct.Complex, ptr %13, i32 0, i32 0
  %15 = load double, ptr %3, align 8
  store double %15, ptr %14, align 16
  %16 = getelementptr inbounds nuw %struct.Complex, ptr %13, i32 0, i32 1
  store double 0.000000e+00, ptr %16, align 8
  %17 = getelementptr inbounds [2 x %struct.Complex], ptr %4, i64 1
  %18 = getelementptr inbounds nuw %struct.Complex, ptr %17, i32 0, i32 0
  %19 = load double, ptr %3, align 8
  store double %19, ptr %18, align 16
  %20 = getelementptr inbounds nuw %struct.Complex, ptr %17, i32 0, i32 1
  store double 0.000000e+00, ptr %20, align 8
  %21 = getelementptr inbounds %struct.Complex, ptr %17, i64 1
  %22 = getelementptr inbounds nuw %struct.Complex, ptr %21, i32 0, i32 0
  %23 = load double, ptr %3, align 8
  %24 = fneg double %23
  store double %24, ptr %22, align 16
  %25 = getelementptr inbounds nuw %struct.Complex, ptr %21, i32 0, i32 1
  store double 0.000000e+00, ptr %25, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 256, i1 false)
  store i32 0, ptr %6, align 4
  br label %26

26:                                               ; preds = %64, %1
  %27 = load i32, ptr %6, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  store i32 0, ptr %7, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, ptr %7, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %5, i64 0, i64 %35
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x %struct.Complex], ptr %36, i64 0, i64 %38
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %4, i64 0, i64 %41
  %43 = load i32, ptr %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x %struct.Complex], ptr %42, i64 0, i64 %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %39, ptr align 16 %45, i64 16, i1 false)
  %46 = load i32, ptr %6, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %5, i64 0, i64 %48
  %50 = load i32, ptr %7, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x %struct.Complex], ptr %49, i64 0, i64 %52
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %4, i64 0, i64 %55
  %57 = load i32, ptr %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.Complex], ptr %56, i64 0, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %53, ptr align 16 %59, i64 16, i1 false)
  br label %60

60:                                               ; preds = %33
  %61 = load i32, ptr %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %7, align 4
  br label %30, !llvm.loop !10

63:                                               ; preds = %30
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %6, align 4
  br label %26, !llvm.loop !11

67:                                               ; preds = %26
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %5, i64 0, i64 0
  call void @apply_matrix(ptr noundef %68, ptr noundef %69)
  ret void
}

define void @apply_x_q2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [2 x [2 x %struct.Complex]], align 16
  %4 = alloca [4 x [4 x %struct.Complex]], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 64, i1 false)
  %7 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.Complex], ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Complex, ptr %8, i32 0, i32 0
  store double 1.000000e+00, ptr %9, align 16
  %10 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds [2 x %struct.Complex], ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.Complex, ptr %11, i32 0, i32 0
  store double 1.000000e+00, ptr %12, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 256, i1 false)
  store i32 0, ptr %5, align 4
  br label %13

13:                                               ; preds = %57, %1
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i32, ptr %6, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = load i32, ptr %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %4, i64 0, i64 %22
  %24 = load i32, ptr %6, align 4
  %25 = load i32, ptr %5, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x %struct.Complex], ptr %23, i64 0, i64 %28
  %30 = load i32, ptr %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i64 0, i64 %31
  %33 = load i32, ptr %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x %struct.Complex], ptr %32, i64 0, i64 %34
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %29, ptr align 16 %35, i64 16, i1 false)
  %36 = load i32, ptr %5, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %4, i64 0, i64 %38
  %40 = load i32, ptr %6, align 4
  %41 = load i32, ptr %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x %struct.Complex], ptr %39, i64 0, i64 %45
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i64 0, i64 %48
  %50 = load i32, ptr %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x %struct.Complex], ptr %49, i64 0, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %46, ptr align 16 %52, i64 16, i1 false)
  br label %53

53:                                               ; preds = %20
  %54 = load i32, ptr %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %6, align 4
  br label %17, !llvm.loop !12

56:                                               ; preds = %17
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %5, align 4
  br label %13, !llvm.loop !13

60:                                               ; preds = %13
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %4, i64 0, i64 0
  call void @apply_matrix(ptr noundef %61, ptr noundef %62)
  ret void
}

define void @apply_z_q1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [2 x [2 x %struct.Complex]], align 16
  %4 = alloca [4 x [4 x %struct.Complex]], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 64, i1 false)
  %7 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.Complex], ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.Complex, ptr %8, i32 0, i32 0
  store double 1.000000e+00, ptr %9, align 16
  %10 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds [2 x %struct.Complex], ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Complex, ptr %11, i32 0, i32 0
  store double -1.000000e+00, ptr %12, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 256, i1 false)
  store i32 0, ptr %5, align 4
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, ptr %6, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load i32, ptr %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %4, i64 0, i64 %22
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x %struct.Complex], ptr %23, i64 0, i64 %25
  %27 = load i32, ptr %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i64 0, i64 %28
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x %struct.Complex], ptr %29, i64 0, i64 %31
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %26, ptr align 16 %32, i64 16, i1 false)
  %33 = load i32, ptr %5, align 4
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %4, i64 0, i64 %35
  %37 = load i32, ptr %6, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x %struct.Complex], ptr %36, i64 0, i64 %39
  %41 = load i32, ptr %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x [2 x %struct.Complex]], ptr %3, i64 0, i64 %42
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x %struct.Complex], ptr %43, i64 0, i64 %45
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %40, ptr align 16 %46, i64 16, i1 false)
  br label %47

47:                                               ; preds = %20
  %48 = load i32, ptr %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %6, align 4
  br label %17, !llvm.loop !14

50:                                               ; preds = %17
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %5, align 4
  br label %13, !llvm.loop !15

54:                                               ; preds = %13
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds [4 x [4 x %struct.Complex]], ptr %4, i64 0, i64 0
  call void @apply_matrix(ptr noundef %55, ptr noundef %56)
  ret void
}

define void @measure_state(ptr noundef byval(%struct.TwoQubitState) align 8 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [4 x double], align 16
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %27, %3
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x %struct.Complex], ptr %15, i64 0, i64 %17
  %19 = getelementptr inbounds nuw { double, double }, ptr %18, i32 0, i32 0
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw { double, double }, ptr %18, i32 0, i32 1
  %22 = load double, ptr %21, align 8
  %23 = call double @complex_abs_squared(double %20, double %22)
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 %25
  store double %23, ptr %26, align 8
  br label %27

27:                                               ; preds = %14
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %7, align 4
  br label %11, !llvm.loop !16

30:                                               ; preds = %11
  %31 = call i32 @rand() #6
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 0x41DFFFFFFFC00000
  store double %33, ptr %8, align 8
  store double 0.000000e+00, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %34

34:                                               ; preds = %56, %30
  %35 = load i32, ptr %10, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, ptr %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = load double, ptr %9, align 8
  %43 = fadd double %42, %41
  store double %43, ptr %9, align 8
  %44 = load double, ptr %8, align 8
  %45 = load double, ptr %9, align 8
  %46 = fcmp ole double %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32, ptr %10, align 4
  %49 = and i32 %48, 2
  %50 = ashr i32 %49, 1
  %51 = load ptr, ptr %4, align 8
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %10, align 4
  %53 = and i32 %52, 1
  %54 = load ptr, ptr %5, align 8
  store i32 %53, ptr %54, align 4
  br label %62

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %10, align 4
  br label %34, !llvm.loop !17

59:                                               ; preds = %34
  %60 = load ptr, ptr %4, align 8
  store i32 1, ptr %60, align 4
  %61 = load ptr, ptr %5, align 8
  store i32 1, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %47
  ret void
}

define void @print_state(ptr noundef byval(%struct.TwoQubitState) align 8 %0) #0 {
  %2 = alloca [4 x ptr], align 16
  %3 = alloca i32, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.print_state.basis, i64 32, i1 false)
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load i32, ptr %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x %struct.Complex], ptr %12, i64 0, i64 %14
  %16 = getelementptr inbounds nuw %struct.Complex, ptr %15, i32 0, i32 0
  %17 = load double, ptr %16, align 8
  %18 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %19 = load i32, ptr %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x %struct.Complex], ptr %18, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct.Complex, ptr %21, i32 0, i32 1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds nuw %struct.TwoQubitState, ptr %0, i32 0, i32 0
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x %struct.Complex], ptr %24, i64 0, i64 %26
  %28 = getelementptr inbounds nuw { double, double }, ptr %27, i32 0, i32 0
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds nuw { double, double }, ptr %27, i32 0, i32 1
  %31 = load double, ptr %30, align 8
  %32 = call double @complex_abs_squared(double %29, double %31)
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %11, double noundef %17, double noundef %23, double noundef %32)
  br label %34

34:                                               ; preds = %7
  %35 = load i32, ptr %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %3, align 4
  br label %4, !llvm.loop !18

37:                                               ; preds = %4
  %38 = call i32 @is_normalized(ptr noundef byval(%struct.TwoQubitState) align 8 %0)
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, ptr @.str.6, ptr @.str.7
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %41)
  ret void
}

define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TwoQubitState, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TwoQubitState, align 8
  %7 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %8 = call i64 @time(ptr noundef null) #6
  %9 = trunc i64 %8 to i32
  call void @srand(i32 noundef %9) #6
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  call void @init_state(ptr dead_on_unwind writable sret(%struct.TwoQubitState) align 8 %2, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  call void @apply_hadamard_q1(ptr noundef %2)
  call void @apply_cnot(ptr noundef %2)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  call void @print_state(ptr noundef byval(%struct.TwoQubitState) align 8 %2)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  store i32 0, ptr %5, align 4
  br label %13

13:                                               ; preds = %22, %0
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  call void @measure_state(ptr noundef byval(%struct.TwoQubitState) align 8 %2, ptr noundef %3, ptr noundef %4)
  %17 = load i32, ptr %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %4, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %18, i32 noundef %19, i32 noundef %20)
  br label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4
  br label %13, !llvm.loop !19

25:                                               ; preds = %13
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  call void @init_state(ptr dead_on_unwind writable sret(%struct.TwoQubitState) align 8 %6, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  call void @apply_x_q2(ptr noundef %6)
  call void @apply_hadamard_q1(ptr noundef %6)
  call void @apply_cnot(ptr noundef %6)
  call void @apply_z_q1(ptr noundef %6)
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  call void @print_state(ptr noundef byval(%struct.TwoQubitState) align 8 %6)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  store i32 0, ptr %7, align 4
  br label %29

29:                                               ; preds = %38, %25
  %30 = load i32, ptr %7, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  call void @measure_state(ptr noundef byval(%struct.TwoQubitState) align 8 %6, ptr noundef %3, ptr noundef %4)
  %33 = load i32, ptr %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, ptr %3, align 4
  %36 = load i32, ptr %4, align 4
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %34, i32 noundef %35, i32 noundef %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %7, align 4
  br label %29, !llvm.loop !20

41:                                               ; preds = %29
  ret i32 0
}

declare double @sqrt(double noundef) #4
declare double @llvm.fabs.f64(double) #1
declare i32 @rand() #4
declare i32 @printf(ptr noundef, ...) #5
declare void @srand(i32 noundef) #4
declare i64 @time(ptr noundef) #4

!llvm.module.flags = !{!0, !1, !2, !3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
