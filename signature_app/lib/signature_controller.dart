import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

class SignaturePadController extends GetxController {
  final SignatureController signatureController = SignatureController(
    penStrokeWidth: 5.0,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  void clearSignature() {
    signatureController.clear();
  }

  Future<Uint8List?> exportSignature() async {
    if (signatureController.isNotEmpty) {
      return await signatureController.toPngBytes();
    }
    return null;
  }
}
