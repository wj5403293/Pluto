; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64 -mattr=+ls64 -verify-machineinstrs -o - %s | FileCheck %s
; RUN: llc -mtriple=aarch64_be -mattr=+ls64 -verify-machineinstrs -o - %s | FileCheck %s

define void @test_ld64b({ i64, i64, i64, i64, i64, i64, i64, i64 }* %out, i8* %addr) {
; CHECK-LABEL: test_ld64b:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    ld64b x2, [x1]
; CHECK-NEXT:    stp x8, x9, [x0, #48]
; CHECK-NEXT:    stp x6, x7, [x0, #32]
; CHECK-NEXT:    stp x4, x5, [x0, #16]
; CHECK-NEXT:    stp x2, x3, [x0]
; CHECK-NEXT:    ret
entry:
  %val = tail call { i64, i64, i64, i64, i64, i64, i64, i64 } @llvm.aarch64.ld64b(i8* %addr)
  store { i64, i64, i64, i64, i64, i64, i64, i64 } %val, { i64, i64, i64, i64, i64, i64, i64, i64 }* %out, align 8
  ret void
}

define void @test_st64b({ i64, i64, i64, i64, i64, i64, i64, i64 }* %in, i8* %addr) {
; CHECK-LABEL: test_st64b:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    ldp x8, x9, [x0, #48]
; CHECK-NEXT:    ldp x6, x7, [x0, #32]
; CHECK-NEXT:    ldp x4, x5, [x0, #16]
; CHECK-NEXT:    ldp x2, x3, [x0]
; CHECK-NEXT:    st64b x2, [x1]
; CHECK-NEXT:    ret
entry:
  %val = load { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %in, align 8
  %v0 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 0
  %v1 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 1
  %v2 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 2
  %v3 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 3
  %v4 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 4
  %v5 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 5
  %v6 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 6
  %v7 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 7
  tail call void @llvm.aarch64.st64b(i8* %addr, i64 %v0, i64 %v1, i64 %v2, i64 %v3, i64 %v4, i64 %v5, i64 %v6, i64 %v7)
  ret void
}

define i64 @test_st64bv({ i64, i64, i64, i64, i64, i64, i64, i64 }* %in, i8* %addr) {
; CHECK-LABEL: test_st64bv:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    ldp x8, x9, [x0, #48]
; CHECK-NEXT:    ldp x6, x7, [x0, #32]
; CHECK-NEXT:    ldp x4, x5, [x0, #16]
; CHECK-NEXT:    ldp x2, x3, [x0]
; CHECK-NEXT:    st64bv x0, x2, [x1]
; CHECK-NEXT:    ret
entry:
  %val = load { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %in, align 8
  %v0 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 0
  %v1 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 1
  %v2 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 2
  %v3 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 3
  %v4 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 4
  %v5 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 5
  %v6 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 6
  %v7 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 7
  %status = tail call i64 @llvm.aarch64.st64bv(i8* %addr, i64 %v0, i64 %v1, i64 %v2, i64 %v3, i64 %v4, i64 %v5, i64 %v6, i64 %v7)
  ret i64 %status
}

define i64 @test_st64bv0({ i64, i64, i64, i64, i64, i64, i64, i64 }* %in, i8* %addr) {
; CHECK-LABEL: test_st64bv0:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    ldp x8, x9, [x0, #48]
; CHECK-NEXT:    ldp x6, x7, [x0, #32]
; CHECK-NEXT:    ldp x4, x5, [x0, #16]
; CHECK-NEXT:    ldp x2, x3, [x0]
; CHECK-NEXT:    st64bv0 x0, x2, [x1]
; CHECK-NEXT:    ret
entry:
  %val = load { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %in, align 8
  %v0 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 0
  %v1 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 1
  %v2 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 2
  %v3 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 3
  %v4 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 4
  %v5 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 5
  %v6 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 6
  %v7 = extractvalue { i64, i64, i64, i64, i64, i64, i64, i64 } %val, 7
  %status = tail call i64 @llvm.aarch64.st64bv0(i8* %addr, i64 %v0, i64 %v1, i64 %v2, i64 %v3, i64 %v4, i64 %v5, i64 %v6, i64 %v7)
  ret i64 %status
}

declare { i64, i64, i64, i64, i64, i64, i64, i64 } @llvm.aarch64.ld64b(i8*)
declare void @llvm.aarch64.st64b(i8*, i64, i64, i64, i64, i64, i64, i64, i64)
declare i64 @llvm.aarch64.st64bv(i8*, i64, i64, i64, i64, i64, i64, i64, i64)
declare i64 @llvm.aarch64.st64bv0(i8*, i64, i64, i64, i64, i64, i64, i64, i64)