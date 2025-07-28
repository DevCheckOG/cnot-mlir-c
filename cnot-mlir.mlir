#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i128, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>} {
  llvm.mlir.global private unnamed_addr constant @".str"("|00>\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.1"("|01>\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.2"("|10>\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.3"("|11>\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @__const.print_state.basis() {addr_space = 0 : i32, alignment = 16 : i64, dso_local} : !llvm.array<4 x ptr> {
    %0 = llvm.mlir.constant("|11>\00") : !llvm.array<5 x i8>
    %1 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %2 = llvm.mlir.constant("|10>\00") : !llvm.array<5 x i8>
    %3 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %4 = llvm.mlir.constant("|01>\00") : !llvm.array<5 x i8>
    %5 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %6 = llvm.mlir.constant("|00>\00") : !llvm.array<5 x i8>
    %7 = llvm.mlir.addressof @".str" : !llvm.ptr
    %8 = llvm.mlir.undef : !llvm.array<4 x ptr>
    %9 = llvm.insertvalue %7, %8[0] : !llvm.array<4 x ptr> 
    %10 = llvm.insertvalue %5, %9[1] : !llvm.array<4 x ptr> 
    %11 = llvm.insertvalue %3, %10[2] : !llvm.array<4 x ptr> 
    %12 = llvm.insertvalue %1, %11[3] : !llvm.array<4 x ptr> 
    llvm.return %12 : !llvm.array<4 x ptr>
  }
  llvm.mlir.global private unnamed_addr constant @".str.4"("%s: %.3f + %.3fi (prob: %.3f)\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.5"("Normalized: %s\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.6"("Yes\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.7"("No\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.8"("Example 1: Generate entangled state (|00> + |11>)/sqrt(2)\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.9"("Final state:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.10"("Measurement (10 trials):\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.11"("Trial %d: q1=%d, q2=%d\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.12"("\0AExample 2: Circuit with X, H, CNOT, Z\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.func @complex_add(%arg0: f64, %arg1: f64, %arg2: f64, %arg3: f64) -> !llvm.struct<(f64, f64)> attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg0, %5 {alignment = 8 : i64} : f64, !llvm.ptr
    %6 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg1, %6 {alignment = 8 : i64} : f64, !llvm.ptr
    %7 = llvm.getelementptr inbounds %4[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg2, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    %8 = llvm.getelementptr inbounds %4[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg3, %8 {alignment = 8 : i64} : f64, !llvm.ptr
    %9 = llvm.getelementptr inbounds %2[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %10 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %11 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> f64
    %12 = llvm.getelementptr inbounds %4[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %13 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> f64
    %14 = llvm.fadd %11, %13  : f64
    llvm.store %14, %9 {alignment = 8 : i64} : f64, !llvm.ptr
    %15 = llvm.getelementptr inbounds %2[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %16 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %17 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> f64
    %18 = llvm.getelementptr inbounds %4[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %19 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> f64
    %20 = llvm.fadd %17, %19  : f64
    llvm.store %20, %15 {alignment = 8 : i64} : f64, !llvm.ptr
    %21 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.struct<(f64, f64)>
    llvm.return %21 : !llvm.struct<(f64, f64)>
  }
  llvm.func @complex_sub(%arg0: f64, %arg1: f64, %arg2: f64, %arg3: f64) -> !llvm.struct<(f64, f64)> attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg0, %5 {alignment = 8 : i64} : f64, !llvm.ptr
    %6 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg1, %6 {alignment = 8 : i64} : f64, !llvm.ptr
    %7 = llvm.getelementptr inbounds %4[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg2, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    %8 = llvm.getelementptr inbounds %4[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg3, %8 {alignment = 8 : i64} : f64, !llvm.ptr
    %9 = llvm.getelementptr inbounds %2[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %10 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %11 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> f64
    %12 = llvm.getelementptr inbounds %4[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %13 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> f64
    %14 = llvm.fsub %11, %13  : f64
    llvm.store %14, %9 {alignment = 8 : i64} : f64, !llvm.ptr
    %15 = llvm.getelementptr inbounds %2[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %16 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %17 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> f64
    %18 = llvm.getelementptr inbounds %4[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %19 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> f64
    %20 = llvm.fsub %17, %19  : f64
    llvm.store %20, %15 {alignment = 8 : i64} : f64, !llvm.ptr
    %21 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.struct<(f64, f64)>
    llvm.return %21 : !llvm.struct<(f64, f64)>
  }
  llvm.func @complex_mult(%arg0: f64, %arg1: f64, %arg2: f64, %arg3: f64) -> !llvm.struct<(f64, f64)> attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg0, %5 {alignment = 8 : i64} : f64, !llvm.ptr
    %6 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg1, %6 {alignment = 8 : i64} : f64, !llvm.ptr
    %7 = llvm.getelementptr inbounds %4[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg2, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    %8 = llvm.getelementptr inbounds %4[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg3, %8 {alignment = 8 : i64} : f64, !llvm.ptr
    %9 = llvm.getelementptr inbounds %2[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %10 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %11 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> f64
    %12 = llvm.getelementptr inbounds %4[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %13 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> f64
    %14 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %15 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> f64
    %16 = llvm.getelementptr inbounds %4[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %17 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> f64
    %18 = llvm.fmul %15, %17  : f64
    %19 = llvm.fneg %18  : f64
    %20 = llvm.intr.fmuladd(%11, %13, %19)  : (f64, f64, f64) -> f64
    llvm.store %20, %9 {alignment = 8 : i64} : f64, !llvm.ptr
    %21 = llvm.getelementptr inbounds %2[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %22 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %23 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> f64
    %24 = llvm.getelementptr inbounds %4[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %25 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> f64
    %26 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %27 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> f64
    %28 = llvm.getelementptr inbounds %4[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %29 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> f64
    %30 = llvm.fmul %27, %29  : f64
    %31 = llvm.intr.fmuladd(%23, %25, %30)  : (f64, f64, f64) -> f64
    llvm.store %31, %21 {alignment = 8 : i64} : f64, !llvm.ptr
    %32 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.struct<(f64, f64)>
    llvm.return %32 : !llvm.struct<(f64, f64)>
  }
  llvm.func @complex_scale(%arg0: f64, %arg1: f64, %arg2: f64 {llvm.noundef}) -> !llvm.struct<(f64, f64)> attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg0, %5 {alignment = 8 : i64} : f64, !llvm.ptr
    %6 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg1, %6 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg2, %4 {alignment = 8 : i64} : f64, !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %8 = llvm.getelementptr inbounds %3[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %9 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> f64
    %10 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> f64
    %11 = llvm.fmul %9, %10  : f64
    llvm.store %11, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    %12 = llvm.getelementptr inbounds %2[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %13 = llvm.getelementptr inbounds %3[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %14 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> f64
    %15 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> f64
    %16 = llvm.fmul %14, %15  : f64
    llvm.store %16, %12 {alignment = 8 : i64} : f64, !llvm.ptr
    %17 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.struct<(f64, f64)>
    llvm.return %17 : !llvm.struct<(f64, f64)>
  }
  llvm.func @complex_abs_squared(%arg0: f64, %arg1: f64) -> f64 attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg0, %3 {alignment = 8 : i64} : f64, !llvm.ptr
    %4 = llvm.getelementptr inbounds %2[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    llvm.store %arg1, %4 {alignment = 8 : i64} : f64, !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %6 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> f64
    %7 = llvm.getelementptr inbounds %2[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %8 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> f64
    %9 = llvm.getelementptr inbounds %2[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %10 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> f64
    %11 = llvm.getelementptr inbounds %2[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %12 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> f64
    %13 = llvm.fmul %10, %12  : f64
    %14 = llvm.intr.fmuladd(%6, %8, %13)  : (f64, f64, f64) -> f64
    llvm.return %14 : f64
  }
  llvm.func @init_state(%arg0: !llvm.ptr {llvm.align = 8 : i64}, %arg1: f64 {llvm.noundef}, %arg2: f64 {llvm.noundef}, %arg3: f64 {llvm.noundef}, %arg4: f64 {llvm.noundef}, %arg5: f64 {llvm.noundef}, %arg6: f64 {llvm.noundef}, %arg7: f64 {llvm.noundef}, %arg8: f64 {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(16 : i64) : i64
    %4 = llvm.mlir.constant(false) : i1
    %5 = llvm.mlir.constant(1 : i64) : i64
    %6 = llvm.mlir.constant(2 : i64) : i64
    %7 = llvm.mlir.constant(3 : i64) : i64
    %8 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg1, %8 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg2, %9 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg3, %10 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg4, %11 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg5, %12 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg6, %13 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg7, %14 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg8, %15 {alignment = 8 : i64} : f64, !llvm.ptr
    %20 = llvm.getelementptr inbounds %arg0[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %21 = llvm.getelementptr inbounds %20[%2, %2] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %22 = llvm.getelementptr inbounds %16[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %23 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %23, %22 {alignment = 8 : i64} : f64, !llvm.ptr
    %24 = llvm.getelementptr inbounds %16[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %25 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %25, %24 {alignment = 8 : i64} : f64, !llvm.ptr
    "llvm.intr.memcpy"(%21, %16, %3) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %26 = llvm.getelementptr inbounds %arg0[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %27 = llvm.getelementptr inbounds %26[%2, %5] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %28 = llvm.getelementptr inbounds %17[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %29 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %29, %28 {alignment = 8 : i64} : f64, !llvm.ptr
    %30 = llvm.getelementptr inbounds %17[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %31 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %31, %30 {alignment = 8 : i64} : f64, !llvm.ptr
    "llvm.intr.memcpy"(%27, %17, %3) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %32 = llvm.getelementptr inbounds %arg0[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %33 = llvm.getelementptr inbounds %32[%2, %6] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %34 = llvm.getelementptr inbounds %18[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %35 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %35, %34 {alignment = 8 : i64} : f64, !llvm.ptr
    %36 = llvm.getelementptr inbounds %18[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %37 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %37, %36 {alignment = 8 : i64} : f64, !llvm.ptr
    "llvm.intr.memcpy"(%33, %18, %3) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %38 = llvm.getelementptr inbounds %arg0[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %39 = llvm.getelementptr inbounds %38[%2, %7] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %40 = llvm.getelementptr inbounds %19[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %41 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %41, %40 {alignment = 8 : i64} : f64, !llvm.ptr
    %42 = llvm.getelementptr inbounds %19[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %43 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %43, %42 {alignment = 8 : i64} : f64, !llvm.ptr
    "llvm.intr.memcpy"(%39, %19, %3) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.return
  }
  llvm.func @is_normalized(%arg0: !llvm.ptr {llvm.align = 8 : i64, llvm.byval = !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>, llvm.noundef}) -> i32 attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(4 : i32) : i32
    %4 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(1.000000e-10 : f64) : f64
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %2, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.icmp "slt" %9, %3 : i32
    llvm.cond_br %10, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %11 = llvm.getelementptr inbounds %arg0[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %12 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %13 = llvm.sext %12 : i32 to i64
    %14 = llvm.getelementptr inbounds %11[%6, %13] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %15 = llvm.getelementptr inbounds %14[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %16 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> f64
    %17 = llvm.getelementptr inbounds %14[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %18 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> f64
    %19 = llvm.call @complex_abs_squared(%16, %18) : (f64, f64) -> f64
    %20 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> f64
    %21 = llvm.fadd %20, %19  : f64
    llvm.store %21, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %22 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.add %22, %0  : i32
    llvm.store %23, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    %24 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> f64
    %25 = llvm.fsub %24, %4  : f64
    %26 = llvm.intr.fabs(%25)  : (f64) -> f64
    %27 = llvm.fcmp "olt" %26, %5 : f64
    %28 = llvm.zext %27 : i1 to i32
    llvm.return %28 : i32
  }
  llvm.func @apply_matrix(%arg0: !llvm.ptr {llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(64 : i64) : i64
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(4 : i32) : i32
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.mlir.constant(16 : i64) : i64
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.struct<"struct.Complex", (f64, f64)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    "llvm.intr.memset"(%10, %1, %2) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    llvm.store %4, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb7
    %15 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %16 = llvm.icmp "slt" %15, %5 : i32
    llvm.cond_br %16, ^bb2, ^bb8
  ^bb2:  // pred: ^bb1
    llvm.store %4, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %17 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.icmp "slt" %17, %5 : i32
    llvm.cond_br %18, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %19 = llvm.getelementptr inbounds %10[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %20 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %21 = llvm.sext %20 : i32 to i64
    %22 = llvm.getelementptr inbounds %19[%6, %21] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %23 = llvm.getelementptr inbounds %10[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %24 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.sext %24 : i32 to i64
    %26 = llvm.getelementptr inbounds %23[%6, %25] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %27 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %28 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.sext %28 : i32 to i64
    %30 = llvm.getelementptr inbounds %27[%29] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %31 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %32 = llvm.sext %31 : i32 to i64
    %33 = llvm.getelementptr inbounds %30[%6, %32] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %34 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %35 = llvm.getelementptr inbounds %34[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %36 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.sext %36 : i32 to i64
    %38 = llvm.getelementptr inbounds %35[%6, %37] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %39 = llvm.getelementptr inbounds %33[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %40 = llvm.load %39 {alignment = 8 : i64} : !llvm.ptr -> f64
    %41 = llvm.getelementptr inbounds %33[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %42 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> f64
    %43 = llvm.getelementptr inbounds %38[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %44 = llvm.load %43 {alignment = 8 : i64} : !llvm.ptr -> f64
    %45 = llvm.getelementptr inbounds %38[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %46 = llvm.load %45 {alignment = 8 : i64} : !llvm.ptr -> f64
    %47 = llvm.call @complex_mult(%40, %42, %44, %46) : (f64, f64, f64, f64) -> !llvm.struct<(f64, f64)>
    %48 = llvm.getelementptr inbounds %14[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %49 = llvm.extractvalue %47[0] : !llvm.struct<(f64, f64)> 
    llvm.store %49, %48 {alignment = 8 : i64} : f64, !llvm.ptr
    %50 = llvm.getelementptr inbounds %14[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %51 = llvm.extractvalue %47[1] : !llvm.struct<(f64, f64)> 
    llvm.store %51, %50 {alignment = 8 : i64} : f64, !llvm.ptr
    %52 = llvm.getelementptr inbounds %26[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %53 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> f64
    %54 = llvm.getelementptr inbounds %26[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %55 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> f64
    %56 = llvm.getelementptr inbounds %14[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %57 = llvm.load %56 {alignment = 8 : i64} : !llvm.ptr -> f64
    %58 = llvm.getelementptr inbounds %14[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %59 = llvm.load %58 {alignment = 8 : i64} : !llvm.ptr -> f64
    %60 = llvm.call @complex_add(%53, %55, %57, %59) : (f64, f64, f64, f64) -> !llvm.struct<(f64, f64)>
    %61 = llvm.getelementptr inbounds %13[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %62 = llvm.extractvalue %60[0] : !llvm.struct<(f64, f64)> 
    llvm.store %62, %61 {alignment = 8 : i64} : f64, !llvm.ptr
    %63 = llvm.getelementptr inbounds %13[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %64 = llvm.extractvalue %60[1] : !llvm.struct<(f64, f64)> 
    llvm.store %64, %63 {alignment = 8 : i64} : f64, !llvm.ptr
    "llvm.intr.memcpy"(%22, %13, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %65 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.add %65, %0  : i32
    llvm.store %66, %12 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %67 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.add %67, %0  : i32
    llvm.store %68, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb1
    %69 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%69, %10, %2) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.return
  }
  llvm.func @apply_cnot(%arg0: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(256 : i64) : i64
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.mlir.constant(3 : i32) : i32
    %8 = llvm.mlir.constant(0 : i64) : i64
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    "llvm.intr.memset"(%10, %1, %2) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %11 = llvm.getelementptr inbounds %10[%4, %4] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %12 = llvm.getelementptr inbounds %11[%4, %4] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %13 = llvm.getelementptr inbounds %12[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %5, %13 {alignment = 16 : i64} : f64, !llvm.ptr
    %14 = llvm.getelementptr inbounds %10[%4, %0] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %15 = llvm.getelementptr inbounds %14[%4, %0] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %16 = llvm.getelementptr inbounds %15[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %5, %16 {alignment = 16 : i64} : f64, !llvm.ptr
    %17 = llvm.getelementptr inbounds %10[%4, %6] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %18 = llvm.getelementptr inbounds %17[%4, %7] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %19 = llvm.getelementptr inbounds %18[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %5, %19 {alignment = 16 : i64} : f64, !llvm.ptr
    %20 = llvm.getelementptr inbounds %10[%4, %7] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %21 = llvm.getelementptr inbounds %20[%4, %6] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %22 = llvm.getelementptr inbounds %21[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %5, %22 {alignment = 16 : i64} : f64, !llvm.ptr
    %23 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %24 = llvm.getelementptr inbounds %10[%8, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    llvm.call @apply_matrix(%23, %24) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @apply_hadamard_q1(%arg0: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(1 : i64) : i64
    %6 = llvm.mlir.constant(0 : i8) : i8
    %7 = llvm.mlir.constant(256 : i64) : i64
    %8 = llvm.mlir.constant(false) : i1
    %9 = llvm.mlir.constant(2 : i32) : i32
    %10 = llvm.mlir.constant(0 : i64) : i64
    %11 = llvm.mlir.constant(16 : i64) : i64
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %18 = llvm.call @sqrt(%1) : (f64) -> f64
    %19 = llvm.fdiv %2, %18  : f64
    llvm.store %19, %13 {alignment = 8 : i64} : f64, !llvm.ptr
    %20 = llvm.getelementptr inbounds %14[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %21 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %21, %20 {alignment = 16 : i64} : f64, !llvm.ptr
    %22 = llvm.getelementptr inbounds %14[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %4, %22 {alignment = 8 : i64} : f64, !llvm.ptr
    %23 = llvm.getelementptr inbounds %14[%5] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %24 = llvm.getelementptr inbounds %23[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %25 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %25, %24 {alignment = 16 : i64} : f64, !llvm.ptr
    %26 = llvm.getelementptr inbounds %23[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %4, %26 {alignment = 8 : i64} : f64, !llvm.ptr
    %27 = llvm.getelementptr inbounds %14[%5] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    %28 = llvm.getelementptr inbounds %27[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %29 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.store %29, %28 {alignment = 16 : i64} : f64, !llvm.ptr
    %30 = llvm.getelementptr inbounds %27[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %4, %30 {alignment = 8 : i64} : f64, !llvm.ptr
    %31 = llvm.getelementptr inbounds %27[%5] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %32 = llvm.getelementptr inbounds %31[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %33 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> f64
    %34 = llvm.fneg %33  : f64
    llvm.store %34, %32 {alignment = 16 : i64} : f64, !llvm.ptr
    %35 = llvm.getelementptr inbounds %31[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %4, %35 {alignment = 8 : i64} : f64, !llvm.ptr
    "llvm.intr.memset"(%15, %6, %7) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    llvm.store %3, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb7
    %36 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.icmp "slt" %36, %9 : i32
    llvm.cond_br %37, ^bb2, ^bb8
  ^bb2:  // pred: ^bb1
    llvm.store %3, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %38 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %39 = llvm.icmp "slt" %38, %9 : i32
    llvm.cond_br %39, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %40 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.sext %40 : i32 to i64
    %42 = llvm.getelementptr inbounds %15[%10, %41] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %43 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %44 = llvm.sext %43 : i32 to i64
    %45 = llvm.getelementptr inbounds %42[%10, %44] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %46 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %47 = llvm.sext %46 : i32 to i64
    %48 = llvm.getelementptr inbounds %14[%10, %47] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %49 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.sext %49 : i32 to i64
    %51 = llvm.getelementptr inbounds %48[%10, %50] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    "llvm.intr.memcpy"(%45, %51, %11) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %52 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.add %52, %9  : i32
    %54 = llvm.sext %53 : i32 to i64
    %55 = llvm.getelementptr inbounds %15[%10, %54] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %56 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %57 = llvm.add %56, %9  : i32
    %58 = llvm.sext %57 : i32 to i64
    %59 = llvm.getelementptr inbounds %55[%10, %58] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %60 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %61 = llvm.sext %60 : i32 to i64
    %62 = llvm.getelementptr inbounds %14[%10, %61] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %63 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %64 = llvm.sext %63 : i32 to i64
    %65 = llvm.getelementptr inbounds %62[%10, %64] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    "llvm.intr.memcpy"(%59, %65, %11) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %66 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %67 = llvm.add %66, %0  : i32
    llvm.store %67, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %68 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %69 = llvm.add %68, %0  : i32
    llvm.store %69, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb1
    %70 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %71 = llvm.getelementptr inbounds %15[%10, %10] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    llvm.call @apply_matrix(%70, %71) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @sqrt(f64 {llvm.noundef}) -> f64 attributes {passthrough = ["nounwind", ["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
  llvm.func @apply_x_q2(%arg0: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(64 : i64) : i64
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(256 : i64) : i64
    %7 = llvm.mlir.constant(2 : i32) : i32
    %8 = llvm.mlir.constant(0 : i64) : i64
    %9 = llvm.mlir.constant(16 : i64) : i64
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    "llvm.intr.memset"(%11, %1, %2) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %15 = llvm.getelementptr inbounds %11[%4, %4] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %16 = llvm.getelementptr inbounds %15[%4, %0] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    %17 = llvm.getelementptr inbounds %16[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %5, %17 {alignment = 16 : i64} : f64, !llvm.ptr
    %18 = llvm.getelementptr inbounds %11[%4, %0] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %19 = llvm.getelementptr inbounds %18[%4, %4] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    %20 = llvm.getelementptr inbounds %19[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %5, %20 {alignment = 16 : i64} : f64, !llvm.ptr
    "llvm.intr.memset"(%12, %1, %6) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    llvm.store %4, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb7
    %21 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %22 = llvm.icmp "slt" %21, %7 : i32
    llvm.cond_br %22, ^bb2, ^bb8
  ^bb2:  // pred: ^bb1
    llvm.store %4, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %23 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.icmp "slt" %23, %7 : i32
    llvm.cond_br %24, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %25 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %26 = llvm.sext %25 : i32 to i64
    %27 = llvm.getelementptr inbounds %12[%8, %26] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %28 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %30 = llvm.mul %7, %29  : i32
    %31 = llvm.add %28, %30  : i32
    %32 = llvm.sext %31 : i32 to i64
    %33 = llvm.getelementptr inbounds %27[%8, %32] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %34 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %35 = llvm.sext %34 : i32 to i64
    %36 = llvm.getelementptr inbounds %11[%8, %35] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %37 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.sext %37 : i32 to i64
    %39 = llvm.getelementptr inbounds %36[%8, %38] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    "llvm.intr.memcpy"(%33, %39, %9) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %40 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.add %40, %7  : i32
    %42 = llvm.sext %41 : i32 to i64
    %43 = llvm.getelementptr inbounds %12[%8, %42] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %44 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %45 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.add %45, %0  : i32
    %47 = llvm.mul %7, %46  : i32
    %48 = llvm.add %44, %47  : i32
    %49 = llvm.sext %48 : i32 to i64
    %50 = llvm.getelementptr inbounds %43[%8, %49] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %51 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %52 = llvm.sext %51 : i32 to i64
    %53 = llvm.getelementptr inbounds %11[%8, %52] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %54 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %55 = llvm.sext %54 : i32 to i64
    %56 = llvm.getelementptr inbounds %53[%8, %55] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    "llvm.intr.memcpy"(%50, %56, %9) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %57 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.add %57, %0  : i32
    llvm.store %58, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %59 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %60 = llvm.add %59, %0  : i32
    llvm.store %60, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb1
    %61 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %62 = llvm.getelementptr inbounds %12[%8, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    llvm.call @apply_matrix(%61, %62) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @apply_z_q1(%arg0: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(64 : i64) : i64
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(256 : i64) : i64
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(0 : i64) : i64
    %10 = llvm.mlir.constant(16 : i64) : i64
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    "llvm.intr.memset"(%12, %1, %2) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %16 = llvm.getelementptr inbounds %12[%4, %4] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %17 = llvm.getelementptr inbounds %16[%4, %4] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    %18 = llvm.getelementptr inbounds %17[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %5, %18 {alignment = 16 : i64} : f64, !llvm.ptr
    %19 = llvm.getelementptr inbounds %12[%4, %0] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %20 = llvm.getelementptr inbounds %19[%4, %0] : (!llvm.ptr, i32, i32) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    %21 = llvm.getelementptr inbounds %20[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    llvm.store %6, %21 {alignment = 16 : i64} : f64, !llvm.ptr
    "llvm.intr.memset"(%13, %1, %7) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    llvm.store %4, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb7
    %22 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.icmp "slt" %22, %8 : i32
    llvm.cond_br %23, ^bb2, ^bb8
  ^bb2:  // pred: ^bb1
    llvm.store %4, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %24 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.icmp "slt" %24, %8 : i32
    llvm.cond_br %25, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %26 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %27 = llvm.sext %26 : i32 to i64
    %28 = llvm.getelementptr inbounds %13[%9, %27] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %29 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %30 = llvm.sext %29 : i32 to i64
    %31 = llvm.getelementptr inbounds %28[%9, %30] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %32 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.sext %32 : i32 to i64
    %34 = llvm.getelementptr inbounds %12[%9, %33] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %35 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.sext %35 : i32 to i64
    %37 = llvm.getelementptr inbounds %34[%9, %36] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    "llvm.intr.memcpy"(%31, %37, %10) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %38 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %39 = llvm.add %38, %8  : i32
    %40 = llvm.sext %39 : i32 to i64
    %41 = llvm.getelementptr inbounds %13[%9, %40] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    %42 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %43 = llvm.add %42, %8  : i32
    %44 = llvm.sext %43 : i32 to i64
    %45 = llvm.getelementptr inbounds %41[%9, %44] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %46 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %47 = llvm.sext %46 : i32 to i64
    %48 = llvm.getelementptr inbounds %12[%9, %47] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x array<2 x struct<"struct.Complex", (f64, f64)>>>
    %49 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.sext %49 : i32 to i64
    %51 = llvm.getelementptr inbounds %48[%9, %50] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x struct<"struct.Complex", (f64, f64)>>
    "llvm.intr.memcpy"(%45, %51, %10) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %52 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.add %52, %0  : i32
    llvm.store %53, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %54 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %55 = llvm.add %54, %0  : i32
    llvm.store %55, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb1
    %56 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.getelementptr inbounds %13[%9, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x array<4 x struct<"struct.Complex", (f64, f64)>>>
    llvm.call @apply_matrix(%56, %57) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @measure_state(%arg0: !llvm.ptr {llvm.align = 8 : i64, llvm.byval = !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>, llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(4 : i32) : i32
    %3 = llvm.mlir.constant(0x41DFFFFFFFC00000 : f64) : f64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.array<4 x f64> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg1, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %1, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %14 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %15 = llvm.icmp "slt" %14, %2 : i32
    llvm.cond_br %15, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %16 = llvm.getelementptr inbounds %arg0[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %17 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.sext %17 : i32 to i64
    %19 = llvm.getelementptr inbounds %16[%5, %18] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %20 = llvm.getelementptr inbounds %19[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %21 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> f64
    %22 = llvm.getelementptr inbounds %19[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %23 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> f64
    %24 = llvm.call @complex_abs_squared(%21, %23) : (f64, f64) -> f64
    %25 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %26 = llvm.sext %25 : i32 to i64
    %27 = llvm.getelementptr inbounds %9[%5, %26] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x f64>
    llvm.store %24, %27 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %28 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.add %28, %0  : i32
    llvm.store %29, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    %30 = llvm.call @rand() : () -> i32
    %31 = llvm.sitofp %30 : i32 to f64
    %32 = llvm.fdiv %31, %3  : f64
    llvm.store %32, %11 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %4, %12 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %1, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb9
    %33 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.icmp "slt" %33, %2 : i32
    llvm.cond_br %34, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %35 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.sext %35 : i32 to i64
    %37 = llvm.getelementptr inbounds %9[%5, %36] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x f64>
    %38 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> f64
    %39 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> f64
    %40 = llvm.fadd %39, %38  : f64
    llvm.store %40, %12 {alignment = 8 : i64} : f64, !llvm.ptr
    %41 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> f64
    %42 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> f64
    %43 = llvm.fcmp "ole" %41, %42 : f64
    llvm.cond_br %43, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %44 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %45 = llvm.and %44, %6  : i32
    %46 = llvm.ashr %45, %0  : i32
    %47 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %46, %47 {alignment = 4 : i64} : i32, !llvm.ptr
    %48 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.and %48, %0  : i32
    %50 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %49, %50 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %51 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %52 = llvm.add %51, %0  : i32
    llvm.store %52, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb5
    %53 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %0, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    %54 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %0, %54 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // 2 preds: ^bb7, ^bb10
    llvm.return
  }
  llvm.func @rand() -> i32 attributes {passthrough = ["nounwind", ["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
  llvm.func @print_state(%arg0: !llvm.ptr {llvm.align = 8 : i64, llvm.byval = !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>, llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant("|11>\00") : !llvm.array<5 x i8>
    %2 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %3 = llvm.mlir.constant("|10>\00") : !llvm.array<5 x i8>
    %4 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %5 = llvm.mlir.constant("|01>\00") : !llvm.array<5 x i8>
    %6 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %7 = llvm.mlir.constant("|00>\00") : !llvm.array<5 x i8>
    %8 = llvm.mlir.addressof @".str" : !llvm.ptr
    %9 = llvm.mlir.undef : !llvm.array<4 x ptr>
    %10 = llvm.insertvalue %8, %9[0] : !llvm.array<4 x ptr> 
    %11 = llvm.insertvalue %6, %10[1] : !llvm.array<4 x ptr> 
    %12 = llvm.insertvalue %4, %11[2] : !llvm.array<4 x ptr> 
    %13 = llvm.insertvalue %2, %12[3] : !llvm.array<4 x ptr> 
    %14 = llvm.mlir.addressof @__const.print_state.basis : !llvm.ptr
    %15 = llvm.mlir.constant(32 : i64) : i64
    %16 = llvm.mlir.constant(false) : i1
    %17 = llvm.mlir.constant(0 : i32) : i32
    %18 = llvm.mlir.constant(4 : i32) : i32
    %19 = llvm.mlir.constant("Yes\00") : !llvm.array<4 x i8>
    %20 = llvm.mlir.addressof @".str.6" : !llvm.ptr
    %21 = llvm.mlir.constant("No\00") : !llvm.array<3 x i8>
    %22 = llvm.mlir.addressof @".str.7" : !llvm.ptr
    %23 = llvm.mlir.constant("Normalized: %s\0A\00") : !llvm.array<16 x i8>
    %24 = llvm.mlir.addressof @".str.5" : !llvm.ptr
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.mlir.constant("%s: %.3f + %.3fi (prob: %.3f)\0A\00") : !llvm.array<31 x i8>
    %27 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %28 = llvm.alloca %0 x !llvm.array<4 x ptr> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    "llvm.intr.memcpy"(%28, %14, %15) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %17, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %30 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.icmp "slt" %30, %18 : i32
    llvm.cond_br %31, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %32 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.sext %32 : i32 to i64
    %34 = llvm.getelementptr inbounds %28[%25, %33] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x ptr>
    %35 = llvm.load %34 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.getelementptr inbounds %arg0[%17, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %37 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.sext %37 : i32 to i64
    %39 = llvm.getelementptr inbounds %36[%25, %38] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %40 = llvm.getelementptr inbounds %39[%17, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %41 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> f64
    %42 = llvm.getelementptr inbounds %arg0[%17, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %43 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %44 = llvm.sext %43 : i32 to i64
    %45 = llvm.getelementptr inbounds %42[%25, %44] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %46 = llvm.getelementptr inbounds %45[%17, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.Complex", (f64, f64)>
    %47 = llvm.load %46 {alignment = 8 : i64} : !llvm.ptr -> f64
    %48 = llvm.getelementptr inbounds %arg0[%17, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)>
    %49 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.sext %49 : i32 to i64
    %51 = llvm.getelementptr inbounds %48[%25, %50] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<4 x struct<"struct.Complex", (f64, f64)>>
    %52 = llvm.getelementptr inbounds %51[%17, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %53 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> f64
    %54 = llvm.getelementptr inbounds %51[%17, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f64, f64)>
    %55 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> f64
    %56 = llvm.call @complex_abs_squared(%53, %55) : (f64, f64) -> f64
    %57 = llvm.call @printf(%27, %35, %41, %47, %56) : (!llvm.ptr, !llvm.ptr, f64, f64, f64) -> i32
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %58 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.add %58, %0  : i32
    llvm.store %59, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    %60 = llvm.call @is_normalized(%arg0) : (!llvm.ptr) -> i32
    %61 = llvm.icmp "ne" %60, %17 : i32
    %62 = llvm.zext %61 : i1 to i64
    %63 = llvm.select %61, %20, %22 : i1, !llvm.ptr
    %64 = llvm.call @printf(%24, %63) : (!llvm.ptr, !llvm.ptr) -> i32
    llvm.return
  }
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> i32 attributes {passthrough = [["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
  llvm.func @main() -> i32 attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.null : !llvm.ptr
    %3 = llvm.mlir.constant("Example 1: Generate entangled state (|00> + |11>)/sqrt(2)\0A\00") : !llvm.array<59 x i8>
    %4 = llvm.mlir.addressof @".str.8" : !llvm.ptr
    %5 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant("Final state:\0A\00") : !llvm.array<14 x i8>
    %8 = llvm.mlir.addressof @".str.9" : !llvm.ptr
    %9 = llvm.mlir.constant("Measurement (10 trials):\0A\00") : !llvm.array<26 x i8>
    %10 = llvm.mlir.addressof @".str.10" : !llvm.ptr
    %11 = llvm.mlir.constant(10 : i32) : i32
    %12 = llvm.mlir.constant("\0AExample 2: Circuit with X, H, CNOT, Z\0A\00") : !llvm.array<40 x i8>
    %13 = llvm.mlir.addressof @".str.12" : !llvm.ptr
    %14 = llvm.mlir.constant("Trial %d: q1=%d, q2=%d\0A\00") : !llvm.array<24 x i8>
    %15 = llvm.mlir.addressof @".str.11" : !llvm.ptr
    %16 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x !llvm.struct<"struct.TwoQubitState", (array<4 x struct<"struct.Complex", (f64, f64)>>)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    %23 = llvm.call @time(%2) : (!llvm.ptr) -> i64
    %24 = llvm.trunc %23 : i64 to i32
    llvm.call @srand(%24) : (i32) -> ()
    %25 = llvm.call @printf(%4) : (!llvm.ptr) -> i32
    llvm.call @init_state(%17, %5, %6, %6, %6, %6, %6, %6, %6) : (!llvm.ptr, f64, f64, f64, f64, f64, f64, f64, f64) -> ()
    llvm.call @apply_hadamard_q1(%17) : (!llvm.ptr) -> ()
    llvm.call @apply_cnot(%17) : (!llvm.ptr) -> ()
    %26 = llvm.call @printf(%8) : (!llvm.ptr) -> i32
    llvm.call @print_state(%17) : (!llvm.ptr) -> ()
    %27 = llvm.call @printf(%10) : (!llvm.ptr) -> i32
    llvm.store %1, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %28 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %29 = llvm.icmp "slt" %28, %11 : i32
    llvm.cond_br %29, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    llvm.call @measure_state(%17, %18, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %30 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.add %30, %0  : i32
    %32 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.call @printf(%15, %31, %32, %33) : (!llvm.ptr, i32, i32, i32) -> i32
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %35 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.add %35, %0  : i32
    llvm.store %36, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    %37 = llvm.call @printf(%13) : (!llvm.ptr) -> i32
    llvm.call @init_state(%21, %5, %6, %6, %6, %6, %6, %6, %6) : (!llvm.ptr, f64, f64, f64, f64, f64, f64, f64, f64) -> ()
    llvm.call @apply_x_q2(%21) : (!llvm.ptr) -> ()
    llvm.call @apply_hadamard_q1(%21) : (!llvm.ptr) -> ()
    llvm.call @apply_cnot(%21) : (!llvm.ptr) -> ()
    llvm.call @apply_z_q1(%21) : (!llvm.ptr) -> ()
    %38 = llvm.call @printf(%8) : (!llvm.ptr) -> i32
    llvm.call @print_state(%21) : (!llvm.ptr) -> ()
    %39 = llvm.call @printf(%10) : (!llvm.ptr) -> i32
    llvm.store %1, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb7
    %40 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.icmp "slt" %40, %11 : i32
    llvm.cond_br %41, ^bb6, ^bb8
  ^bb6:  // pred: ^bb5
    llvm.call @measure_state(%21, %18, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %42 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %43 = llvm.add %42, %0  : i32
    %44 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %45 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.call @printf(%15, %43, %44, %45) : (!llvm.ptr, i32, i32, i32) -> i32
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %47 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %48 = llvm.add %47, %0  : i32
    llvm.store %48, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb5
    llvm.return %1 : i32
  }
  llvm.func @srand(i32 {llvm.noundef}) attributes {passthrough = ["nounwind", ["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
  llvm.func @time(!llvm.ptr {llvm.noundef}) -> i64 attributes {passthrough = ["nounwind", ["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
}
